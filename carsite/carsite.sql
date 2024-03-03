-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 03 2024 г., 21:48
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `carsite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `carsId` int NOT NULL,
  `userId` int NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `year` int NOT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mileage` int NOT NULL,
  `price` int NOT NULL,
  `carImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`carsId`, `userId`, `brand`, `model`, `year`, `transmission`, `mileage`, `price`, `carImg`) VALUES
(4, 2, 'Honda', 'Civic', 2019, 'manual', 1000, 15000000, 'IMG-65e4a3a494ac26.61321067.jpg'),
(5, 2, 'Honda', 'Civic', 2022, 'auto', 200, 20000000, 'IMG-65e4a3f9c43286.91971290.jpg'),
(6, 2, 'Lexus', 'NX', 2022, 'auto', 120, 40000000, 'IMG-65e4a6599e2a15.20308646.jpg'),
(7, 2, 'BMW', '5 Series', 2023, 'auto', 50, 35000000, 'IMG-65e4a87d394466.77997828.jpeg'),
(8, 2, 'Honda', 'Accord', 2022, 'auto', 1, 13000000, 'IMG-65e4a9945a6c15.53195762.jpeg'),
(9, 2, 'mercedes', 'C-Class', 2022, 'auto', 49, 40000000, 'IMG-65e4aab2269e37.43908200.jpg'),
(10, 2, 'mercedes', 'E-Class', 2023, 'auto', 34, 35000000, 'IMG-65e4ab105b7142.29288808.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `usersId` int NOT NULL,
  `usersName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `usersEmail` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `usersPass` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersPass`) VALUES
(2, 'Daty', 'temirlanaltaev26092004@gmail.com', '$2y$10$y7UZHX.h6y7YOv/1/RagaeUp5MfuXaCCce.TWht5YGwX4U5YiWDyS'),
(3, 'zxc', 'teasdasdmirlanaltaev26092004@gmail.com', '$2y$10$HIHoFxmYohTQFJID6PO/.ex7lLN4YkYlKZjQ.uBysRVFhmA6RyGEC');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`carsId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `carsId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
