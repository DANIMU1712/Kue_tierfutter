<?php
header("Content-Type: application/json");

// Verbindung zur Datenbank
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "kue_tierfutter"; 

$conn = new mysqli($servername, $username, $password, $database);

// Prüfen, ob die Verbindung funktioniert
if ($conn->connect_error) {
    die(json_encode(["error" => "Verbindung fehlgeschlagen: " . $conn->connect_error]));
}

// Suchbegriff und Kategorie abrufen
$query = isset($_GET['query']) ? $_GET['query'] : '';
$category = isset($_GET['category']) ? $_GET['category'] : '';

// Sortierung abrufen im Standard aufsteigendes (ASC)
$sortOrder = isset($_GET['sort']) && $_GET['sort'] === 'desc' ? 'DESC' : 'ASC';

// SQL-Abfrage vorbereiten
$sqlSearch = "SELECT * FROM Produkt WHERE name LIKE ?";

// Falls eine Kategorie gewählt wurde, wird sie zur Abfrage hinzugefügt
if (!empty($category) && $category !== "alle") {
    $sqlSearch .= " AND produktkategorie = ?";
}

// Sortierung nach Preis hinzufügen
$sqlSearch .= " ORDER BY preis $sortOrder";

// SQL-Statement vorbereiten
$stmt = $conn->prepare($sqlSearch);

if (!$stmt) {
    die(json_encode(["error" => "Fehler bei der SQL-Vorbereitung: " . $conn->error]));
}

// Binden (Suche und Kategorie falls vorhanden)
$likeQuery = "%$query%";
if (!empty($category) && $category !== "alle") {
    $stmt->bind_param("ss", $likeQuery, $category); // Ein Suchbegriff und eine Kategorie
} else {
    $stmt->bind_param("s", $likeQuery); // Nur der Suchbegriff
}

// SQL-Statement ausführen
if (!$stmt->execute()) {
    die(json_encode(["error" => "Fehler beim Ausführen der SQL-Abfrage: " . $stmt->error]));
}

// Ergebnis holen
$result = $stmt->get_result();
$products = [];

// Durch die Ergebnisse iterieren und sie in ein Array speichern
while ($row = $result->fetch_assoc()) {
    $products[] = $row; // Das Ergebnis in das Array einfügen
}

// JSON-Antwort zurückgeben
echo json_encode($products);


?>
