-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Maio-2021 às 00:24
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testehavan`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `idTransacao` int(6) DEFAULT NULL,
  `nomeClie` varchar(255) DEFAULT NULL,
  `moedaOriginal` varchar(255) DEFAULT NULL,
  `moedaDestino` varchar(255) DEFAULT NULL,
  `dataOperacao` date DEFAULT NULL,
  `valorOriginal` double DEFAULT NULL,
  `valorConvertido` double DEFAULT NULL,
  `taxaCobrada` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transacoes`
--

INSERT INTO `transacoes` (`idTransacao`, `nomeClie`, `moedaOriginal`, `moedaDestino`, `dataOperacao`, `valorOriginal`, `valorConvertido`, `taxaCobrada`) VALUES
(1, 'Luis Artur Correia', 'BRL', 'USD$', '2021-05-03', 1, 5.31, 0.45),
(2, 'joão ', 'EURO', 'BRL', '2021-05-16', 1, 6.34, 1.21);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
