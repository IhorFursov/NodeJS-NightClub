-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2015 г., 01:16
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `nochnoiklubbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `club_dj`
--

CREATE TABLE IF NOT EXISTS `club_dj` (
  `id_dj` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `opisanie` varchar(100) NOT NULL,
  `foto_dj` varchar(50) NOT NULL,
  PRIMARY KEY (`id_dj`),
  KEY `id_event` (`id_event`),
  KEY `id_event_2` (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `Kod_employee` int(11) NOT NULL,
  `First_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Last_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Doljnost` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Data_rabotu` date NOT NULL,
  `manager` tinyint(1) NOT NULL,
  PRIMARY KEY (`Kod_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `Kod_sobitiya` int(11) NOT NULL,
  `Nazvanie` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Date` date NOT NULL,
  `Begin` time NOT NULL,
  `Entry_cost` int(11) NOT NULL,
  `Priglashennie` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Kod_sobitiya`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`Kod_sobitiya`, `Nazvanie`, `Date`, `Begin`, `Entry_cost`, `Priglashennie`) VALUES
(1, 'Вечеринка RnB', '2015-12-12', '20:00:00', 50, NULL),
(2, 'Выставка Pin-up работ', '2015-12-14', '21:00:00', 70, NULL),
(3, 'Съезд лучших Ди-Джеев', '2015-12-15', '22:00:00', 60, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `galereya`
--

CREATE TABLE IF NOT EXISTS `galereya` (
  `id_foto` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `opisanie_foto` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `id_foto` (`id_foto`),
  KEY `id_event` (`id_event`),
  KEY `id_event_2` (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `galereya`
--

INSERT INTO `galereya` (`id_foto`, `id_event`, `opisanie_foto`, `foto`) VALUES
(101, 1, 'Полдруги в клубе', 'images/v_klube1.jpg'),
(102, 1, 'За стойкой DJ-я', 'images/v_klube2.jpg'),
(103, 1, 'Красивые девушки ', 'images/v_klube3.jpg'),
(104, 1, 'Старые друзья', 'images/v_klube4.jpg'),
(105, 1, 'В красной ковточке', 'images/v_klube5.jpg'),
(106, 1, 'Девушка в кепке NY', 'images/v_klube6.jpg'),
(107, 1, 'Леди Гоу-Гоу', 'images/v_llube7.jpg'),
(108, 1, 'Поц прикалуется', 'images/v_klube8.jpg'),
(109, 1, 'Около пульта', 'images/v_klube9.jpg'),
(110, 1, 'Красивая девушка', 'images/v_klube10.jpg'),
(111, 1, 'Наш D-джей', 'images/v_klube11.jpg'),
(112, 1, 'Девушки "Огонь"', 'images/v_klube12.jpg'),
(113, 1, 'Красивая поза', 'images/v_klube13.jpg'),
(114, 1, 'Милашки ', 'images/v_klube14.jpg'),
(115, 1, 'Общий ракурс. Народ танцует', 'images/v-klube.jpg'),
(116, 1, 'Фото танцующих девушек', 'images/v_pyatnicu.jpg'),
(117, 2, '', 'images/galereya-1.jpg'),
(118, 2, '', 'images/galereya-2.jpg'),
(119, 2, '', 'images/galereya-3.jpg'),
(120, 2, '', 'images/galereya-4.jpg'),
(121, 2, '', 'images/galereya-5.jpg'),
(122, 2, '', 'images/galereya-6.jpg'),
(123, 2, '', 'images/galereya-7.jpg'),
(124, 2, '', 'images/galereya-8.jpg'),
(125, 3, 'Dj-Lesch. Молодой Ди-джей родом из Киева. 27 лет. Любит Музыку среднего темпа, его композиции всегда добродушны. Состоялся как композитор десятка песен, может удивить публику фирменными эффектами затухания мелодии и др.', 'images/dj-lesch.jpg'),
(126, 3, 'Ди-джей Рига. Родом из Латвии. Стильный, педантичный, уверенный - так его можно охарактеризовать как в жизни, так и у пульта. Хорошо умеет импровизировать, миксовать темп и музыку. Любит драйв, лайт-лаундж.', 'images/dj-riga.jpg'),
(127, 3, 'Dj-ТИЕСТО. Энергичный, изобретательный и популярный Dj-ей из Бельгии. Продемонстрирует свой уникальный стиль исполнения, поделиться опытом с коллегами и драйвовой музыкой с посетителями. Стиль RnB, Dub-step.', 'images/dj-tiesto.jpg'),
(128, 3, 'Dj-Vonyk. Молодой Dj-ей из Харькова. Любит драйв и кураж. Умеет миксовать сложные композиции, задавать ритм для дискотеки. Активно осваивает разнообразные стили и направления в современной музыке.', 'images/dj-vonik.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `invited`
--

CREATE TABLE IF NOT EXISTS `invited` (
  `Kod` int(11) NOT NULL,
  `familiya` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Profession` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Country` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Kod`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs;

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `Kod_dish` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`Kod_dish`),
  KEY `Kod_dish` (`Kod_dish`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`Kod_dish`, `Weight`, `Price`, `Description`, `foto`) VALUES
(201, 150, 20, 'Салат "Оливье"', 'images/salat_olive.jpg'),
(202, 150, 20, 'Салат нежный с телятиной', 'images/salat_telatina.jpg'),
(203, 100, 30, 'Вино красное', 'images/vino_krasnoe.jpg'),
(204, 100, 50, 'Текила', 'images/tekila.jpg'),
(205, 100, 50, 'Ром', 'images/rom.jpg'),
(206, 100, 30, 'Десерт  "Эклеры"', 'images/ekleri.jpg'),
(207, 200, 30, 'Картофель "Фри"', 'images/kartof_fri.jpg'),
(208, 150, 30, 'Стейк', 'images/steik.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `Kod_zakaza` int(11) NOT NULL,
  `Table` int(11) NOT NULL,
  `Date_order` varchar(50) NOT NULL,
  PRIMARY KEY (`Kod_zakaza`),
  KEY `Table` (`Table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `club_dj`
--
ALTER TABLE `club_dj`
  ADD CONSTRAINT `club_dj_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `events` (`Kod_sobitiya`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `galereya`
--
ALTER TABLE `galereya`
  ADD CONSTRAINT `galereya_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `events` (`Kod_sobitiya`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Kod_zakaza`) REFERENCES `events` (`Kod_sobitiya`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
