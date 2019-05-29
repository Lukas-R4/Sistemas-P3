-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Mar-2019 às 21:32
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veiculos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `placa` varchar(8) CHARACTER SET latin1 NOT NULL,
  `marca` varchar(100) CHARACTER SET latin1 NOT NULL,
  `anoFabricacao` int(4) DEFAULT NULL,
  `anoModelo` int(4) DEFAULT NULL,
  `categoria` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `dataCadastro` datetime DEFAULT NULL,
  `automovel` varchar(60) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `placa`, `marca`, `anoFabricacao`, `anoModelo`, `categoria`, `dataCadastro`, `automovel`) VALUES
(2, 'SSP-1554', 'Champion', 2005, 2006, 'Estadual', NULL, 'carro'),
(3, 'SSA-5654', 'Honda', 2009, 2010, 'Particular', NULL, 'jeep'),
(29, 'JOB-6596', 'CHAMPION', 2000, 2001, 'Estadual', NULL, 'mobilete'),
(36, 'sasasa', 'CHAMPION', 2020, 2001, 'Particular', '2019-03-23 14:20:24', 'carro'),
(37, 'ABC-2323', 'CHAMPION', 2000, 2001, 'Particular', '2019-03-24 01:28:35', NULL),
(38, 'ABC-2323', 'HONDA', 2020, 2011, 'Estadual', '2019-03-24 01:29:34', NULL),
(39, 'sasasa', 'HONDA', 2020, 2001, 'Particular', '2019-03-24 01:30:41', NULL),
(40, 'ABC-2323', 'HONDA', 2000, 123, 'Particular', '2019-03-24 01:32:50', NULL),
(41, 'ABC-2323', 'CHAMPION', 2020, 2011, 'Estadual', '2019-03-24 01:33:12', NULL),
(42, 'sasasa', 'sasasa', 2000, 2020, 'Particular', '2019-03-24 01:37:40', NULL),
(43, 'sasasa', 'sasasa', 2000, 2020, 'Particular', '2019-03-24 01:38:35', NULL),
(44, 'sasasa', 'sasasa', 2000, 2020, 'Particular', '2019-03-24 01:38:48', NULL),
(45, 'sasasa', 'sasasa', 2000, 2020, 'Particular', '2019-03-24 01:39:36', NULL),
(46, 'sasasa', 'sasasa', 2000, 2020, 'Particular', '2019-03-24 01:39:43', NULL),
(47, 'sasasa', 'sasasa', 2000, 2020, 'Particular', '2019-03-24 01:40:03', NULL),
(48, 'KJS-2837', 'Ford', 2010, 2011, 'Estadual', '2019-03-24 01:41:29', NULL),
(49, '55555555', 'sasasa', 2020, 2001, 'Estadual', '2019-03-24 01:42:58', NULL),
(50, '55555555', 'HONDA', 2020, 2011, 'Particular', '2019-03-24 03:57:11', NULL),
(51, 'ABC-1354', 'HONDA', 2010, 2011, 'PÃºblico', '2019-03-24 13:55:46', NULL),
(52, 'JPA-1516', 'HONDA', 2010, 2011, 'PÃºblico', '2019-03-24 14:08:43', NULL),
(53, 'ABC-2323', 'CHAMPION', 2000, 2020, 'Publico', '2019-03-24 14:10:39', NULL),
(54, 'mng-9829', 'CHAMPION', 2005, 2006, 'Publico', '2019-03-24 14:11:22', NULL),
(55, 'ABC-2323', 'HONDA', 2005, 2006, 'Publico', '2019-03-24 14:11:39', NULL),
(56, 'ABB-6565', 'CHAMPION', 2020, 123, 'Publico', '2019-03-24 14:11:52', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorioacesso`
--

CREATE TABLE `relatorioacesso` (
  `id` int(11) NOT NULL,
  `loginafetado` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `dataacesso` datetime NOT NULL,
  `datasaida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `relatorioacesso`
--

INSERT INTO `relatorioacesso` (`id`, `loginafetado`, `dataacesso`, `datasaida`) VALUES
(32, 'admin', '2019-03-23 23:01:20', '2019-03-23 23:21:00'),
(33, 'admin', '2019-03-23 23:09:59', '0000-00-00 00:00:00'),
(34, 'a', '2019-03-23 23:13:27', '2019-03-23 23:38:05'),
(35, 'a', '2019-03-23 23:16:38', '0000-00-00 00:00:00'),
(36, 'admin', '2019-03-23 23:19:36', '0000-00-00 00:00:00'),
(37, 'a', '2019-03-23 23:21:04', '2019-03-23 23:39:47'),
(38, 'subadm', '2019-03-23 23:39:52', '2019-03-23 23:40:04'),
(39, 'admin', '2019-03-23 23:40:06', '2019-03-23 23:43:37'),
(40, 'admin', '2019-03-23 23:43:58', '2019-03-23 23:47:07'),
(41, 'admin', '2019-03-23 23:47:09', '2019-03-23 23:47:13'),
(42, 'a', '2019-03-23 23:47:15', '2019-03-23 23:47:18'),
(43, 'subadm', '2019-03-23 23:47:22', '2019-03-23 23:47:26'),
(44, 'admin', '2019-03-23 23:47:31', '2019-03-24 01:13:14'),
(45, 'admin', '2019-03-24 01:22:19', '2019-03-24 01:41:06'),
(46, 'admin', '2019-03-24 01:41:09', '2019-03-24 02:51:58'),
(47, 'a', '2019-03-24 02:52:00', '2019-03-24 02:52:11'),
(48, 'subadm', '2019-03-24 02:52:26', '2019-03-24 03:56:27'),
(49, 'admin', '2019-03-24 03:56:41', '2019-03-24 03:58:21'),
(50, 'admin', '2019-03-24 13:31:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatoriocadastrousuario`
--

CREATE TABLE `relatoriocadastrousuario` (
  `id` int(11) NOT NULL,
  `loginafetado` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `emailafetado` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `dataCriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `relatoriocadastrousuario`
--

INSERT INTO `relatoriocadastrousuario` (`id`, `loginafetado`, `emailafetado`, `dataCriacao`) VALUES
(1, 'ronaldofariass', 'ronaldo@gmail.com', '0000-00-00 00:00:00'),
(2, 'rfarias', 'rfarias@gmail.com', '2019-03-24 01:22:00'),
(3, 'ajjhjkjkjk', 'isabellopes@gmail.com', '2019-03-24 03:58:56'),
(4, 'anderson', 'anderson@gmail.com', '2019-03-24 13:30:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatoriocadastroveiculo`
--

CREATE TABLE `relatoriocadastroveiculo` (
  `id` int(11) NOT NULL,
  `placaafetada` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `loginafetado` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `relatoriocadastroveiculo`
--

INSERT INTO `relatoriocadastroveiculo` (`id`, `placaafetada`, `dataCriacao`, `loginafetado`) VALUES
(1, 'ABC-2323', '0000-00-00 00:00:00', ''),
(2, 'ABC-2323', '2019-03-24 01:33:12', ''),
(3, '55555555', '2019-03-24 01:42:58', 'admin'),
(4, '55555555', '2019-03-24 03:57:11', 'admin'),
(5, 'ABC-1354', '2019-03-24 13:55:46', 'admin'),
(6, 'JPA-1516', '2019-03-24 14:08:43', 'admin'),
(7, 'ABC-2323', '2019-03-24 14:10:39', 'admin'),
(8, 'mng-9829', '2019-03-24 14:11:22', 'admin'),
(9, 'ABC-2323', '2019-03-24 14:11:39', 'admin'),
(10, 'ABB-6565', '2019-03-24 14:11:52', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorioexclusao`
--

CREATE TABLE `relatorioexclusao` (
  `id` int(11) NOT NULL,
  `automovelafetado` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataExclusao` datetime NOT NULL,
  `marcaafetada` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginafetado` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `relatorioexclusao`
--

INSERT INTO `relatorioexclusao` (`id`, `automovelafetado`, `dataExclusao`, `marcaafetada`, `loginafetado`) VALUES
(1, '7878', '2019-03-12 02:00:00', NULL, ''),
(2, '2019-03-23 19:55:26', '0000-00-00 00:00:00', NULL, ''),
(3, 'MMM-1111', '2019-03-23 19:56:10', NULL, ''),
(4, 'sasasa', '2019-03-23 19:56:49', NULL, ''),
(5, 'sasasa', '2019-03-23 19:57:20', NULL, ''),
(6, 'sasasa', '2019-03-23 19:57:37', NULL, ''),
(7, 'sasasa', '2019-03-23 19:57:38', NULL, ''),
(8, 'sasasa', '2019-03-23 19:57:39', NULL, ''),
(9, 'sasasa', '2019-03-23 15:57:49', NULL, ''),
(10, 'sasasa', '2019-03-23 15:57:56', NULL, ''),
(11, 'sasasa', '2019-03-23 15:58:02', NULL, ''),
(12, 'sasasa', '2019-03-23 15:58:07', NULL, ''),
(13, '', '2019-03-23 16:04:33', NULL, ''),
(14, '', '2019-03-23 16:04:56', NULL, ''),
(15, '', '2019-03-23 16:05:43', NULL, ''),
(16, '', '2019-03-23 16:05:54', NULL, ''),
(17, '', '2019-03-23 16:07:12', NULL, ''),
(18, '', '2019-03-23 16:08:25', NULL, ''),
(19, 'carro', '2019-03-23 16:08:45', NULL, ''),
(20, 'carro', '2019-03-23 16:08:56', NULL, ''),
(21, 'carro', '2019-03-23 16:09:01', NULL, ''),
(22, 'moto', '2019-03-23 16:09:20', NULL, ''),
(23, 'moto', '2019-03-23 16:10:01', NULL, ''),
(24, 'carro', '2019-03-23 16:16:52', 'CHAMPION', ''),
(25, 'carro', '2019-03-24 02:35:09', 'sasasa', ''),
(26, 'carro', '2019-03-24 02:36:51', 'Honda', 'admin'),
(27, 'onibus', '2019-03-24 03:54:31', 'HONDINHA', 'subadm'),
(28, 'moto', '2019-03-24 03:57:39', 'Champion', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `token`
--

INSERT INTO `token` (`id`, `tipo`) VALUES
(1, 'UNIPE2019'),
(2, 'ADMIN2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login` varchar(6) NOT NULL,
  `senha` varchar(6) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `cargo` varchar(60) NOT NULL,
  `prioridade` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `login`, `senha`, `token`, `cargo`, `prioridade`) VALUES
(10, 'Isaque Lopes', 'isaquelopes@gmail.com', 'admin', 'admin', 'admin', 'Gerente de desenvolvimento web ', 'Admin'),
(11, 'Alan Dias', 'alandias@gmail.com', 'subadm', 'subadm', 'subadmin', 'Gerente banco de dados', 'Sub Admin'),
(13, 'admin', 'admin@gmail.com', 'a', 'admin', 'unipe2019', 'Cafeteiro', 'Usuario comum'),
(14, 'Ronaldo Farias', 'ronaldo@gmail.com', 'ronald', '123', 'unipe', 'Presidente da empresa', 'Admin'),
(17, 'Ronaldo Farias MendonÃ§a', 'rfarias@gmail.com', 'rfaria', '123', 'unipe', 'Presidente da empresa', 'Admin'),
(19, 'JoÃ£o', 'isabellopes@gmail.com', 'ajjhjk', '123', 'unipe', '', ''),
(20, 'anderson', 'anderson@gmail.com', 'anders', '123', 'unipe', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatorioacesso`
--
ALTER TABLE `relatorioacesso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatoriocadastrousuario`
--
ALTER TABLE `relatoriocadastrousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatoriocadastroveiculo`
--
ALTER TABLE `relatoriocadastroveiculo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatorioexclusao`
--
ALTER TABLE `relatorioexclusao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `relatorioacesso`
--
ALTER TABLE `relatorioacesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `relatoriocadastrousuario`
--
ALTER TABLE `relatoriocadastrousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `relatoriocadastroveiculo`
--
ALTER TABLE `relatoriocadastroveiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `relatorioexclusao`
--
ALTER TABLE `relatorioexclusao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
