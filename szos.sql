-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Máj 30. 12:01
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsga`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szos`
--

CREATE TABLE `szos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `magyar` varchar(255) NOT NULL,
  `angol` varchar(255) NOT NULL,
  `temaId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `szos`
--

INSERT INTO `szos` (`id`, `magyar`, `angol`, `temaId`, `created_at`, `updated_at`) VALUES
(1, 'alma', 'apple', 1, '2025-05-30 04:47:27', '2025-05-30 04:47:27'),
(2, 'ananász', 'pineapple', 1, '2025-05-30 04:47:27', '2025-05-30 04:47:27'),
(3, 'uborka', 'cucumber', 2, '2025-05-30 04:47:27', '2025-05-30 04:47:27'),
(4, 'káposzta', 'cabbage', 2, '2025-05-30 04:47:27', '2025-05-30 04:47:27');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `szos`
--
ALTER TABLE `szos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `szos_temaid_foreign` (`temaId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `szos`
--
ALTER TABLE `szos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `szos`
--
ALTER TABLE `szos`
  ADD CONSTRAINT `szos_temaid_foreign` FOREIGN KEY (`temaId`) REFERENCES `temas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
