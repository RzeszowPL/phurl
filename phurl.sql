-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `phurl`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phurl_settings`
--

CREATE TABLE `phurl_settings` (
  `last_number` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `phurl_settings`
--

INSERT INTO `phurl_settings` (`last_number`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phurl_urls`
--

CREATE TABLE `phurl_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL,
  `code` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `alias` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `phurl_urls`
--

INSERT INTO `phurl_urls` (`id`, `url`, `code`, `alias`, `date_added`) VALUES
(1, 'http://google.com', 'XXX', 'google', '2010-01-01 01:01:01');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `phurl_settings`
--
ALTER TABLE `phurl_settings`
  ADD KEY `last_number` (`last_number`);

--
-- Indexes for table `phurl_urls`
--
ALTER TABLE `phurl_urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `alias` (`alias`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `phurl_urls`
--
ALTER TABLE `phurl_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
