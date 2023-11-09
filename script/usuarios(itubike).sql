-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 12:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usuarios`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(4, 'roque', 'roselli', 'roqueroselli', '', '6e780173e5836d870a13a5a4f88c000cce071921', 1, 'NO'),
(5, 'maria', 'Lezcano', 'maria', 'maria@gmail.com', '$2y$10$sLIk4kDvk3SHvhFjDKwdSubEtnqDFHFuzLtNo8J9HmfGPU6CeFYk2', 2, 'NO'),
(6, 'rubious', 'Lezcano', 'rubious', 'rubious@gmail.com', '$2y$10$6c41zvjmhrovN5ZzrONFJe7kqWSPwEPMjX3n1Q1cJDrNGd5lF9mem', 2, 'NO'),
(7, 'lucas', 'Lezcano', 'lucas', 'lucas@gmail.com', '$2y$10$VtxHGXogcUmMbxSVxlk3wuv62JVTw.qIL8tO49/Yv0x/b33kzMwj6', 2, 'NO'),
(9, 'florencia', 'florencia', 'flrencia', 'florencia@gmail.com', '$2y$10$ej9Ypgx.7.fNoARIaKwSp.r7bfAtA/kUxjMe7an4S2Gwupg7Svfau', 2, 'NO'),
(10, 'ilda', 'lezcano', 'ilda', 'ilda@gmail.com', '$2y$10$95.JlS9xpWcCclt8xsihiuKBucCPfp.r6DZzOBokiXLbUmZ.mMlWi', 2, 'NO'),
(11, 'rogelio', 'lezcano', 'rogelio', 'rogelio@gmail.com', '$2y$10$dVorF6BAGyu4Uust2cVNT.I1.dutTEpHAsHM.NtZyw6AoBgf4eYMi', 2, 'NO'),
(12, 'brad', 'brad', 'brad', 'brad@gmail.com', '$2y$10$B5qnzROOLCBpCNgpEd//6uPhebWB9m5mjrv989eheV0ntRx3yqVGW', 2, 'NO'),
(13, 'brandon', 'brad', 'brad', 'brad@gmail.com', '3d573672bf1cf48a6267154b4997db68d44911a1', 2, 'NO'),
(14, 'ricardo', 'rivas', 'brad', 'brad@gmail.com', '3d573672bf1cf48a6267154b4997db68d44911a1', 2, 'NO'),
(15, 'mechi', 'bosch', 'brad', 'brad@gmail.com', '3d573672bf1cf48a6267154b4997db68d44911a1', 2, 'NO'),
(16, 'roquetragasable', 'barberan', 'silvanita', 'sil@gmail.com', '72d215023d279826050866da8b2d1e1313abc44f', 2, 'NO'),
(17, 'ariel', 'ortega', 'burrito', 'roque@gmail.com', '6e780173e5836d870a13a5a4f88c000cce071921', 1, 'NO'),
(18, 'ariel', 'ortega', 'burrito', 'roque@gmail.com', '6e780173e5836d870a13a5a4f88c000cce071921', 1, 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
