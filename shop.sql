-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 01 2018 г., 17:58
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Phone'),
(2, 'Tablet'),
(3, 'Laptop');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `image`, `title`, `model`, `price`, `size`, `color`, `description`, `category_id`) VALUES
(1, 'img/mobile/7a3d3596ed8b0a197b503dfed72ab326.jpg', ' Samsung Galaxy Note 8 6/64GB Orchid Gray (SM-N950FZVDSEK) ', '', '26 999 грн  ', '', '', '6.3\" Quad HD+ | 8 ядер | 2.3 + 1.7 GHz | 12 Мп + 12 Мп', 1),
(2, 'img/mobile/522aa8a0149196fca37cf95e15207fdd.jpg', ' Samsung Galaxy Note 8 6/64GB Black (SM-N950FZKDSEK) ', '', '26 999 грн  ', '', '', '6.3\" Quad HD+ | 8 ядер | 2.3 + 1.7 GHz | 12 Мп + 12 Мп', 1),
(3, 'img/mobile/38848645667ea7154c77f92d57a1117c.jpg', ' HTC U11 (Brilliant Black) ', '', '18 999 грн  ', '', '', '5.5\" Quad HD | 8 ядер | 2.45GHz | 12 Мп', 1),
(4, 'img/mobile/039e7b68f1cd1684e73ff8ff7bc9dea2.jpg', ' Samsung Galaxy S7 Edge Duos (Black Onix) ', '', '14 999 грн  ', '', '', '5.5\" Quad HD | 8 ядер | 2.3 + 1.6 GHz | 12 Мп', 1),
(5, 'img/mobile/d8330f17c5afb35f7112fdadcfbd6839.jpg', '  Doogee X9 Mini (Black) ', '', '1 859 грн  ', '', '', '5.0\" HD | 4 ядра | 1.5 GHz | 5 Мп', 1),
(6, 'img/mobile/df9276e55ae3ce146a57311e38925950.jpg', ' Meizu M6 Gold ', '', '3 299 грн  ', '', '', '16 Gb32 Gb', 1),
(7, 'img/mobile/a78fa7553cc9c970dd5d97d26298f7dc.jpg', ' Meizu M6 Black ', '', '3 299 грн  ', '', '', '16 Gb32 Gb', 1),
(8, 'img/mobile/35e46a32259f14a951c0571931b108c4.jpg', ' Honor 6A 2/16Gb Grey (DLI-TL20) ', '', '3 599 грн  ', '', '', '5.0\" HD | 8 ядер | 1.5 GHz | 13 Мп', 1),
(9, 'img/mobile/ea29a000bcac0699a3fac3e1290f1233.jpg', ' Honor 6C Pro 3/32Gb Blue ', '', '4 499  грн  ', '', '', '5.2\" HD | 8 ядер | 1.5 GHz | 13 Мп', 1),
(10, 'img/mobile/8222b8ecd02e64061ffe415f1832a594.jpg', ' Honor 9 Lite 3/32Gb Sapphire Blue (LLD-L31) ', '', '6 499 грн  ', '', '', '5.65\" FHD+ | 8 ядер | 2.36 GHz | 13 Мп + 2 Мп', 1),
(11, 'img/mobile/b4dc2e48eca632fbb6c9a8d912692cfe.jpg', ' Meizu M6 Note Silver ', '', '4 999 грн  ', '', '', '16 Gb32 Gb', 1),
(12, 'img/mobile/c8c4c3e95c614c7c28ede8c712017f53.jpg', ' Meizu M6 Note Gold ', '', '4 999 грн  ', '', '', '16 Gb32 Gb64 Gb', 1),
(13, 'img/mobile/d0bc479a216fbbc8602d55893973c583.jpg', ' Meizu M6 Note Blue ', '', '4 999 грн  ', '', '', '16 Gb32 Gb', 1),
(14, 'img/mobile/549677b79d3603777a2879702265547b.jpg', ' Meizu M6 Note Black ', '', '4 999 грн  ', '', '', '16 Gb32 Gb64 Gb', 1),
(15, 'img/mobile/e593925a53f29b340b5ec0aa4d0bf8ef.jpg', ' Meizu Pro 6 Plus 64Gb Gray (Украинская версия) ', '', '5 999 грн  ', '', '', '5.7\" WQHD | 8 ядер | 2 GHz | 12 Мп', 1),
(16, 'img/mobile/0f77e9b837c20ab212266ca040310e2c.jpg', ' Meizu Pro 6 Plus Gold 64Gb (Украинская версия) ', '', '5 999 грн  ', '', '', '5.7\" WQHD | 8 ядер | 2 GHz | 12 Мп', 1),
(17, 'img/mobile/db01b9e6ced468117e9c0961fd95f697.jpg', ' Meizu M5c 32Gb Rose Gold ', '', '2 999 грн  ', '', '', '16 Gb32 Gb', 1),
(18, 'img/mobile/cbececd55c013b183557ad5e2da1527b.jpg', ' Blackview A8 (Pearl White) ', '', '1 599 грн  ', '', '', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', 1),
(19, 'img/mobile/4b16cd13ac11868f7fbea666da0bf7a3.jpg', ' Meizu M5c 32GB Black ', '', '2 999 грн  ', '', '', '16 Gb32 Gb', 1),
(20, 'img/mobile/3599d60d59aa2363aa21d251ffd39a32.jpg', ' Meizu Pro 7 Plus 6/64GB (Black) ', '', '10 999 грн  ', '', '', '5.7\" Quad HD | 10 ядер | 2.6 GHz | 12 Мп + 12 Мп', 1),
(21, 'img/mobile/51b5a4377f5b2bb8bd3050e1c74e5c7c.jpg', ' Meizu M5s 32Gb Gold (Украинская версия) ', '', '3 599 грн  ', '', '', '16 Gb32 Gb', 1),
(22, 'img/mobile/5ad1c3ad1081faf5032e9f2443c2ac46.jpg', ' Meizu M5c 32Gb Blue ', '', '2 999 грн  ', '', '', '16 Gb32 Gb', 1),
(23, 'img/mobile/926fd78c2cbf4622da78251c03897a62.jpg', ' Meizu Pro 7 4/64GB (Black) ', '', '7 999 грн  ', '', '', '5.2\" FULL HD | 8 ядер | 2.6 GHz | 12 Мп + 12 Мп', 1),
(24, 'img/mobile/00c5dad5e44b8d027beab92bdce20b76.jpg', ' Meizu M5s 16Gb Gold (Украинская версия) ', '', '3 099 грн  ', '', '', '16 Gb32 Gb', 1),
(25, 'img/mobile/76d6c5825ed695d00559c8a1aa612cdc.jpg', ' Meizu M6s 3/32Gb (Blue) ', '', '4 999 грн  ', '', '', '32 Gb64 Gb', 1),
(26, 'img/mobile/7a974c33061662a5aa5cabd306f47915.jpg', ' Assistant AS-5436 Grid 1/16GB (Black) ', '', '2 099 грн  ', '', '', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', 1),
(27, 'img/mobile/b3c04353aa3d4eb806c7ce96db16a61f.jpg', ' Meizu M5s Silver (Украинская версия) ', '', '3 099 грн  ', '', '', '16 Gb32 Gb', 1),
(28, 'img/mobile/4974ca7b56f6c109e02ed7e9295f2a51.jpg', ' Meizu M5c 32GB Gold ', '', '2 999 грн  ', '', '', '16 Gb32 Gb', 1),
(29, 'img/mobile/416cbd671b6d0a865bbd6be883260794.jpg', ' Meizu M6s 3/32Gb (Black) ', '', '4 999 грн  ', '', '', '32 Gb64 Gb', 1),
(30, 'img/mobile/b7e788f226d46dca1d569200914565ff.jpg', ' Samsung Galaxy A7 (2017) Black Sky ', '', '11 499 грн  ', '', '', '5.7\" FULL HD | 8 ядер | 1.9 GHz | 16 Мп', 1),
(31, 'img/mobile/f1240e2b53bb626583f0c7b017319be4.jpg', ' Assistant AS-5435 1/16GB (Black) ', '', '2 099 грн  ', '', '', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', 1),
(32, 'img/mobile/f73c9b7b21b9cd456de20a2ad32ba5c6.jpg', ' Meizu M5s 32Gb Gray (Украинская версия) ', '', '3 599 грн  ', '', '', '16 Gb32 Gb', 1),
(33, 'img/mobile/2fb3f3c329646ac7f05763aa34e4acca.jpg', ' Meizu M5c 32Gb Red ', '', '2 999 грн  ', '', '', '16 Gb32 Gb', 1),
(34, 'img/mobile/3599d60d59aa2363aa21d251ffd39a32.jpg', ' Meizu Pro 7 Plus 6/64GB (Black)  ', '', '10 999 грн  ', '', '', '5.7\" Quad HD | 10 ядер | 2.6 GHz | 12 Мп + 12 Мп', 1),
(35, 'img/mobile/51b5a4377f5b2bb8bd3050e1c74e5c7c.jpg', ' Meizu M5s 32Gb Gold (Украинская версия) ', '', '3 599 грн  ', '', '', '16 Gb32 Gb', 1),
(36, 'img/mobile/5ad1c3ad1081faf5032e9f2443c2ac46.jpg', ' Meizu M5c 32Gb Blue ', '', '2 999 грн  ', '', '', '16 Gb32 Gb', 1),
(37, 'img/mobile/266af47d4edeccb0f99846027f9aa525.jpg', ' Meizu M5 Note 32Gb Silver (Украинская версия) ', '', '3 999 грн  ', '', '', '16 Gb32 Gb', 1),
(38, 'img/mobile/9a77da97f9f76fed13be651a62f7f835.jpg', ' Meizu M5 Note 32Gb Gray (Украинская версия) ', '', '3 999 грн  ', '', '', '16 Gb32 Gb', 1),
(39, 'img/mobile/d5e4dea852597ef1b4a80a3793b71675.jpg', ' Meizu M5 Note 32Gb Gold (Украинская версия) ', '', '3 999 грн  ', '', '', '16 Gb32 Gb', 1),
(40, 'img/mobile/be0f56eb82e8e13783096a0f50d9b773.jpg', ' Honor 9 4/64Gb Sapphire Blue (STF-L09) ', '', '9 999 грн  ', '', '', '5.15\" FULL HD | 8 ядер | 2.4GHz | 20 Мп + 12 Мп', 1),
(41, 'img/mobile/e81b805ef1f90f8a8de6ff4a67578720.jpg', ' Honor 9 4/64Gb Midnight Black (STF-L09) ', '', '9 999 грн  ', '', '', '5.15\" FULL HD | 8 ядер | 2.4GHz | 20 Мп + 12 Мп', 1),
(42, 'img/mobile/eaee06f986bc0e320d14e3feda36b9f8.jpg', ' Honor 7X 4/64Gb Blue (BND-L21) ', '', '6 999 грн  ', '', '', '5.9\" FHD+ | 8 ядер | 2.36 GHz | 16 Мп + 2 Мп', 1),
(43, 'img/mobile/2ab96ad3bdcf98b47bfee9f8e6a6b975.jpg', ' Apple iPhone SE (Silver) ', '', '8 499 грн  ', '', '', '32 Gb128 Gb', 1),
(44, 'img/mobile/dad7f6ec3f18f45e7cb17b45fe5578e3.jpg', ' iPhone 6 32 Gb (Space Gray) ', '', '9 999 грн  ', '', '', '4.7\" Retina HD | 2 ядра | 1.4 GHz | 8 Мп', 1),
(45, 'img/mobile/2cc49b9ee8b88569d272060712ebc01c.jpg', ' Nokia 8 Dual SIM (Copper) ', '', '16 999 грн  ', '', '', '5.3\" Quad HD | 8 ядер  | 2.5 + 1.8 GHz | 13 Мп', 1),
(46, 'img/mobile/1cb6461feb8449fd6aeeb8defe696785.jpg', ' Samsung Galaxy S8 (Midnight Black) ', '', '20 499 грн  ', '', '', '5.8\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', 1),
(47, 'img/mobile/d16862fc5efa2e04fff3c35a70e731a8.jpg', ' Samsung Galaxy S9 (Black) ', '', '27 999 грн  ', '', '', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', 1),
(48, 'img/mobile/33b9cc196f28673590007bafc439a114.jpg', ' Nokia 8 Dual SIM (Blue) ', '', '12 999 грн  ', '', '', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', 1),
(49, 'img/mobile/344316b5d20132c2e351aed6eba73596.jpg', ' Samsung Galaxy S9+ (Black) ', '', '31 999 грн  ', '', '', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', 1),
(50, 'img/mobile/e8b25bc218ee05ad39f7bf2d4aafce60.jpg', ' Samsung Galaxy S9+ (Purple) ', '', '31 999 грн  ', '', '', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', 1),
(51, 'img/mobile/2a61916b208199a3334e006008434ad7.jpg', ' Nokia 8 Dual SIM (Matte Blue) ', '', '12 999 грн  ', '', '', '5.3\" Quad HD | 4 ядра | 2.5 + 1.8 GHz | 13 Мп', 1),
(52, 'img/mobile/cbaa3f1b1c82aba572b795a3fce124ec.jpg', ' Samsung Galaxy S9 (Black) ', '', '27 999 грн  ', '', '', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', 1),
(53, 'img/mobile/78f3cc7e1e3975af56f2d90290637707.jpg', ' Samsung Galaxy A8 (2018) Black ', '', '13 999 грн  ', '', '', '5.6\" FHD+ | 8 ядер | 2.2 GHz | 16 Мп', 1),
(54, 'img/mobile/0ef86301a1dba695b2c23255b39c09f7.jpg', ' Samsung Galaxy S9+ (Grey) ', '', '31 999 грн  ', '', '', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', 1),
(55, 'img/mobile/9623d870a17e083f24a7b4521e5b6dfb.jpg', ' Apple iPhone 6s (Space Gray) как новый Apple Certified Pre-owned ', '', '10 999 грн  ', '', '', '16 Gb64 Gb128 Gb', 1),
(56, 'img/mobile/e133d65fe7953bed4a6ba767e729e412.jpg', ' Samsung Galaxy S9 (Purple) ', '', '27 999 грн  ', '', '', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', 1),
(57, 'img/mobile/947a4759f8deabd6252b07ec9d56efba.jpg', ' Nokia 8 Dual SIM (Silver) ', '', '12 999 грн  ', '', '', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', 1),
(58, 'img/mobile/2396aec8d136eb36565c639bee0ca2bf.jpg', ' Huawei P10 Lite 32GB Gold ', '', '5 799 грн  ', '', '', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', 1),
(59, 'img/mobile/4e4f94708372217af2edc9321f20a16c.jpg', ' Huawei P10 Lite 32GB Black ', '', '5 799 грн  ', '', '', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', 1),
(60, 'img/mobile/8085767d9dd259124e25641f6990acdf.jpg', ' Apple iPhone 8 ', '', '21 999 грн  ', '', '', '64 Gb256 Gb', 1),
(61, 'img/mobile/03e91d624d868f2a28226ff9c4155216.jpg', ' Apple iPhone 8 Plus ', '', '25 999 грн  ', '', '', '64 Gb256 Gb', 1),
(62, 'img/mobile/a3a4f554fdfb30ce9426f08054fcad35.jpg', ' Apple iPhone X 64Gb Space Gray ', '', '33 999 грн  ', '', '', '64 Gb256 Gb', 1),
(63, 'img/mobile/340e34cc622cc071350a809a8cca8b84.jpg', '  Huawei P Smart 3/32Gb Blue (51092DPL) ', '', '6 999 грн  ', '', '', '5.65\" FHD+ | 8 ядер | 2.36 GHz | 13 Мп + 2 Мп', 1),
(64, 'img/mobile/3acda969c0dacfb55f2674a9f78b243f.jpg', ' Samsung Galaxy S8+ (Orchid Gray) ', '', '23 499 грн  ', '', '', '6.2\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', 1),
(65, 'img/mobile/553e61cb92a4d2c7f7e4fcfd8b98ef3d.jpg', ' iPhone 7 (Black) ', '', '16 999 грн  ', '', '', '32 Gb128 Gb', 1),
(66, 'img/mobile/c80f899c44fc5546e313a58dbdb2de46.jpg', ' iPhone 7 Plus (Jet Black) ', '', '20 999 грн  ', '', '', '32 Gb128 Gb', 1),
(67, 'img/mobile/9b11e443f848be5c4fdd30129e2802e2.jpg', ' iPhone 7 (Gold) ', '', '19 499  грн  ', '', '', '32 Gb128 Gb', 1),
(68, 'img/mobile/e3abc2e2d03fb2c509bb4b69de4a80f3.jpg', ' Apple iPhone SE (Gold) ', '', '8 499 грн  ', '', '', '32 Gb128 Gb', 1),
(69, 'img/mobile/018f449aa461eb3036ced30fc75067f3.jpg', ' Apple iPhone 8 ', '', '25 999 грн  ', '', '', '64 Gb256 Gb', 1),
(70, 'img/mobile/29f28ee97994cc2fa1b697c4146ef765.jpg', ' Apple iPhone X 256Gb Silver ', '', '35 999 грн  ', '', '', '64 Gb256 Gb', 1),
(71, 'img/mobile/01ba432626cfa55dc1614d4ff2012fc2.jpg', ' Apple iPhone 6s (Space Gray) как новый Apple Certified Pre-owned ', '', '9 999 грн  ', '', '', '16 Gb64 Gb128 Gb', 1),
(72, 'img/mobile/994427c148c5b75dd89f62f2552a40ec.jpg', ' Huawei Nova Lite 2/16Gb Blue (SLA-L22) ', '', '3 999 грн  ', '', '', '5.0\" HD | 4 ядра | 1.4 GHz | 13 Мп', 1),
(73, 'img/mobile/f17ea4a706c4f81944f5c6e8dd20b464.jpg', ' Apple iPhone SE (Space Gray) ', '', '9 499 грн  ', '', '', '32 Gb128 Gb', 1),
(74, 'img/mobile/f44a0f6a4bcba74193e02c57a33e7751.jpg', ' Huawei Nova Lite 2/16Gb Black (51091VQB) ', '', '3 999 грн  ', '', '', '5.0\" HD | 4 ядра | 1.4 GHz | 13 Мп', 1),
(75, 'img/mobile/115a329caf5a90e1cf04f12877344dba.jpg', ' Huawei Nova Lite 2/16Gb Gold (51091VQC) ', '', '3 999 грн  ', '', '', '5.0\" HD | 4 ядра | 1.4 GHz | 13 Мп', 1),
(76, 'img/mobile/3f5b4e3c22b705f340c47e1a249ae52a.jpg', ' Huawei Mate 10 Pro 6/128Gb Mokka (BLA-L29) ', '', '24 999 грн  ', '', '', '6.0\" FHD+ | 8 ядер | 2.4 + 1.8 GHz | 20 Мп + 12 Мп', 1),
(77, 'img/mobile/38f1d081df4468e802510d34b3755f5f.jpg', ' Huawei Mate 10 Lite 4/64Gb Blue (51091YGH) ', '', '8 999 грн  ', '', '', '5.9\" FHD+ | 8 ядер | 2.4 + 1.7 GHz | 16 Мп + 2 Мп', 1),
(78, 'img/mobile/6ea7ff9cdd17fcc94cb58dd0699abef4.jpg', ' Huawei Mate 10 Lite 4/64Gb Black (51091YGF) ', '', '8 999 грн  ', '', '', '5.9\" FHD+ | 8 ядер | 2.4 + 1.7 GHz | 16 Мп + 2 Мп', 1),
(79, 'img/mobile/eee6e9d20d2d5a5412a5adcffabf74bd.jpg', ' Huawei P10 Lite 32GB Blue ', '', '5 799 грн  ', '', '', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', 1),
(80, 'img/mobile/8295af5a985472f617eab381cc75231e.jpg', ' Meizu 15 4/64Gb (Black) ', '', '11 999 грн  ', '', '', '5.46\" FULL HD | 8 ядер | 2.2 GHz | 12 Мп + 20 Мп', 1),
(81, 'img/mobile/1c48f3d8764c55182403d2391105502c.jpg', ' Ulefone S7 1/8Gb (Turquoise) ', '', '1 799 грн  ', '', '', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп + 5 Мп', 1),
(82, 'img/mobile/08c6ba69e2f8d9f608b26018372fee61.jpg', ' Sony Xperia XZ1 G8342 (Blue) ', '', '14 999 грн  ', '', '', '5.2\" FULL HD | 8 ядер | 2.45GHz | 19 Мп', 1),
(83, 'img/mobile/905bcc84c59a361a5cf85a86462346b9.jpg', ' Blackview BV6000s Sunshine Orange ', '', '3 999 грн  ', '', '', '4.7\" HD | 4 ядра | 1.3 GHz | 8 Мп', 1),
(84, 'img/mobile/60bfd91422550aa713c776e192d2ef56.jpg', ' Samsung Galaxy A3 (2017) Black Sky ', '', '7 299 грн  ', '', '', '4.7\" HD | 8 ядер | 1.6 GHz | 13 Мп', 1),
(85, 'img/mobile/6fd9a595d7cb66b9e12a80d57c76f035.jpg', ' Asus ZenFone 5 4/64Gb Meteor Silver (ZE620KL) ', '', '12 999 грн  ', '', '', '6.2\" FHD+ | 8 ядер | 1.8 GHz | 12 Мп + 8 Мп', 1),
(86, 'img/mobile/7e63b739dde3cc652f8a1bcd1b2cf1a6.jpg', ' Huawei P10 Plus 64Gb Black ', '', '15 999 грн  ', '', '', '5.5\" Quad HD | 8 ядер | 2.4GHz | 20 Мп + 12 Мп', 1),
(87, 'img/mobile/7ab959ff328e0a29c237b8889e86675d.jpg', ' Ulefone Mix 2 2/16Gb (Blue) ', '', '3 699 грн  ', '', '', '5.7\" HD+ | 4 ядра | 1.3 GHz | 13 Мп + 5 Мп', 1),
(88, 'img/mobile/7ed2cad980d33671a3dbf8cb04ae5841.jpg', ' Huawei Nova 2 4/64GB Blue (51091TNT) ', '', '7 999 грн  ', '', '', '5.0\" FULL HD | 8 ядер | 2.36 + 1.7 GHz | 12 Мп + 8 Мп', 1),
(89, 'img/mobile/9eb08e485ab35075f62cd208c3055768.jpg', ' Sigma Х-treme PQ28 (Black) ', '', '5 299 грн  ', '', '', '5.0\" HD | 4 ядра | 1.5 GHz | 8 Мп', 1),
(90, 'img/tabletpc/8ecdc615524cb38b665f533e88457684.jpg', ' Samsung Galaxy Tab A 10.1&quot; LTE (SM-T585) black ', '', '8 999 грн  ', '', '', '10.1\" WUXGA | 8 ядер | 3G | 7300mAH', 2),
(91, 'img/tabletpc/072856d75566ddba7b0069cdc30c6d84.jpg', ' Samsung Galaxy Tab S3 9.7&quot; Wi-Fi (SM-T820) Black ', '', '18 999 грн  ', '', '', '9.7\" QXGA | 4 ядра | 6000mAH', 2),
(92, 'img/tabletpc/9205ac66e8318053728c5b46e0f7f0e3.jpg', ' Apple iPad 32Gb Wi-Fi Silver (MP2G2RK/A) 2017 ', '', '8 499 грн  ', '', '', '32Gb128Gb', 2),
(93, 'img/tabletpc/2a99b12561167d32b2c09030eb56e243.jpg', ' Teclast 98 4G 2/32Gb ', '', '3 999 грн  ', '', '', '10.1\" FULL HD | 8 ядер | 3G | 4900mAH', 2),
(94, 'img/tabletpc/119db323f379f371b058c10ded959420.jpg', ' Chuwi Hi10 Plus ', '', '5 699 грн  ', '', '', '10.8\" WUXGA | 4 ядра | 8400mAH', 2),
(95, 'img/tabletpc/7ae2304d4e697512871f89a421a02aac.jpg', ' Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Silver ', '', '24 999 грн  ', '', '', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', 2),
(96, 'img/tabletpc/b18345e63850a494ec0e20671fac952d.jpg', ' Samsung Galaxy Tab E 9.6&quot; 3G (Black) ', '', '4 999 грн  ', '', '', '9.6\" WXGA | 4 ядра | 3G | 5000mAH', 2),
(97, 'img/tabletpc/339f3a966694e7a0f8c67a943abf67dc.jpg', ' Chuwi Hi10 Pro ', '', '5 399 грн  ', '', '', '10.1\" WUXGA | 4 ядра | 6500mAH', 2),
(98, 'img/tabletpc/6466f4e5efde31f177eefddd970ab210.jpg', ' Lenovo Tab 3 Plus X70L 3G 2/16Gb (ZA0Y0036UA) Black ', '', '5 999 грн  ', '', '', '10\" FULL HD | 4 ядра | 7000mAH', 2),
(99, 'img/tabletpc/a9d9c8d220254cc7e066e712bb95347c.jpg', ' Lenovo TAB4 7 TB-7304F Essential 1/8Gb (Black) ', '', '2 399 грн  ', '', '', '&nbsp;', 2),
(100, 'img/tabletpc/7f5eca8108912677eed62ad1f23fa67f.jpg', ' Samsung Galaxy Tab A 8.0 16Gb LTE (Smoky Titanium) ', '', '6 499 грн  ', '', '', '8.0\" XGA | 4 ядра | 3G | 4200mAH', 2),
(101, 'img/tabletpc/048a77a116fde0c200e759353c213f22.jpg', ' Apple iPad 32Gb Wi-Fi+4G Gold (MPG42RK/A) 2017 ', '', '13 999 грн  ', '', '', '32Gb128Gb', 2),
(102, 'img/tabletpc/fd435afb8bc186538b0363ea9babac73.jpg', ' Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Space Gray ', '', '10 499 грн  ', '', '', '32Gb128Gb', 2),
(103, 'img/tabletpc/63f37284226bcef67d6ffbff757dc2fc.jpg', ' Lenovo Tab4 7 Essential TB-7304I 3G 2/16GB (Black) ZA310144UA ', '', '3 499 грн  ', '', '', '7.0\" WSVGA | 4 ядра | 3G | 3450mAH', 2),
(104, 'img/tabletpc/aece2b42e1b5263d7107657d263c4224.jpg', ' Samsung Galaxy Tab S2 9.7 LTE (SM-T819) Black ', '', '13 999 грн  ', '', '', '9.7\" QXGA | 8 ядер | 3G | 5870mAH', 2),
(105, 'img/tabletpc/15be06ff9c1fa24e31ae3bc1773d65c4.jpg', ' Apple iPad 32Gb Wi-Fi Gold (MPGT2RK/A) 2017 ', '', '8 499 грн  ', '', '', '32Gb128Gb', 2),
(106, 'img/tabletpc/198376b771e1f29f7d506c8456693301.jpg', ' iPad Pro 10.5 Wi-Fi+4G (Gold) 2017 ', '', '26 499 грн  ', '', '', '64Gb256Gb512Gb', 2),
(107, 'img/tabletpc/f925f1e05bbab75d01a2a2d407e7d99f.jpg', ' Samsung Galaxy Tab A 7.0 8Gb LTE (Black) ', '', '4 499 грн  ', '', '', '7.0\" WXGA | 4 ядра | 3G | 4000mAH', 2),
(108, 'img/tabletpc/72f2ea2f66c1feecadd9ecc049239b2c.jpg', ' Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Black ', '', '24 999 грн  ', '', '', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', 2),
(109, 'img/tabletpc/099a2b5dcb46bffea1862136955f0511.jpg', ' iPad Pro 12.9 Wi-Fi+4G (Silver) 2017 ', '', '29 999 грн  ', '', '', '64Gb256Gb512Gb', 2),
(110, 'img/tabletpc/b3ad8e40e2e728599112ee98b6ebc730.jpg', ' LapBook Chuwi 12.3&quot; ', '', '9 499 грн  ', '', '', '&nbsp;', 2),
(111, 'img/tabletpc/891315582060558068ca65248cf50110.jpg', ' Samsung Galaxy Tab A 10.1&quot; Wi-Fi (SM-T580) black ', '', '7 499 грн  ', '', '', '10.1\" WUXGA | 8 ядер | 7300mAH', 2),
(112, 'img/tabletpc/95ac438dabc00f10ae8e7d96f6101310.jpg', ' iPad Pro 10.5 Wi-Fi (Rose Gold) 2017 ', '', '21 299 грн  ', '', '', '64Gb256Gb', 2),
(113, 'img/tabletpc/ec9b050453f0c1d0e6780a4623baaf27.jpg', ' Lenovo TAB 7 Essential 3G 1/16GB (ZA310064UA) Black ', '', '3 199 грн  ', '', '', '7.0\" WSVGA | 4 ядра | 3G | 3450mAH', 2),
(114, 'img/tabletpc/5251a5b8468aba8af7368d5c4b873906.jpg', ' iPad Pro 12.9 Wi-Fi (Silver) 2017 ', '', '25 999 грн  ', '', '', '64Gb256Gb', 2),
(115, 'img/tabletpc/fbfd99c1cd570b9a00f3437c4168d8b0.jpg', ' Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Gold ', '', '15 099 грн  ', '', '', '32Gb128Gb', 2),
(116, 'img/tabletpc/a9b5286029ebc7f411a7446a72bab2b5.jpg', ' Samsung Galaxy Tab A 8.0&quot; 16GB LTE (T385NZKASEK) Black ', '', '6 999 грн  ', '', '', '8.0\" WXGA | 4 ядра | 3G | 5000mAH', 2),
(117, 'img/tabletpc/3359e7d797cd8bc46899e58ac110e2dd.jpg', ' iPad Pro 12.9 Wi-Fi (Space Gray) 2017 ', '', '25 999 грн  ', '', '', '64Gb256Gb', 2),
(118, 'img/tabletpc/8e4233002234b23084458b5583366d26.jpg', ' Huawei MediaPad T3 10&quot; 16Gb 3G (Grey) ', '', '5 499 грн  ', '', '', '9.6\" HD | 4 ядра | 3G | 4800mAH', 2),
(119, 'img/tabletpc/223f58520fcbc41855dbf88a191a7420.jpg', ' iPad Pro 12.9 Wi-Fi+4G (Gold) 2017 ', '', '29 999 грн  ', '', '', '64Gb256Gb512Gb', 2),
(120, 'img/tabletpc/7836dfd821fd2fdaf60c3b18f25decde.jpg', ' Huawei MediaPad T3 10&quot; 16Gb 3G (Gold) ', '', '5 499 грн  ', '', '', '9.6\" HD | 4 ядра | 3G | 4800mAH', 2),
(121, 'img/tabletpc/b3b1f70087608357a6d2b965d6afbbf7.jpg', ' Yoga Book 4/128GB LTE Windows Pro (ZA160126UA) Ruby Red ', '', '21 499 грн  ', '', '', '10.1\" FULL HD | 4 ядра | 3G | 8500mAH', 2),
(122, 'img/tabletpc/fb980fb19714d1d2c043af4e09766e55.jpg', ' Apple iPad 32Gb Wi-Fi+4G Space Gray (MP1J2RK/A) 2017 ', '', '13 999 грн  ', '', '', '32Gb128Gb', 2),
(123, 'img/tabletpc/065913b7bf0b162fc36dae9b03ca1195.jpg', ' iPad Pro 10.5 Wi-Fi+4G (Rose Gold) 2017 ', '', '26 499 грн  ', '', '', '64Gb256Gb512Gb', 2),
(124, 'img/tabletpc/2cec2a8247d1d9c3bac4ff900d12887b.jpg', ' Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Gold ', '', '10 499 грн  ', '', '', '32Gb128Gb', 2),
(125, 'img/tabletpc/fc839017e0127c85758c573fb662d4d0.jpg', ' iPad Pro 12.9 Wi-Fi (Gold) 2017 ', '', '25 999 грн  ', '', '', '64Gb256Gb', 2),
(126, 'img/tabletpc/8277777fcf4be01478b5b9caa0c661ec.jpg', ' Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Space Gray ', '', '15 099 грн  ', '', '', '32Gb128Gb', 2),
(127, 'img/tabletpc/ad751999856524e4dede61b821f5dcd1.jpg', ' Apple iPad 32Gb Wi-Fi Space Gray (MP2F2RK/A) 2017 ', '', '8 499 грн  ', '', '', '32Gb128Gb', 2),
(128, 'img/tabletpc/d42286ac01312290f9665bbf3c516c38.jpg', ' iPad Pro 10.5 Wi-Fi+4G (Space Gray) 2017 ', '', '26 499 грн  ', '', '', '64Gb256Gb512Gb', 2),
(129, 'img/tabletpc/4a4241f2d4afd49bb30ccbcc718707ca.jpg', ' Assistant AP-757G (Black) ', '', '1 949 грн  ', '', '', '7.0\" HD | 4 ядра | 2500mAH', 2),
(130, 'img/tabletpc/a9d9c8d220254cc7e066e712bb95347c.jpg', ' Lenovo TAB4 7 TB-7304F Essential 1/8Gb (Black) ', '', '2 399 грн  ', '', '', '&nbsp;', 2),
(131, 'img/tabletpc/7f5eca8108912677eed62ad1f23fa67f.jpg', ' Samsung Galaxy Tab A 8.0 16Gb LTE (Smoky Titanium) ', '', '6 499 грн  ', '', '', '8.0\" XGA | 4 ядра | 3G | 4200mAH', 2),
(132, 'img/tabletpc/048a77a116fde0c200e759353c213f22.jpg', ' Apple iPad 32Gb Wi-Fi+4G Gold (MPG42RK/A) 2017 ', '', '13 999 грн  ', '', '', '32Gb128Gb', 2),
(133, 'img/tabletpc/fd435afb8bc186538b0363ea9babac73.jpg', ' Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Space Gray ', '', '10 499 грн  ', '', '', '32Gb128Gb', 2),
(134, 'img/tabletpc/f925f1e05bbab75d01a2a2d407e7d99f.jpg', ' Samsung Galaxy Tab A 7.0 8Gb LTE (Black) ', '', '4 499 грн  ', '', '', '7.0\" WXGA | 4 ядра | 3G | 4000mAH', 2),
(135, 'img/tabletpc/72f2ea2f66c1feecadd9ecc049239b2c.jpg', ' Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Black ', '', '24 999 грн  ', '', '', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', 2),
(136, 'img/tabletpc/099a2b5dcb46bffea1862136955f0511.jpg', ' iPad Pro 12.9 Wi-Fi+4G (Silver) 2017 ', '', '29 999 грн  ', '', '', '64Gb256Gb512Gb', 2),
(137, 'img/tabletpc/b3ad8e40e2e728599112ee98b6ebc730.jpg', ' LapBook Chuwi 12.3&quot; ', '', '9 499 грн  ', '', '', '&nbsp;', 2),
(138, 'img/tabletpc/63f37284226bcef67d6ffbff757dc2fc.jpg', ' Lenovo Tab4 7 Essential TB-7304I 3G 2/16GB (Black) ZA310144UA ', '', '3 499 грн  ', '', '', '7.0\" WSVGA | 4 ядра | 3G | 3450mAH', 2),
(139, 'img/tabletpc/aece2b42e1b5263d7107657d263c4224.jpg', ' Samsung Galaxy Tab S2 9.7 LTE (SM-T819) Black ', '', '13 999 грн  ', '', '', '9.7\" QXGA | 8 ядер | 3G | 5870mAH', 2),
(140, 'img/tabletpc/15be06ff9c1fa24e31ae3bc1773d65c4.jpg', ' Apple iPad 32Gb Wi-Fi Gold (MPGT2RK/A) 2017 ', '', '8 499 грн  ', '', '', '32Gb128Gb', 2),
(141, 'img/tabletpc/198376b771e1f29f7d506c8456693301.jpg', ' iPad Pro 10.5 Wi-Fi+4G (Gold) 2017 ', '', '26 499 грн  ', '', '', '64Gb256Gb512Gb', 2),
(142, 'img/tabletpc/b05a5312164f8d26a6cc5c1b372594b5.jpg', ' Lenovo Yoga Book YB1-X91F Wi-Fi Windows Pro (ZA150018UA) Carbon Black ', '', '16 299 грн  ', '', '', '10.1\" FULL HD | 4 ядра | 8500mAH', 2),
(143, 'img/tabletpc/25fdef9c8e97e8dd445af3937c43201f.jpg', ' Huawei MediaPad T3 7&quot; 8Gb (Grey) ', '', '2 999 грн  ', '', '', '&nbsp;', 2),
(144, 'img/tabletpc/36098786d643f6e50f1ab2ec742a2e39.jpg', ' Assistant AP-755G (Gold) ', '', '1 999 грн  ', '', '', '7.0\" WXGA | 4 ядра | 3G | 2800mAH', 2),
(145, 'img/tabletpc/563f0df9a0a20c11b4e36e87ead3c630.jpg', ' Assistant AP-107G (Black) ', '', '2 999 грн  ', '', '', '10\" FULL HD | 4 ядра | 3G | 6500mAH', 2),
(146, 'img/tabletpc/ba5ff7dbb299ca5c305d19f97915c6b8.jpg', ' Asus ZenPad 8.0 1/16Gb LTE (Dark Gray) ', '', '4 999 грн  ', '', '', '8.0\" WXGA | 4 ядра | 4000mAH', 2),
(147, 'img/tabletpc/910343f4dd1130fe001180542930b793.jpg', ' Pixus Touch 10.1 3G v2.0 ', '', '3 999 грн  ', '', '', '10.1\" WXGA | 8 ядер | 3G | 6000mAH', 2),
(148, 'img/tabletpc/463b5e8d29e7d19c02aeb6467d7da371.jpg', ' Yoga Book 4/128GB LTE Windows Pro (ZA160126UA) Carbon Black ', '', '23 999 грн  ', '', '', '10.1\" FULL HD | 4 ядра | 3G | 8500mAH', 2),
(149, 'img/tabletpc/0597c9c6a972a8c108cabac2767ef1f1.jpg', ' Teclast X10 FHD 3G 16Gb ', '', '2 999 грн  ', '', '', '10.1\" FULL HD | 4 ядра | 3G | 4900mAH', 2),
(150, 'img/tabletpc/bd14b7b903f04ff7aec1060c24f19783.jpg', ' Pixus hiPower 8GB 10.1 3G ', '', '2 699 грн  ', '', '', '10.1\" FULL HD | 4 ядра | 3G | 7000mAH', 2),
(151, 'img/tabletpc/b9a77dfe8384d5c1b3064b86aa3b4bdd.jpg', ' Asus ZenPad 3S 10 9.7&quot; 4/128Gb LTE (Slate Gray) ', '', '12 599 грн  ', '', '', '32Gb128Gb', 2),
(152, 'img/tabletpc/f39ad207f3a32a1501ab4239542c05e8.jpg', ' Pixus hiPower 16Gb 10.1 3G ', '', '2 999 грн  ', '', '', '10.1\" FULL HD | 4 ядра | 3G | 7000mAH', 2),
(153, 'img/tabletpc/e157e581e043a61aa63d98b9fa58e11e.jpg', ' Asus ZenPad 8.0 2/16Gb Wi-Fi (Dark Gray) ', '', '3 999 грн  ', '', '', '8.0\" WXGA | 4 ядра | 4000mAH', 2),
(154, 'img/tabletpc/d914a88c815e71e220bbc13b89242842.jpg', ' Asus ZenPad 3S 10 9.7&quot; 4/64Gb Wi-Fi (Silver) ', '', '8 999 грн  ', '', '', '9.7\" QXGA | 6 ядер | 5900mAH', 2),
(155, 'img/tabletpc/43013f3400902f0af8c57dba58a63114.jpg', ' Assistant AP-755G (Black) ', '', '1 999 грн  ', '', '', '7.0\" HD | 4 ядра | 3G | 2800mAH', 2),
(156, 'img/notebooks/88e6f92c0a05e299d1d8d828b6bfd643.jpg', ' Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/128 GB Silver ', '', '15 999 грн  ', '', '', '&nbsp;', 3),
(157, 'img/notebooks/0476ddb80e093a2b5aecc2c9cc65520c.jpg', ' Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/256 GB Silver ', '', '19 999 грн  ', '', '', '&nbsp;', 3),
(158, 'img/notebooks/550725c7565a187c40e6bbb236a9d6f0.jpg', ' Apple MacBook Air 13&quot; 128Gb (MQD32) 2017 ', '', '26 999 грн  ', '', '', '&nbsp;', 3),
(159, 'img/notebooks/57b2be44dd46a3e15717bdc4aaba490c.jpg', ' Ноутбук Huawei Matebook X WT-W09 13&quot; 4/256GB Space Gray ', '', '27 999 грн  ', '', '', '&nbsp;', 3),
(160, 'img/notebooks/0368c1b0c262b6dbf0928a54d3b96811.jpg', ' Apple MacBook Air 13&quot; (MMGG2UA/A) ', '', '32 299 грн  ', '', '', '&nbsp;', 3),
(161, 'img/notebooks/db669dfd580d3af00a37c1ff743b4718.jpg', ' Apple MacBook 12&quot; (MLHA2UA/A) Silver ', '', '32 499 грн  ', '', '', '&nbsp;', 3),
(162, 'img/notebooks/57181bbade40075a63c7f3f69bdcaf68.jpg', ' Apple MacBook 12&quot; (MMGL2UA/A) Rose Gold ', '', '32 499 грн  ', '', '', '&nbsp;', 3),
(163, 'img/notebooks/3df67ad1cd4bc37851e6332e507f621e.jpg', ' Apple MacBook 12&quot; (MLH72UA/A) Space Gray ', '', '32 499 грн  ', '', '', '&nbsp;', 3),
(164, 'img/notebooks/487f6dd421be87925995319da24711c4.jpg', ' Ноутбук Huawei Matebook X WT-W09 13&quot; 8/256GB Space Gray ', '', '32 999 грн  ', '', '', '&nbsp;', 3),
(165, 'img/notebooks/264402c2763ef9d4603539817e80a1c8.jpg', ' Apple MacBook 12&quot; (MLHC2UA/A) Silver ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(166, 'img/notebooks/9a2ab303f43971eea924ac53a0436df5.jpg', ' Apple MacBook 12&quot; (MMGM2UA/A) Rose Gold ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(167, 'img/notebooks/b3ce0214741b9359dca32c7fa27d6d70.jpg', ' Apple MacBook 12&quot; (MLH82UA/A) Space Gray ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(168, 'img/notebooks/8eafdf04ca6e980212db35b50773480e.jpg', ' Apple MacBook 12&quot; (MLHF2UA/A) Gold ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(169, 'img/notebooks/971c0f61a7b199a84ae1229c5ba47e4a.jpg', ' Apple MacBook 12&quot; (MLHE2UA/A) Gold ', '', '37 999 грн  ', '', '', '&nbsp;', 3),
(170, 'img/notebooks/0cd56294112c9efa4e1abfd15029796c.jpg', ' Apple MacBook Pro Retina 13&quot; (MLUQ2UA/A) Silver ', '', '39 999 грн  ', '', '', '&nbsp;', 3),
(171, 'img/notebooks/af39895deea2c0ccf0dc5767c5215bf7.jpg', ' Apple MacBook Pro Retina 13&quot; (MLL42UA/A) Space Grey ', '', '39 999 грн  ', '', '', '&nbsp;', 3),
(172, 'img/notebooks/5f614e73c6d7e39be342b3a0416006e7.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; (MLH12UA/A) Space Grey ', '', '43 999 грн  ', '', '', '&nbsp;', 3),
(173, 'img/notebooks/ff649f7ba6cb7a608f528b6997adaa55.jpg', ' Apple MacBook Pro Retina Touch Bar 15&quot; (MLH32UA/A) Space Grey ', '', '62 999 грн  ', '', '', '&nbsp;', 3),
(174, 'img/notebooks/b2a12df6d37c720d62eef9e08b1340af.jpg', ' Apple MacBook Pro Retina 15.4 (MJLQ2UA/A) ', '', '63 499 грн  ', '', '', '&nbsp;', 3),
(175, 'img/notebooks/34f4725d492607b934bfaa06fea54533.jpg', ' Apple MacBook Pro Retina Touch Bar (MLH42UA/A) Space Grey ', '', '76 999 грн  ', '', '', '&nbsp;', 3),
(176, 'img/notebooks/30afcff3314fbe731dc97a9393f6ebdf.jpg', ' Ноутбук Huawei Matebook D PL-W09 15.6&quot; 4/500GB ', '', '17 999 грн  ', '', '', '&nbsp;', 3),
(177, 'img/notebooks/bf8c715ee41fe43e96a736848cdd613f.jpg', ' Ноутбук Huawei Matebook D PL-W09 15.6&quot; 8GB/1T ', '', '24 999 грн  ', '', '', '&nbsp;', 3),
(178, 'img/notebooks/67358888a5b264fa48ec0ad4c36524be.jpg', ' Ультрабук Xiaomi Mi Notebook Air 13.3&quot; Silver ', '', '26 499 грн  ', '', '', '&nbsp;', 3),
(179, 'img/notebooks/21fa4b3f0272c07a2ece25f75e387dd9.jpg', ' Apple MacBook Pro Retina 13&quot; 128GB Space Gray (MPXQ2) 2017 ', '', '40 999 грн  ', '', '', '&nbsp;', 3),
(180, 'img/notebooks/873c782c37f8148ffefeb2dd76534e78.jpg', ' Apple MacBook Pro Retina 13&quot; 128GB Silver (MPXR2) 2017 ', '', '40 999 грн  ', '', '', '&nbsp;', 3),
(181, 'img/notebooks/92def6da29d095b91125ad62cb545efb.jpg', ' Apple MacBook Air 13&quot; 256Gb (MQD42) 2017 ', '', '39 099 грн  ', '', '', '&nbsp;', 3),
(182, 'img/notebooks/1300d1f7bcdabe16e877c2bc8790d349.jpg', ' Apple MacBook 12\'\' 256Gb Rose Gold (MNYM2) 2017 ', '', '42 399 грн  ', '', '', '&nbsp;', 3),
(183, 'img/notebooks/73b7ce5f54a2887480b55b7976663b30.jpg', ' Apple MacBook 12\'\' 256Gb Gold (MNYK2) 2017 ', '', '42 399 грн  ', '', '', '&nbsp;', 3),
(184, 'img/notebooks/eb4c23c6836ead66ca2ca1516d78274e.jpg', ' Apple MacBook 12\'\' 256Gb Silver (MNYH2) 2017 ', '', '42 399 грн  ', '', '', '&nbsp;', 3),
(185, 'img/notebooks/5498877e125142942ab3313ba369dea3.jpg', ' Apple MacBook 12\'\' 256Gb Space Gray (MNYF2) 2017 ', '', '42 399 грн  ', '', '', '&nbsp;', 3),
(186, 'img/notebooks/74813a9b69ae8a0c3c26e6f35f08fb05.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; (MLVP2UA/A) Silver ', '', '48 999 грн  ', '', '', '&nbsp;', 3),
(187, 'img/notebooks/a277a9010f4d0cc21640ac59a8ad2652.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; (MNQG2UA/A) Silver ', '', '52 999 грн  ', '', '', '&nbsp;', 3),
(188, 'img/notebooks/e68b0b5fb71ab2632f0ee273f54bdd57.jpg', ' Apple MacBook Pro Retina 13&quot; 256GB Space Gray (MPXT2) 2017 ', '', '48 999 грн  ', '', '', '&nbsp;', 3),
(189, 'img/notebooks/30bc4d538d0dfbf32a00c1219c88410a.jpg', ' Apple MacBook Pro Retina 13&quot; 256GB Silver (MPXU2) 2017 ', '', '48 999 грн  ', '', '', '&nbsp;', 3),
(190, 'img/notebooks/fe113ceb56d947257293532ef3927aaa.jpg', ' Apple MacBook 12\'\' 512Gb Silver (MNYJ2) 2017 ', '', '52 499 грн  ', '', '', '&nbsp;', 3),
(191, 'img/notebooks/adce965499488620105e7c352324627b.jpg', ' Apple MacBook 12\'\' 512Gb Rose Gold (MNYN2) 2017 ', '', '52 499 грн  ', '', '', '&nbsp;', 3),
(192, 'img/notebooks/62cec3286f05359276b3f4b650be53b9.jpg', ' Apple MacBook 12\'\' 512Gb Gold (MNYL2) 2017 ', '', '52 499 грн  ', '', '', '&nbsp;', 3),
(193, 'img/notebooks/791144526ae43a1cba75ac8f21f08393.jpg', ' Apple MacBook 12\'\' 512Gb Space Gray (MNYG2) 2017 ', '', '52 499 грн  ', '', '', '&nbsp;', 3),
(194, 'img/notebooks/52d38b1295ab43ad2968f2e09bba61c4.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; (MNQF2UA/A) Space Grey ', '', '58 999 грн  ', '', '', '&nbsp;', 3),
(195, 'img/notebooks/0a5ea63f0a4b79ed44e428e595157ef7.jpg', ' Apple MacBook Pro Retina Touch Bar 15&quot; (MLW72UA/A) Silver ', '', '62 999 грн  ', '', '', '&nbsp;', 3),
(196, 'img/notebooks/85a8fa477e09e392747fd0943d276e30.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Space Gray (MPXV2) 2017 ', '', '58 599 грн  ', '', '', '&nbsp;', 3),
(197, 'img/notebooks/c298e597e0bcc536b1107954171b36d4.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Silver (MPXX2) 2017 ', '', '58 599 грн  ', '', '', '&nbsp;', 3),
(198, 'img/notebooks/5750d6bd0e6ad4fe9f395131fc050a51.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Silver (MPXY2) 2017 ', '', '65 399 грн  ', '', '', '&nbsp;', 3),
(199, 'img/notebooks/fa7de9f4166704b67f5adca31e58901f.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Space Gray (MPXW2) 2017 ', '', '65 399 грн  ', '', '', '&nbsp;', 3),
(200, 'img/notebooks/9b9b9a08d43b25ce916f4f102565d201.jpg', ' Apple MacBook Pro Retina Touch Bar 15&quot; (MLW82UA/A) Silver ', '', '76 999 грн  ', '', '', '&nbsp;', 3),
(201, 'img/notebooks/a2d15124d1fd2462920b6aa9012f2d78.jpg', ' Apple MacBook Pro Touch Bar 15&quot; Silver (MPTU2) 2017 ', '', '76 299 грн  ', '', '', '&nbsp;', 3),
(202, 'img/notebooks/6ffeae27e0b752c48a9b0ce740df8a1a.jpg', ' Apple MacBook Pro Touch Bar 15&quot; 256Gb Touch Bar Space Gray (MPTR2) 2017 ', '', '76 299 грн  ', '', '', '&nbsp;', 3),
(203, 'img/notebooks/ecbbd44e0293cd48689f8d2f919b8357.jpg', ' Apple MacBook Pro Touch Bar 15&quot; 512Gb Space Gray (MPTT2) 2017 ', '', '88 499  грн  ', '', '', '&nbsp;', 3),
(204, 'img/notebooks/83316cbde9055f795362bdcb7fd18586.jpg', ' Apple MacBook Pro Touch Bar 15&quot; 512Gb Silver (MPTV2) 2017 ', '', '88 499 грн  ', '', '', '&nbsp;', 3),
(205, 'img/notebooks/88e6f92c0a05e299d1d8d828b6bfd643.jpg', ' Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/128 GB Silver ', '', '15 999 грн  ', '', '', '&nbsp;', 3),
(206, 'img/notebooks/0476ddb80e093a2b5aecc2c9cc65520c.jpg', ' Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/256 GB Silver ', '', '19 999 грн  ', '', '', '&nbsp;', 3),
(207, 'img/notebooks/550725c7565a187c40e6bbb236a9d6f0.jpg', ' Apple MacBook Air 13&quot; 128Gb (MQD32) 2017 ', '', '26 999 грн  ', '', '', '&nbsp;', 3),
(208, 'img/notebooks/57b2be44dd46a3e15717bdc4aaba490c.jpg', ' Ноутбук Huawei Matebook X WT-W09 13&quot; 4/256GB Space Gray ', '', '27 999 грн  ', '', '', '&nbsp;', 3),
(209, 'img/notebooks/0368c1b0c262b6dbf0928a54d3b96811.jpg', ' Apple MacBook Air 13&quot; (MMGG2UA/A) ', '', '32 299 грн  ', '', '', '&nbsp;', 3),
(210, 'img/notebooks/db669dfd580d3af00a37c1ff743b4718.jpg', ' Apple MacBook 12&quot; (MLHA2UA/A) Silver ', '', '32 499 грн  ', '', '', '&nbsp;', 3),
(211, 'img/notebooks/57181bbade40075a63c7f3f69bdcaf68.jpg', ' Apple MacBook 12&quot; (MMGL2UA/A) Rose Gold ', '', '32 499 грн  ', '', '', '&nbsp;', 3),
(212, 'img/notebooks/3df67ad1cd4bc37851e6332e507f621e.jpg', ' Apple MacBook 12&quot; (MLH72UA/A) Space Gray ', '', '32 499 грн  ', '', '', '&nbsp;', 3),
(213, 'img/notebooks/487f6dd421be87925995319da24711c4.jpg', ' Ноутбук Huawei Matebook X WT-W09 13&quot; 8/256GB Space Gray ', '', '32 999 грн  ', '', '', '&nbsp;', 3),
(214, 'img/notebooks/264402c2763ef9d4603539817e80a1c8.jpg', ' Apple MacBook 12&quot; (MLHC2UA/A) Silver ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(215, 'img/notebooks/9a2ab303f43971eea924ac53a0436df5.jpg', ' Apple MacBook 12&quot; (MMGM2UA/A) Rose Gold ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(216, 'img/notebooks/b3ce0214741b9359dca32c7fa27d6d70.jpg', ' Apple MacBook 12&quot; (MLH82UA/A) Space Gray ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(217, 'img/notebooks/8eafdf04ca6e980212db35b50773480e.jpg', ' Apple MacBook 12&quot; (MLHF2UA/A) Gold ', '', '33 999 грн  ', '', '', '&nbsp;', 3),
(218, 'img/notebooks/971c0f61a7b199a84ae1229c5ba47e4a.jpg', ' Apple MacBook 12&quot; (MLHE2UA/A) Gold ', '', '37 999 грн  ', '', '', '&nbsp;', 3),
(219, 'img/notebooks/0cd56294112c9efa4e1abfd15029796c.jpg', ' Apple MacBook Pro Retina 13&quot; (MLUQ2UA/A) Silver ', '', '39 999 грн  ', '', '', '&nbsp;', 3),
(220, 'img/notebooks/af39895deea2c0ccf0dc5767c5215bf7.jpg', ' Apple MacBook Pro Retina 13&quot; (MLL42UA/A) Space Grey ', '', '39 999 грн  ', '', '', '&nbsp;', 3),
(221, 'img/notebooks/5f614e73c6d7e39be342b3a0416006e7.jpg', ' Apple MacBook Pro Retina Touch Bar 13&quot; (MLH12UA/A) Space Grey ', '', '43 999 грн  ', '', '', '&nbsp;', 3),
(222, 'img/notebooks/ff649f7ba6cb7a608f528b6997adaa55.jpg', ' Apple MacBook Pro Retina Touch Bar 15&quot; (MLH32UA/A) Space Grey ', '', '62 999 грн  ', '', '', '&nbsp;', 3),
(223, 'img/notebooks/b2a12df6d37c720d62eef9e08b1340af.jpg', ' Apple MacBook Pro Retina 15.4 (MJLQ2UA/A) ', '', '63 499 грн  ', '', '', '&nbsp;', 3),
(224, 'img/notebooks/34f4725d492607b934bfaa06fea54533.jpg', ' Apple MacBook Pro Retina Touch Bar (MLH42UA/A) Space Grey ', '', '76 999 грн  ', '', '', '&nbsp;', 3),
(225, 'img/notebooks/30afcff3314fbe731dc97a9393f6ebdf.jpg', ' Ноутбук Huawei Matebook D PL-W09 15.6&quot; 4/500GB ', '', '17 999 грн  ', '', '', '&nbsp;', 3),
(226, 'img/notebooks/bf8c715ee41fe43e96a736848cdd613f.jpg', ' Ноутбук Huawei Matebook D PL-W09 15.6&quot; 8GB/1T ', '', '24 999 грн  ', '', '', '&nbsp;', 3),
(227, 'img/notebooks/67358888a5b264fa48ec0ad4c36524be.jpg', ' Ультрабук Xiaomi Mi Notebook Air 13.3&quot; Silver ', '', '26 499 грн  ', '', '', '&nbsp;', 3),
(228, 'img/notebooks/21fa4b3f0272c07a2ece25f75e387dd9.jpg', ' Apple MacBook Pro Retina 13&quot; 128GB Space Gray (MPXQ2) 2017 ', '', '40 999 грн  ', '', '', '&nbsp;', 3),
(229, 'img/notebooks/873c782c37f8148ffefeb2dd76534e78.jpg', ' Apple MacBook Pro Retina 13&quot; 128GB Silver (MPXR2) 2017  ', '', '40 999 грн  ', '', '', '&nbsp;', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
