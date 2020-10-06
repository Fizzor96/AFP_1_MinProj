-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Okt 06. 13:15
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `y8ep7v`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `felhasznalonev` varchar(65) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(65) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(65) COLLATE utf8_hungarian_ci NOT NULL,
  `jog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `felhasznalonev`, `jelszo`, `email`, `jog`) VALUES
(1, 'zsotyo', '356a192b7913b04c54574d18c28d46e6395428ab', 'zsoltiberkes2@gmail.com', 0),
(2, 'zsotyo1', 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'zsoltiberkes3@gmail.com', 0),
(3, 'zsotyo2', '77de68daecd823babbb58edb1c8e14d7106e83bb', 'zsoltiberkes4@gmail.com', 0),
(4, 'zsolti', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'zsolti@gmail.com', 1),
(5, 'asd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'asd@asd.com', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyvek`
--

CREATE TABLE `konyvek` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `mufaj` varchar(65) COLLATE utf8_hungarian_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `konyvek`
--

INSERT INTO `konyvek` (`id`, `cim`, `mufaj`, `link`) VALUES
(4, 'A barátfalvi lévita', 'Novella', 'http://mek.oszk.hu/00700/00785/index.phtml'),
(5, 'A Berzsenyi dinasztia – Tollrajzok a mai Budapestről', 'Regény', 'http://mek.oszk.hu/10700/10795/index.phtml'),
(6, 'A beszélő kutya', 'Novella', 'http://mek.oszk.hu/09600/09615/index.phtml');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `vnev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `knev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `szarmazas` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `writers`
--

INSERT INTO `writers` (`id`, `vnev`, `knev`, `szarmazas`, `link`) VALUES
(1, 'Móricz', 'Zsigmond', 'Magyar', 'https://hu.wikipedia.org/wiki/M%C3%B3ricz_Zsigmond');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `konyvek`
--
ALTER TABLE `konyvek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `writers`
--
ALTER TABLE `writers`
  ADD UNIQUE KEY `id` (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `konyvek`
--
ALTER TABLE `konyvek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `writers`
--
ALTER TABLE `writers`
  ADD CONSTRAINT `writers_ibfk_1` FOREIGN KEY (`id`) REFERENCES `felhasznalok` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
