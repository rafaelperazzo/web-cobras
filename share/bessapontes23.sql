-- Adminer 4.8.1 MySQL 5.5.5-10.2.32-MariaDB-log dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `cobras`;
CREATE DATABASE `cobras` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cobras`;

DROP TABLE IF EXISTS `COBRA`;
CREATE TABLE `COBRA` (
  `idCOBRA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `familia` varchar(30) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `peconhenta` tinyint(4) NOT NULL,
  `idUSUARIO` int(10) unsigned NOT NULL,
  `grupo` int(11) DEFAULT 8,
  `idDenticao` int(11) DEFAULT 5,
  `tam_max` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`idCOBRA`),
  UNIQUE KEY `idCOBRA_UNIQUE` (`idCOBRA`),
  KEY `fk_COBRA_USUARIO1_idx` (`idUSUARIO`),
  KEY `idDenticao` (`idDenticao`),
  KEY `grupo` (`grupo`),
  CONSTRAINT `fk_COBRA_USUARIO1` FOREIGN KEY (`idUSUARIO`) REFERENCES `USUARIO` (`idUSUARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupo` FOREIGN KEY (`grupo`) REFERENCES `FAMILIA` (`idFam`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idDenticao` FOREIGN KEY (`idDenticao`) REFERENCES `DENTICAO` (`idDenticao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `COBRA` (`idCOBRA`, `familia`, `especie`, `peconhenta`, `idUSUARIO`, `grupo`, `idDenticao`, `tam_max`) VALUES
(1,	'Anilius',	'scytale',	0,	2,	1,	2,	110.0),
(2,	'Apostolepis',	'cearensis',	0,	2,	4,	1,	40.0),
(3,	'Atractus',	'ronnie',	0,	2,	4,	2,	NULL),
(4,	'Boa',	'constrictor',	0,	2,	2,	2,	NULL),
(5,	'Bothrops',	'atrox',	1,	2,	7,	3,	NULL),
(6,	'Bothrops',	'erythromelas',	1,	2,	7,	3,	NULL),
(7,	'Chironius',	'flavolineatus',	0,	2,	3,	2,	140.0),
(8,	'Corallus',	'hortulanus',	0,	2,	2,	2,	NULL),
(9,	'Dipsas',	'mikanii',	0,	2,	4,	2,	50.0),
(10,	'Drymoluber',	'brazili',	0,	2,	3,	2,	NULL),
(11,	'Drymoluber',	'dichrous',	0,	2,	3,	2,	NULL),
(12,	'Epicrates',	'assisi',	0,	2,	2,	2,	NULL),
(13,	'Epictia',	'borapeliotes',	0,	2,	6,	2,	15.0),
(14,	'Erythrolamprus',	'poecilogyrus',	0,	2,	4,	2,	80.0),
(15,	'Erythrolamprus',	'viridis',	0,	2,	4,	5,	NULL),
(16,	'Helicops',	'angulatus',	0,	2,	4,	2,	100.0),
(17,	'Imantodes',	'cenchoa',	0,	2,	8,	5,	NULL),
(18,	'Leptodeira',	'annulata',	0,	2,	4,	5,	NULL),
(19,	'Lygophis',	'dilepis',	0,	2,	4,	5,	NULL),
(20,	'Micrurus',	'ibiboboca',	1,	2,	5,	4,	NULL),
(22,	'Oxybelis',	'aeneus',	0,	2,	3,	1,	NULL),
(23,	'Oxyrhopus',	'trigeminus',	0,	2,	4,	1,	NULL),
(24,	'Philodryas',	'nattereri',	0,	2,	4,	1,	NULL),
(25,	'Philodryas',	'olfersii',	0,	2,	4,	1,	NULL),
(26,	'Pseudoboa',	'nigra',	0,	2,	4,	1,	NULL),
(27,	'Psomophis',	'joberti',	0,	2,	4,	2,	40.0),
(28,	'Taeniophallus',	'occipitalis',	0,	2,	4,	2,	NULL),
(29,	'Tantilla',	'melanocephala',	0,	2,	3,	1,	30.0),
(30,	'Thamnodynastes',	'almae',	0,	2,	4,	1,	NULL),
(31,	'Thamnodynastes',	'sertanejo',	0,	2,	4,	1,	NULL),
(32,	'Thamnodynastes',	'phoenix',	0,	2,	4,	1,	NULL),
(33,	'Spilotes',	'pullatus',	0,	2,	3,	2,	NULL),
(34,	'Xenodon',	'merremii',	0,	2,	4,	2,	NULL),
(35,	'Spilotes',	'pullatus',	0,	1,	3,	2,	NULL),
(36,	'Trilepida',	'brasiliensis',	0,	1,	6,	2,	15.0),
(37,	'Boiruna',	'sertaneja',	0,	1,	4,	1,	190.0),
(39,	'Crotalus',	'durissus',	1,	1,	7,	3,	NULL),
(40,	'Helicops',	'leopardinus',	0,	1,	4,	2,	100.0),
(41,	'Leptophis',	'ahaetulla',	0,	1,	3,	1,	NULL),
(43,	'Liophis',	'reginae',	0,	1,	4,	2,	60.0),
(44,	'Liophis',	'taeniogaster',	0,	1,	4,	5,	NULL);

DROP TABLE IF EXISTS `COBRA_NOME_POP`;
CREATE TABLE `COBRA_NOME_POP` (
  `idCOBRA` int(10) unsigned NOT NULL,
  `nome` varchar(50) NOT NULL,
  KEY `idCOBRA` (`idCOBRA`),
  CONSTRAINT `fk_COBRA_NOME_POP_COBRA` FOREIGN KEY (`idCOBRA`) REFERENCES `COBRA` (`idCOBRA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `COBRA_NOME_POP` (`idCOBRA`, `nome`) VALUES
(1,	'Cobra-Cega'),
(1,	'Cobra-Coral'),
(1,	'Cobra-Coral-Falsa'),
(1,	'Cobra-de-Duas-Cabe??as'),
(1,	'Coral'),
(1,	'Coral-Falsa'),
(1,	'Falsa-Coral'),
(6,	'Cabe??a-de-Capanga'),
(6,	'Jararaca'),
(6,	'Jararaca-Avermelhada'),
(6,	'Jararaca-Malha-de-Cascavel'),
(6,	'Jararaca-da-Seca'),
(6,	'Jararaca-da-Caatinga'),
(6,	'Jararaca-do-Sert??o'),
(6,	'Jararaca-Rosada'),
(6,	'Jararaca-Vermelha'),
(6,	'Jararaquinha'),
(6,	'Jararacussu'),
(6,	'Jararaca-da-Folha-Seca'),
(2,	'Cobra-de-Ferr??o'),
(2,	'Cobra-Rainha'),
(2,	'Coral-Falsa'),
(2,	'Coralzinha'),
(2,	'Falsa-Coral'),
(3,	'Cobra-da-Terra'),
(4,	'Anaconda'),
(4,	'Boiu??u'),
(4,	'Cobra-de-Veado'),
(4,	'Jauacanga'),
(4,	'Jiboia'),
(4,	'Jiboia-Cinzenta'),
(4,	'Jiboia-do-Cerrado'),
(4,	'Salamanta-Boi'),
(4,	'Sua??u'),
(5,	'Acuamb??ia'),
(5,	'Boca-Podre'),
(5,	'Camb??ua'),
(5,	'Cai??ara'),
(5,	'Cuamboia'),
(5,	'Jaracu??u'),
(5,	'Jararaca'),
(5,	'Jararaca-do-Rabo-Branco'),
(5,	'Jararacarana'),
(5,	'Surucucu'),
(5,	'Mapanare'),
(5,	'Surucucurana'),
(7,	'Acutimboia'),
(7,	'Acutioia'),
(7,	'Boitip??'),
(7,	'Caninana-Marrom-Listrada'),
(7,	'Cip??'),
(7,	'Cobra-Cip??'),
(7,	'Cobra-Espada'),
(7,	'Sacaiboia'),
(8,	'Boitinga'),
(8,	'Cobra-de-Veado'),
(8,	'Cobra-Veadeira'),
(8,	'Salamanta'),
(8,	'Sua??uboia'),
(8,	'Veadeira'),
(9,	'Come-Lesma'),
(9,	'Dorme-Dorme'),
(9,	'Dormideira'),
(9,	'Dormideira-de-Jardim'),
(9,	'Dorminhoca'),
(9,	'Jaracu??u-Dormideira'),
(9,	'Jararaca-Pregui??osa'),
(9,	'Papa-Lesma'),
(9,	'Urut??-P??va'),
(9,	'Urutuzinho-Pequeno'),
(10,	'Cobra-Cip??'),
(11,	'Cobra-Cip??'),
(11,	'Corredeira'),
(11,	'Papa-Rato'),
(11,	'Rateira'),
(12,	'Cobra-Arco-??ris'),
(12,	'Jiboia-Arco-??ris'),
(12,	'Jiboia'),
(12,	'Salamanta'),
(12,	'Serpente-de-Veado'),
(12,	'Serpente-Furta-Cor'),
(12,	'Ua??ub??i'),
(13,	'Cobra-Chumbo'),
(13,	'Cobra-da-Terra'),
(13,	'Cobra-de-Chumbinho'),
(14,	'Boipeva'),
(14,	'Casco-de-Burro'),
(14,	'Cobra-Corredeira'),
(14,	'Cobra-de-Ca??ote'),
(14,	'Cobra-de-Ca??ote-Amarela'),
(14,	'Cobra-de-Capim'),
(14,	'Cobra-de-Jardim'),
(14,	'Cobra-de-Lixo'),
(14,	'Cobra-do-Capim'),
(14,	'Cobra-do-Lixo'),
(14,	'Cobra-Lisa'),
(14,	'Cobra-Verde'),
(14,	'Cobra-Verde-Argentina'),
(14,	'Cobra-Verde-do-Capim'),
(14,	'Coral-Falsa'),
(14,	'Falsa-Coral'),
(14,	'Jararaquinha'),
(14,	'Parelheira'),
(14,	'Pe??a-Nova'),
(14,	'Rainha'),
(15,	'Cobra-Verde'),
(15,	'Cobra-Verde-da-Caatinga'),
(16,	'Surucucurana'),
(16,	'Trairamboia'),
(17,	'Cip??-Olhuda'),
(17,	'Cobra-Cip??'),
(17,	'Cobra-Fio'),
(17,	'Dorme-Dorme'),
(17,	'Dormideira'),
(17,	'Dorminhoca'),
(17,	'Jararaquinha'),
(17,	'Papa-Lesma'),
(18,	'Cacaual'),
(18,	'Cobra-Cip??'),
(18,	'Cobra-Olho-de-Gato'),
(18,	'Dormideira'),
(18,	'Jararaca'),
(18,	'Jararaca-de-Parede'),
(18,	'Jararaca-de-Patioba'),
(18,	'Jararaca-de-Tabuleiro'),
(18,	'Jararaca-do-Rabo-Fino'),
(18,	'Jararaquinha'),
(18,	'Jiboia-Dormideira'),
(18,	'Olho-de-Gato'),
(18,	'Rabo-Fino'),
(19,	'Cobra-de-Cadar??o'),
(19,	'Cobra-de-Ca??ote'),
(19,	'Cobra-de-Listra-Vermelha'),
(19,	'Corre-Campo'),
(20,	'Cobra-Cor??'),
(20,	'Cobra-Coral'),
(20,	'Cobra-de-Coral'),
(20,	'Coral'),
(20,	'Coral-Verdadeira'),
(20,	'Ibiboboca'),
(22,	'Bicuda'),
(22,	'Boitiaboia'),
(22,	'Cip??'),
(22,	'Cip??-Bicuda'),
(22,	'Cobra-Bicuda'),
(22,	'Cobra-Cip??'),
(22,	'Cobra-Cip??-Bicuda'),
(22,	'Cobra-Flecha'),
(23,	'Bacor??'),
(23,	'Boi-Cor??'),
(23,	'Boicor??'),
(23,	'Cobra-Coral'),
(23,	'Cobra-Coral-Falsa'),
(23,	'Cobra-de-Coral'),
(23,	'Coral'),
(23,	'Coral-Falsa'),
(23,	'Falsa-Coral-de-Barriga-Branca'),
(23,	'Falsa-Coral-Tricolor'),
(24,	'Cobra-Cip??'),
(24,	'Corre-Campo'),
(24,	'Surradeira'),
(24,	'Tabuleira'),
(25,	'Boiubu'),
(25,	'Bojobi'),
(25,	'Caninana'),
(25,	'Cip??-Verde'),
(25,	'Cobra-Cip??'),
(25,	'Cobra-Cip??-Comum'),
(25,	'Cobra-Cip??-Listrada'),
(25,	'Cobra-Cip??-Verde'),
(25,	'Cobra-Corredeira'),
(25,	'Cobra-Fac??o'),
(25,	'Cobra-Papagaio'),
(25,	'Cobra-Verde'),
(25,	'Cobra-Verde-Lisa'),
(25,	'Corre-Campo'),
(25,	'Papagaia'),
(25,	'Papa-Pinto'),
(26,	'Boiru'),
(26,	'Boi??na'),
(26,	'Cobra-de-Leite'),
(26,	'Cobra-Preta'),
(26,	'Coral-Falsa'),
(26,	'Falsa-Coral'),
(26,	'Limpa-Mato'),
(26,	'Limpa-Pasto'),
(26,	'Mamadeira'),
(26,	'Mo??urana'),
(26,	'Mu??urana'),
(26,	'Mussurana'),
(26,	'Mussurana-Limpa-Campo'),
(27,	'Cobra-Corredeira'),
(28,	'Cobra-Corredeira'),
(28,	'Cobra-Capim'),
(28,	'Cobra-do-Capim'),
(28,	'Cobra-do-Folhi??o'),
(28,	'Cobra-Rainha'),
(28,	'Corre-Campo'),
(28,	'Corredeira-do-Campo'),
(28,	'Corredeira-Pintada'),
(28,	'Corredeirinha'),
(28,	'Jararaquinha'),
(29,	'Cinco-Minutos'),
(29,	'Cobra-da-Terra'),
(29,	'Cobra-do-Folhi??o'),
(29,	'Cobra-Rainha'),
(29,	'Coral-Falsa'),
(29,	'Falsa-Cabe??a-Preta'),
(29,	'Falsa-Coral'),
(29,	'Onze-Horas'),
(29,	'Tantila'),
(30,	'Jararaca'),
(30,	'Jararaca-Falsa'),
(30,	'Jararaquinha'),
(31,	'Cip??-do-Papo-Amarelo'),
(31,	'Jararaquinha'),
(32,	'Cobra-Espada'),
(32,	'Corre-Campo'),
(33,	'Araboia'),
(33,	'Cainana'),
(33,	'Cainana-Flor-de-Algod??o'),
(33,	'Cainana-Tei??'),
(33,	'Caninana'),
(33,	'Cobra-Tigre'),
(33,	'Cobra-Voadora'),
(33,	'Jacanin??'),
(33,	'Malha-de-Tei??'),
(33,	'Papa-Ovo'),
(33,	'Papa-Pinto'),
(33,	'Yacanin??'),
(34,	'Achatadeira'),
(34,	'Boca-de-Ca??apa'),
(34,	'Boca-de-Capanga'),
(34,	'Boipeba'),
(34,	'Boipeva'),
(34,	'Boipeva-Comum'),
(34,	'Boipeva-do-Campo'),
(34,	'Boipeva-Grande'),
(34,	'Cabe??a-de-Patrona'),
(34,	'Capit??o-do-Campo'),
(34,	'Capit??o-do-Mato'),
(34,	'Cobra-Chata'),
(34,	'Corre-Campo'),
(34,	'Cotiara'),
(34,	'Cururuboia'),
(34,	'Esparradeira'),
(34,	'Falsa-Jararaca'),
(34,	'Focinho-de-Cachorro'),
(34,	'Goipeba'),
(34,	'Goipeva'),
(34,	'Jararaca-Malha-de-Cascavel'),
(34,	'Jaracambeva'),
(34,	'Jaracu??u'),
(34,	'Jaracu??u-Capit??o'),
(34,	'Jaracu??u-de-Tapiti'),
(34,	'Jaracu??u-do-Brejo'),
(34,	'Jaracu??u-Dourado'),
(34,	'Jaracu??u-N??o-Venenoso'),
(34,	'Jaracu??u-Tapete'),
(34,	'Jararaca'),
(34,	'Jararaca-Amarela'),
(34,	'Jararacambeva'),
(34,	'Jararacu??u-Bolacha'),
(34,	'Jararacu??u-Tapiti'),
(34,	'Jeric??'),
(34,	'Jeriqu??'),
(34,	'Juruco??'),
(34,	'Malha-de-Sapo'),
(34,	'Mata-Boi'),
(34,	'Pepeua'),
(34,	'Pepeva'),
(34,	'Surucucu-Cascuda'),
(34,	'Urutu'),
(34,	'Urutu-Amarelo'),
(34,	'Urutu-Falsa'),
(34,	'Urutu-Preto'),
(34,	'Urutu-T??bua'),
(34,	'Urutu-Tapete'),
(35,	'Araboia'),
(35,	'Cainana'),
(35,	'Cainana-Flor-de-Algod??o'),
(35,	'Cainana-Tei??'),
(35,	'Caninana'),
(35,	'Cobra-Tigre'),
(35,	'Cobra-Voadora'),
(35,	'Jacanin??'),
(35,	'Malha-de-Tei??'),
(35,	'Papa-Ovo'),
(35,	'Papa-Pinto'),
(35,	'Yacanin??'),
(36,	'Cobra-Cega'),
(36,	'Cobra-de-Chumbinho'),
(37,	'Cobra-de-Leite'),
(37,	'Cobra-Preta'),
(37,	'Limpa-Mato'),
(37,	'Mu??urana'),
(37,	'Mussurana'),
(39,	'Boicinim'),
(39,	'Boicininga'),
(39,	'Boi??ununga'),
(39,	'Boiquira'),
(39,	'Cascabel'),
(39,	'Cascav??'),
(39,	'Cascavel'),
(39,	'Cascavel-de-Quatro-Ventas'),
(39,	'Cascavelha'),
(39,	'Cobra-de-Chocalho'),
(39,	'Cobra-de-Guizo'),
(39,	'Cobra-do-Chocalho'),
(39,	'Marac??'),
(39,	'Maracaboia'),
(39,	'Maracamboia'),
(39,	'Surucucu-Cascavel'),
(41,	'Azul??o-Boia'),
(41,	'Boiubu'),
(41,	'Cobra-Cip??'),
(41,	'Cobra-Jerico??'),
(41,	'Cobra-Para??so'),
(41,	'Cobra-Papagaio'),
(41,	'Cobra-Verde'),
(41,	'Jerico??'),
(43,	'Cobra-Verde'),
(43,	'Jabutuboia'),
(43,	'Jararaquinha'),
(43,	'Parelheira'),
(44,	'Cobra-Coral (juvenil)'),
(44,	'Cobra-Espada'),
(44,	'Jararaquinha'),
(44,	'Parelheira'),
(44,	'Surucucu-de-Fogo'),
(1,	'Cobra-D\'??gua'),
(14,	'Cobra-D\'??gua'),
(15,	'Cobra-D\'??gua'),
(16,	'Cobra-D\'??gua'),
(16,	'Jararaca-D\'??gua'),
(19,	'Cobra-D\'??gua'),
(40,	'Cobra-D\'??gua'),
(40,	'Jararaca-D\'??gua'),
(43,	'Cobra-D\'??gua'),
(44,	'Cobra-D\'??gua');

DROP TABLE IF EXISTS `DENTICAO`;
CREATE TABLE `DENTICAO` (
  `idDenticao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`idDenticao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `DENTICAO` (`idDenticao`, `nome`, `descricao`) VALUES
(1,	'Opist??glifa',	'A denti????o opist??glifa ?? caracterizada pela presen??a de dentes capazes de inocular o veneno, por??m encontrados na regi??o posterior da boca das serpentes. Assim como na denti????o proter??glifa, os dentes apresentam um sulco por onde o veneno escorre. Em virtude de esses dentes serem encontrados na regi??o posterior da boca, dificilmente as serpentes com esse tipo de denti????o conseguem injetar o veneno durante uma mordida. Entretanto, eles s??o capazes de aplicar o veneno nas v??timas que est??o no interior da sua boca.'),
(2,	'??glifa',	'As serpentes que est??o no grupo das ??glifas caracterizam-se pela aus??ncia de dentes com a capacidade de inocular o veneno.'),
(3,	'Solen??glifa',	'A denti????o solen??glifa se caracteriza pela presen??a de dentes inoculadores na regi??o anterior da boca. As cobras com essa denti????o possuem um canal no interior do dente por onde passa o veneno. Esse tipo de denti????o ?? o mais especializado de todos os tipos descritos e, por isso, nesse grupo est??o inclusas as cobras que mais causam acidentes of??dicos.'),
(4,	'Proter??glifa',	'As serpentes com denti????o proter??glifa caracterizam-se por possu??rem dentes capazes de inocular o veneno na regi??o anterior da boca. Esses dentes apresentam um sulco por onde o veneno escorre.'),
(5,	'N??o informado',	'A denti????o para esta cobra n??o foi informada ainda');

DROP TABLE IF EXISTS `FAMILIA`;
CREATE TABLE `FAMILIA` (
  `idFam` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`idFam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `FAMILIA` (`idFam`, `nome`) VALUES
(1,	'Aniliidae'),
(2,	'Boidae'),
(3,	'Colubridae'),
(4,	'Dipsadidae'),
(5,	'Elapidae'),
(6,	'Leptotyphlopidae'),
(7,	'Viperidae'),
(8,	'N??o informado');

DROP TABLE IF EXISTS `HOSPITAL`;
CREATE TABLE `HOSPITAL` (
  `idHOSPITAL` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `localizacao` varchar(300) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `mapa` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idHOSPITAL`),
  UNIQUE KEY `idHOSPITAL_UNIQUE` (`idHOSPITAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `HOSPITAL` (`idHOSPITAL`, `nome`, `localizacao`, `municipio`, `telefone`, `mapa`) VALUES
(1,	'Hospital S??o Lucas',	'Rua S??o Benedito, n?? 243 - S??o Miguel. CEP 63020-080',	'Juazeiro do Norte',	'(88) 3587 3353',	'https://www.google.com/maps/place/Hospital+Maternidade+S%C3%A3o+Lucas/@-7.205665,-39.310192,15z/data=!4m5!3m4!1s0x0:0x6cb7789d4c312b35!8m2!3d-7.205665!4d-39.310192?hl=pt'),
(2,	'HRC - Hospital Regional do Cariri',	'Rua Catulo da Paix??o, s/n - Tri??ngulo. CEP 63041-162',	'Juazeiro do Norte',	'(88) 3566 3600',	'https://www.google.com/maps/place/Hospital+Regional+do+Cariri+(HRC)/@-7.2263193,-39.3254599,15z/data=!4m5!3m4!1s0x0:0x9f3b3df2b38469ec!8m2!3d-7.2263193!4d-39.3254599?hl=pt');

DROP TABLE IF EXISTS `HOSPITAL_SORO`;
CREATE TABLE `HOSPITAL_SORO` (
  `idHOSPITAL` int(10) unsigned NOT NULL,
  `idCOBRA` int(10) unsigned NOT NULL,
  `nome_soro` varchar(100) NOT NULL,
  KEY `fk_HOSPITAL_SORO_COBRA1_idx` (`idCOBRA`),
  KEY `idHOSPITAL` (`idHOSPITAL`,`idCOBRA`),
  CONSTRAINT `fk_HOSPITAL_SORO_COBRA1` FOREIGN KEY (`idCOBRA`) REFERENCES `COBRA` (`idCOBRA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HOSPITAL_SORO_HOSPITAL1` FOREIGN KEY (`idHOSPITAL`) REFERENCES `HOSPITAL` (`idHOSPITAL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `REGISTRO`;
CREATE TABLE `REGISTRO` (
  `idREGISTRO` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `localizacao` text NOT NULL,
  `localizacao_lat` decimal(11,8) DEFAULT NULL,
  `localizacao_log` decimal(11,8) DEFAULT NULL,
  `imagem` tinyint(4) DEFAULT NULL,
  `informacao_adc` text DEFAULT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`idREGISTRO`),
  UNIQUE KEY `idREGISTRO_UNIQUE` (`idREGISTRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `REGISTRO` (`idREGISTRO`, `localizacao`, `localizacao_lat`, `localizacao_log`, `imagem`, `informacao_adc`, `data_hora`) VALUES
(26,	'Registro teste, n??o exclua por enquanto',	-7.14670000,	-39.24700000,	1,	'N??o excluir esse registro',	'2020-05-20 11:05:00'),
(50,	'Rua Farias Brito 1667',	-7.23606840,	-39.31666810,	1,	'Ela ?? bem feia viu\r\nSe quiser me contatar, meu whatsapp ?? 88 9 9207 5140',	'2022-06-20 19:03:00'),
(51,	'Teste de envio sem arquivos',	0.00000000,	0.00000000,	0,	'N??o tem foto nenhuma porque eu n??o sou doido de ver uma cobra e sair tirando foto',	'2022-06-20 19:05:00'),
(52,	'Teste Heroku',	0.00000000,	0.00000000,	1,	'Teste teste teste teste teste',	'2022-06-24 00:00:00');

DROP TABLE IF EXISTS `REGISTRO_COBRA`;
CREATE TABLE `REGISTRO_COBRA` (
  `idREGISTRO` int(10) unsigned NOT NULL,
  `IDCOBRA` int(10) unsigned NOT NULL,
  `idUSUARIO` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idREGISTRO`),
  KEY `fk_REGISTRO_COBRA_COBRA1_idx` (`IDCOBRA`),
  KEY `fk_REGISTRO_COBRA_USUARIO1_idx` (`idUSUARIO`),
  KEY `idREGISTRO` (`idREGISTRO`,`IDCOBRA`),
  CONSTRAINT `fk_REGISTRO_COBRA_COBRA1` FOREIGN KEY (`IDCOBRA`) REFERENCES `COBRA` (`idCOBRA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_REGISTRO_COBRA_REGISTRO1` FOREIGN KEY (`idREGISTRO`) REFERENCES `REGISTRO` (`idREGISTRO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_REGISTRO_COBRA_USUARIO1` FOREIGN KEY (`idUSUARIO`) REFERENCES `USUARIO` (`idUSUARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `USUARIO`;
CREATE TABLE `USUARIO` (
  `idUSUARIO` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(65) NOT NULL,
  `user` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idUSUARIO`),
  UNIQUE KEY `idUSUARIO_UNIQUE` (`idUSUARIO`),
  UNIQUE KEY `user_UNIQUE` (`user`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `USUARIO` (`idUSUARIO`, `password`, `user`, `email`) VALUES
(1,	'aef660c03b813f2de3e11c37465c472f6ad84e2dcdc24a4c3e0d16b49a50514f',	'csamuelssm',	'csamuelssm@gmail.com'),
(2,	'326e9e2e1129279c9b5aa9943134e24cac5f3a0505d38a46776e3c50b84cc192',	'c1c3ro',	'cicerosousa205@gmail.com'),
(7,	'27f8cb5ae83708175944c94bd32e9f86c5c076b538e32bf4d1a88e9d769e423d',	'Rinvox',	'thiagocarlossilvapereira@gmail.com'),
(8,	'9e6f791d2433656aa89788079cb4db22fdd812353d7cd7ed0cb08b85198e35ec',	'samuel.cardozo',	'samuel.ribeiro@ufca.edu.br');

-- 2022-06-24 17:50:02
