-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 23 2023 г., 10:27
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u52957`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abilities`
--

CREATE TABLE `abilities` (
  `abilities_id` int(10) UNSIGNED NOT NULL,
  `application_id` int(10) NOT NULL DEFAULT 0,
  `superpower_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `abilities`
--

INSERT INTO `abilities` (`abilities_id`, `application_id`, `superpower_id`) VALUES
(0, 0, 1),
(0, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `application`
--

CREATE TABLE `application` (
  `application_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `year` int(10) NOT NULL DEFAULT 0,
  `sex` varchar(10) NOT NULL DEFAULT '',
  `hand` varchar(10) NOT NULL DEFAULT '',
  `biography` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `application`
--

INSERT INTO `application` (`application_id`, `name`, `email`, `year`, `sex`, `hand`, `biography`) VALUES
(0, 'Пикавсир', '89184300082@m.ru', 2004, 'male', 'left', 'яяыывв  ');

-- --------------------------------------------------------

--
-- Структура таблицы `superpower`
--

CREATE TABLE `superpower` (
  `superpower_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `superpower`
--

INSERT INTO `superpower` (`superpower_id`, `name`) VALUES
(1, 'бессмертие'),
(2, 'прохождение сквозь стены'),
(3, 'левитация');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
