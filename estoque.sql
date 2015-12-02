-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 02/12/2015 às 05:26
-- Versão do servidor: 10.0.17-MariaDB
-- Versão do PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estoquedb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(10) NOT NULL COMMENT 'Primary Key.',
  `fabricante` varchar(100) NOT NULL DEFAULT 'N/A ' COMMENT 'Nome do fabricante.',
  `tipo_uni` varchar(50) NOT NULL DEFAULT 'pç' COMMENT 'tipo de unidade.',
  `preco_compra` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço da compra.',
  `preco` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'preço final do produto.',
  `quantidade` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'quantidade em estoque.',
  `descricao` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'descricao do produto.',
  `tipo` varchar(50) NOT NULL DEFAULT '0.00' COMMENT 'tipo do produto (exe:vesturario, equipamento,diversos).',
  `nome` varchar(50) NOT NULL DEFAULT '' COMMENT 'tipo do produto (nome do produto).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela Estoque';

--
-- Fazendo dump de dados para tabela `estoque`
--

INSERT INTO `estoque` (`id`, `fabricante`, `tipo_uni`, `preco_compra`, `preco`, `quantidade`, `descricao`, `tipo`, `nome`) VALUES
(1, 'fabricante 2', 'pç', '201.0', '10.0', '10', 'descricao 2', 'tipo 2', 'Produto 1 de novo'),
(2, 'fabricante', 'null', '0.0', '0.0', '1', 'descricao', 'Nome', 'Produto 2'),
(5, 'fabricante', 'pç', '0.0', '0.0', '1', 'descricao', 'Nome', 'Nome'),
(7, 'fabricante', 'pç', '0.0', '0.0', '1', 'descricao', 'Nome', 'Nome'),
(8, 'fabricante', 'pç', '0.0', '0.0', '1', 'descricao', 'Nome', 'Nome'),
(9, 'fabricante', 'pç', '0.0', '0.0', '1', 'descricao', 'pç', 'Nome'),
(10, 'fabricante', 'pç', '0.0', '0.0', '1', 'descricao', 'pç', 'Nome'),
(13, 'fabricante', 'pç', '0.0', '0.0', '1', 'descricao', 'padrao', 'Nome'),
(14, 'dfgdg', 'pc', '1.0', '10.0', '2', 'fffd', 'ffddf', 'gdxf'),
(16, 'fabricante', 'uni', '0.0', '0.0', '1', 'descricao', 'padrao', 'Nome'),
(17, 'fabricante', 'uni', '0.0', '0.0', '1', 'descricao', 'padrao', 'Nome');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key.', AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
