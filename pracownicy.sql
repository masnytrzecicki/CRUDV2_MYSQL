-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Paź 2021, 14:33
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pracownicydb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `wage` int(11) NOT NULL,
  `country` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `age`, `wage`, `country`, `name`) VALUES
(1, 19, 100000, 'straszyn', 'dupa'),
(2, 19, 100000, 'straszyn', 'wsedopfuigpsdfghoui'),
(3, 19, 100000, 'straszyn', 'wsedopfuigpsdfghoui'),
(4, 123, 123, 'as', 'asd'),
(5, 123, 123, 'as', 'asd'),
(6, 123, 1209099, 'as', 'asd'),
(7, 19, 1209099, 'straszyn', 'dupadupa'),
(8, 0, 0, '', ''),
(9, 0, 0, '', ''),
(10, 19, 999, 'polska', 'paweł tyburski'),
(11, 0, 0, '', ''),
(12, 0, 0, '', ''),
(13, 0, 0, '', ''),
(14, 0, 0, '', ''),
(15, 0, 0, '', ''),
(16, 0, 0, '', ''),
(17, 0, 0, '', ''),
(18, 0, 0, '', ''),
(19, 0, 0, '', ''),
(20, 0, 0, '', ''),
(21, 0, 0, '', ''),
(22, 0, 0, '', ''),
(23, 19, 19000, 'nigeria', 'niger'),
(24, 19, 190, 'nigeria', 'nigas');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
