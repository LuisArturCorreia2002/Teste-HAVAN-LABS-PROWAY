-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Maio-2021 às 19:58
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
  `idTransacao` int(6) NOT NULL,
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
(2, 'joão ', 'EURO', 'BRL', '2021-05-16', 1, 6.34, 1.21),
(6, 'Rodrigo Oliveira Silva', 'BRL', 'EURO', '2021-05-19', 1, 200, 0.99),
(7, 'teste', 'EURO', 'BRL', '2021-05-19', 1, 6.311, 5),
(9, 'lucas', 'BRL', 'EURO', '2021-05-03', 1, 300, 1),
(10, 'luiza', 'YENE', 'BRL', '2021-05-18', 1000, 10000, 5),
(11, 'José ', 'BRL', 'USD$', '2021-05-12', 10, 2, 1.99),
(12, 'asas', 'EURO', 'BRL', '2021-05-17', 250, 3000, 5),
(13, 'José Silveira', 'BRL', 'EURO', '2021-05-20', 1, 0.5, 1),
(15, 'Julia ', 'EURO', 'USD$', '2021-05-16', 1000, 188.33, 1.99),
(16, 'teste', 'EURO', 'BRL', '2021-05-20', 1000, 250, 0.45);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`idTransacao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `idTransacao` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
