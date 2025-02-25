-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 25. Feb 2025 um 23:10
-- Server-Version: 8.0.41
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `kue_tierfutter`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produkt`
--

CREATE TABLE `produkt` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `preis` decimal(10,2) DEFAULT NULL,
  `tierart` int DEFAULT NULL,
  `produktkategorie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `produkt`
--

INSERT INTO `produkt` (`id`, `name`, `preis`, `tierart`, `produktkategorie`) VALUES
(1, 'Trockenfutter', 12.99, 1, 'Tierfutter'),
(2, 'Nassfutter', 9.99, 1, 'Tierfutter'),
(3, 'Kittenfutter', 14.99, 1, 'Tierfutter'),
(4, 'Adult-Katzenfutter', 10.49, 1, 'Tierfutter'),
(5, 'Katzenminze-Spielzeug', 4.99, 1, 'Tierspielzeug'),
(6, 'Plüschmaus', 6.99, 1, 'Tierspielzeug'),
(7, 'Laserpointer', 8.99, 1, 'Tierspielzeug'),
(8, 'Kratzbaum-Spielzeug', 15.99, 1, 'Tierspielzeug'),
(9, 'Senior-Katzenfutter', 11.99, 1, 'Tierfutter'),
(10, 'Katzensnacks', 3.99, 1, 'Tierfutter'),
(11, 'Trockenfutter', 18.99, 2, 'Tierfutter'),
(12, 'Nassfutter', 13.49, 2, 'Tierfutter'),
(13, 'Junior-Hundefutter', 22.99, 2, 'Tierfutter'),
(14, 'Adult-Hundefutter', 5.99, 2, 'Tierfutter'),
(15, 'Hundespielzeug-Knochen', 12.99, 2, 'Tierspielzeug'),
(16, 'Seilspielzeug', 7.49, 2, 'Tierspielzeug'),
(17, 'Quietschball', 5.99, 2, 'Tierspielzeug'),
(18, 'Gummiring', 9.99, 2, 'Tierspielzeug'),
(19, 'Leckmatte', 8.49, 2, 'Tierspielzeug'),
(20, 'Hundesnacks', 14.49, 2, 'Tierfutter');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `produkt`
--
ALTER TABLE `produkt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `produkt`
--
ALTER TABLE `produkt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
