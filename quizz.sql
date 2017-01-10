-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 07 Janvier 2017 à 19:17
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id_answer` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_answer`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1656 ;

--
-- Contenu de la table `answer`
--

INSERT INTO `answer` (`id_answer`, `id_question`, `answer`, `valide`) VALUES
(1, 1, '1. Dans le PNB du métier, la part en pourcentage de la marge d’intérêt est plus importante pour GBIS que pour RBDF', 0),
(2, 1, '2. Dans le PNB du métier, la part en pourcentage de la marge d’intérêt est plus importante chez RBDF que pour GBIS', 1),
(3, 1, '3. Dans le PNB du métier, la part en pourcentage des autres produits est plus importante pour IBFS que pour RBDF', 1),
(4, 1, '4. Le PNB du métier RBDF est principalement composé d’une MNI et d’une marge nette de commissions', 1),
(11, 3, '3. 37% / 29% / 34%', 1),
(10, 3, '2. 22% / 51% / 27%', 0),
(9, 3, '1. 31% / 36% / 35 %', 0),
(5, 2, '1. 23,6 milliards', 0),
(6, 2, '2. 20,4 milliards', 0),
(7, 2, '3. 16,6 milliards', 0),
(8, 2, '4. 25,6 milliards', 1),
(12, 3, '4. 51% / 27% / 22%', 0),
(13, 4, '1. IBFS', 0),
(14, 4, '2. RBDF', 1),
(15, 4, '3. GBIS', 0),
(16, 5, '1. RBDF détaille son PNB par grande enseigne de distribution (SG, CDN, Boursorama, Autre)', 0),
(17, 5, '2. GBIS / Financement détaille son PNB par type de produits', 1),
(18, 5, '3. IBFS / ex-BHFM détaille son PNB par zone géographique', 1),
(19, 5, '4. IBFS et GBIS détaillent leur PNB par sous-ligne métier', 1),
(20, 6, '1. 10% ', 0),
(21, 6, '2. 15% ', 0),
(22, 6, '3. 40 à 45%', 0),
(23, 6, '4. 55 à 60%', 1),
(24, 7, '1. La (re)facturation intra-groupe (y compris intra-SGPMM)', 1),
(25, 7, '2. Les frais immobiliers', 1),
(26, 7, '3. Les dépenses informatiques et technologiques ', 1),
(27, 7, '4. Les frais fixes.', 0),
(28, 8, '1. Charges indirectes', 0),
(29, 8, '2. Coût marginal', 0),
(30, 8, '3. Charges directes', 1),
(31, 8, '4. Coût complet', 0),
(32, 9, '1. 17 GEUR / +5.3 %', 1),
(33, 9, '2. 17 GEUR / +1 %', 0),
(34, 9, '3. 20 GEUR / -0.5%', 0),
(35, 9, '4. 20 GEUR / +3.0%', 0),
(36, 10, '1. 33% / 27% /40%', 1),
(37, 10, '2. 25% / 35% /40%', 0),
(38, 10, '3. 40%/ 20%/ 40%', 0),
(39, 11, '1. 27 points de base', 0),
(40, 11, '2. 102 points de base', 0),
(41, 11, '3. 52 points de base', 1),
(42, 11, '4. 43 points de base', 0),
(43, 12, '1. La nature de l’activité', 1),
(44, 12, '2. Le niveau d’inflation dans le pays', 0),
(45, 12, '3. La maturité du marché', 1),
(46, 12, '4. La performance des équipes du Groupe', 0),
(47, 13, '1. 0%', 0),
(48, 13, '2. 5%', 0),
(49, 13, '3. 10% ', 1),
(50, 13, '4. 20%', 0),
(51, 14, '1. 1 714 M€ / 29,2 %', 1),
(52, 14, '2. 1 384 M€ / 29.5 %', 0),
(53, 14, '3. 528 M€ / 18.6 %', 0),
(54, 14, '4. 1 714 M€ / 28,6 %', 0),
(55, 15, '1. Cost to income ratio', 1),
(56, 15, '2. Staff ratio', 0),
(57, 15, '3. Exploitation ratio', 0),
(58, 15, '4. Staff to income ratio', 0),
(59, 16, '1. Le ROE', 1),
(60, 16, '2. Le niveau de collecte des assurances', 1),
(61, 16, '3. Le PNB par agent', 0),
(62, 16, '4. Le coefficient d’exploitation', 1),
(63, 17, '1. Le RNPG', 0),
(64, 17, '2. Le RNPG – intérêts payés sur les dettes hybrides du type Titres Super Subordonnés (TSS) ouTitres Subordonnés à Durée Indéterminée (TSDI)', 1),
(65, 17, '3. Le Résultat d’exploitation - intérêts payés sur les dettes hybrides du type Titres Super Subordonnés (TSS) ouTitres Subordonnés à Durée Indéterminée (TSDI)', 0),
(66, 17, '4. Le PNB', 0),
(67, 18, '1. 10% * RWA Bâle 3 – fonds propres complémentaires', 0),
(68, 18, '2. 11% * RWA Bâle 3 – fonds propres complémentaires', 1),
(69, 18, '3. 9% * RWA Bâle 2 – fonds propres complémentaires', 0),
(70, 18, '4. 9% des RWA Bâle 2.5 – fonds propres complémentaires', 0),
(71, 19, '1. RBDF : 65% / IBFS : 58% / GBIS : 72%', 0),
(72, 19, '2. RBDF : 50% / IBFS : 38% / GBIS : 85%', 0),
(73, 19, '3. RBDF : 64% / IBFS : 59% / GBIS : 74%', 1),
(74, 19, '4. RBDF : 75% / IBFS : 35% / GBIS : 52%', 0),
(75, 4, '4. PTDR', 0),
(76, 10, '4. 33%/ 33% /33%', 0);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `id_theme` int(11) DEFAULT NULL,
  `question` varchar(255) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `explanation` text NOT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id_question`, `id_theme`, `question`, `difficulty`, `type`, `explanation`) VALUES
(1, 1, 'Indiquer les trois bonnes réponses dans les affirmations suivantes :', 1, 'checkbox', 'La réponse est dans la vidéo. En chiffres :\r\nMarge d’intérêt : Groupe : 46% / GBIS : 35% / IBFS : 56% / RBDF : 58%\r\nMarge des commissions : Groupe : 28% / GBIS : 21% / IBFS : 20% / RBDF : 39%\r\nRésultat net sur opérations financières : Groupe : 18% / GBIS : 43% /IBFS : 4% /RBDF : NS%\r\nAutres produits : Groupe : 8% / GBIS : 2% /IBFS : 20% /RBDF : 3%\r\nLa répartition du PNB dépend de la nature de l’activité. En effet, le PNB de chacun des pôles comprend les revenus générés par chaque activité ainsi que la rémunération des fonds propres normatifs qui lui sont alloués. Pour connaître en détail les activités de chaque métier, voir p.10 & 20 du document de référence. La diversité des natures de ces sous lignes métier et activités explique la répartition du PNB. '),
(2, 1, 'Quel est le niveau de PNB du Groupe à fin 2015 ? 1 réponse juste. Indication : rechercher dans les pages de garde du document de référence. ', 1, 'radio', 'Bonne réponse : 4\r\n\r\nRéférez vous à la page de couverture du document de référence. \r\nPNB de 2010 : 26,4 GEUR\r\nPNB de 2011 : 25,6 GEUR\r\nPNB de 2012 : 23,1 GEUR\r\nPNB de 2013 : 22,8 GEUR\r\nPNB de 2014 : 23,6 GEUR'),
(3, 1, 'Quelle est la part de GBIS, IBFS et RBDF dans le PNB du Groupe? Choisir la bonne combinaison GBIS, IBFS, RBDF.', 1, 'radio', 'Bonne réponse : 3\r\n\r\nLa contribution au PNB des trois métiers du Groupe est assez équilibrée. \r\nPour retrouver la source de la réponse, vous pouvez vous référer à :\r\n1/ p.6 du document de référence vous trouverez la répartition du PNB. \r\n2/ p.27-28-29 du document de référence vous trouverez les données chiffrées par métier.\r\n3/ p.5 du document de communication financière T4 2015'),
(4, 1, 'Quel est le seul métier qui éclate son PNB par nature économique dans les slides de « com-fi » ? ', 1, 'radio', 'Bonne réponse : 2\r\n\r\nVoir slide 19 et slide 51 : Il s’agit de RBDF avec une division entre marge d’intérêt et commissions. '),
(5, 1, 'Indiquer les trois bonnes réponses dans les affirmations suivantes. Dans les slides de « com-fi » : ', 1, 'checkbox', 'Bonne réponse : 2,3 et 4\r\n\r\nDans la com-fi, vous trouverez le détail des résultats par métier : \r\n* pour RBDF : slide 19 (nature économique) puis 51\r\n* Pour IBFS : slides 55 - 56 (par sous-ligne métier), 57 - 59 (par zone géographique de l’ex-BHFM), 61 – 63 (par pays). \r\n* Pour GBIS : slides 24 (par sous-ligne métier), 25 (par produits de GLFI), 65 à 68 (par sous-ligne métier)'),
(6, 1, 'Quelle part de l’assiette des frais généraux du Groupe représentent les rémunérations fixes et variables ?', 2, 'radio', 'Bonne réponse : 4\r\n\r\nLa réponse est donnée dans la vidéo. Vous trouverez le détail de ce poste en pages 270 et 344 du DDR 2016. Les frais du personnel représentent en 2015 9 476 M€ sur 16 893 M€ de frais généraux. Avec un effectif de 146 000 ETP, cela représente un coût moyen par salarié de 65 K€ par an soit environ 300 € par jour et par salarié du Groupe. \r\nLes rémunérations (fixes + variables) représentent la majorité des frais généraux de toutes les banques françaises.\r\n10% correspond à la part des frais immobiliers dans les frais généraux. '),
(7, 1, 'Parmi la liste suivante, indiquez les trois catégories de frais généraux distingués dans les rubriques de gestion (NRG) du Groupe :', 2, 'checkbox', 'Bonne réponse : 1,2 et 3\r\n\r\nLa contribution au PNB des trois métiers du Groupe est assez équilibrée. \r\nPour retrouver la source de la réponse, vous pouvez vous référer à :\r\n1/ p.6 du document de référence vous trouverez la répartition du PNB. \r\n2/ p.27-28-29 du document de référence vous trouverez les données chiffrées par métier.\r\n3/ p.5 du document de communication financière T4 2015'),
(8, 1, 'Quel est l’autre expression pour désigner les coûts propres ?', 2, 'radio', 'Bonne réponse : 3\r\n\r\nRéponse 1 : Les charges directes correspondent aux charges qu’il est possible d’imputer directement et sans ambigüité à l’objet d’analyse qui est à l’origine de cette charge et que l’on utilise pour l’analyse et la communication. Par exemple, il s’agit de l’axe organisationnel (métier) si on communique les résultats par ligne métier (cas du groupe SG), l’axe produit si on conduit l’analyse par produit, process si on conduit l’analyse par process …\r\nA contrario, les charges indirectes sont communes à différents objets d’analyse si on communique les résultats par ligne métier. La notion de direct / indirect est donc une notion relative qui est fonction de l’analyse qui est menée (par exemple, fonction de la position dans l’organisation dans le cas du Groupe).\r\nRéponse 2 : Le coût marginal correspond à la variation de coût global ou complet induit par la dernière unité produite. '),
(9, 1, 'Quel est le niveau de frais généraux du Groupe et le pourcentage de variation en 2015 ? Référez vous aux slides de la communication financière.', 2, 'radio', 'Bonne réponse : 1\r\n\r\nVoir slide 16 du document de communication financière. \r\nLes frais de gestion ont varié de +5.3 % (et +3.0 % à périmètre et taux de change constant) depuis 2014.'),
(10, 1, 'Quelles sont les parts respectives des métiers dans le total des frais généraux ? Indiquer la proposition qui correspond aux répartitions entre RBDF, IBFS et GBIS dans cet ordre : ', 2, 'radio', 'Bonne réponse : 1\r\n\r\nLes montants des FGX de RBDF, IBFS et GBIS sont respectivement de 5.5 G€ / 4.3 G€ / 6.9 G€) (cf. page 35 de la communication financière) pour 39 300 / 73 300 / 21 700 collaborateurs et 11 500 collaborateurs dans les Directions Centrales.'),
(11, 1, 'Quel est le coût du risque moyen du Groupe pour l’année 2015 exprimé en points de base des encours ?', 3, 'radio', 'Bonne réponse : 3\r\n\r\nRéférez vous à la slide 10 et 11 du document de communication financière\r\nRéponse 1 : 27 celui de GBIS\r\nRéponse 2 : 102 est le coût du risque de IBFS\r\nRéponse 4 : 43 celui de RBDF \r\nLe coût du risque en point de base est calculé en rapportant la charge nette du risque commercial aux encours de crédit de début de période. On constate une baisse de ce coût du risque très notable entre 2013 et 2015. Pour le pilier IBFS, cette charge est passée de 1835 à 1246 M€ (soit -32 % en 2 ans) et pour RBDF, cette charge est passée de 1258 M€ à 824 M€ (soit -34,5 % en 2 ans et point haut en 2013). '),
(17, 1, 'Que trouve t-on au numérateur du ROE ?  ', 4, 'radio', 'Bonne réponse : 2\r\n\r\nRéponse 1 : Vous trouverez des détails sur ce numérateur p.40 du document de référence.\r\n"Le résultat pris en compte pour calculer le ROE est déterminé sur la base du résultat net part du Groupe en déduisant les intérêts, nets d’effet fiscal, à verser aux porteurs de titres super- subordonnés sur la période, depuis 2006, aux porteurs des TSS et TSDI reclassés".\r\nRéponse 2 : Vous trouverez les données chiffrées du RoE pp 16 et 33 de la com-fi et p.6 du DDR 2016.\r\nEn 2010, le ROE après impôt était de 9,8 %. Il est en 2015 de 7,9 % pour le RoE publié et de 8,1 % pour le RoE sous-jacent.'),
(12, 1, 'Dans la liste suivante, indiquez les trois facteurs qui influent sur le niveau de Coût Net du Risque ?', 3, 'checkbox', 'Bonne réponse : 1, 3, 4\r\n\r\nRéponse 1 : Le niveau de risque dépend de la nature de l’activité. Ainsi, alors que le coût du risque de IBFS est de 102 points de base, celui de RBDF est de 43. \r\nRéponse 3 : Dans la vidéo l’exemple donné est celui d’un CNR ainsi plus faible en France que dans les pays émergents. '),
(18, 1, 'Dans le cadre du calcul du ROE par métier, comment calcule t-on les fonds propres normatifs ? ', 4, 'radio', 'Bonne réponse : 2\r\n\r\nRechercher dans la vidéo ou dans le DDR en recherchant l''expression "fonds propres normatifs".\r\n\r\nDepuis le budget 2015, le modèle du calcul des fonds propres normatifs est : \r\n11% * RWA Bâle 3 – ajustements ou fonds propres complémentaires.\r\n(cf. bas de la page 39 du DDR - rubrique "Allocation des fonds propres normatifs).\r\nLe détail des ajustements ou fonds propres complémentaires était public pour les calculs en Bâle 2 ou Bâle 2.5. Il est devenu très complexe avec les nouvelles régles Bâle 3. De ce fait, ce détail n''est plus diffusé largement et doit faire l''objet d''une demande motivée auprès du responsable de DEVL/PFS/CAP. \r\nVous pouvez donc vous référer au document « ratios financiers » présent dans les « principes de contrôle de gestion Groupe » qui vous donnera avec précision les règles en Bâle 2,5. \r\nRéponse 1 : valable pour l’année 2014.\r\nRéponse 4 : valable pour les années 2012 et 2013.'),
(19, 1, 'Donner les coefficients d’exploitation métier par métier', 4, 'radio', 'Bonne réponse : 3\r\n\r\nPour retrouver ces chiffres, référez vous à la page 27 du DDR 2016.\r\nPour rappel, le coefficient d’exploitation correspond au ratio indiquant la part du PNB (Produit Net Bancaire) utilisée pour couvrir les charges d’exploitation (coûts de fonctionnement de l’entreprise). Il se détermine en divisant les frais de gestion par le PNB.\r\nRéponse 1 : RBDF : 64,7% / IBFS : 57,6% / GBIS : 72,2% correspond à l’année 2014\r\nRéponse 3 : RBDF : 64,2% / IBFS : 58,8% / GBIS : 73,5% correspond à l’année 2015'),
(13, 1, 'Quel est le niveau moyen des fonds propres du Groupe détenus par des actionnaires minoritaires ?', 3, 'radio', 'Bonne réponse : 3\r\n\r\nLa quote part du résultat net après impôt qui revient aux minoritaires est environ de 10% (cf. bas du détail du compte de résultat consolidé p 270 du DDR). Le montant précis est de 394 M€ sur un résultat total de 4 395 M€, soit 9,0 %.'),
(14, 1, 'Quels sont le niveau des impôts sur les bénéfices et le taux d''impôt efffectif du Groupe en 2015 ?', 3, 'radio', 'Bonne réponse : 1\r\n\r\np.27 du DDR 2016 ou p 35 de la com-fi, vous trouverez le compte de résultat consolidé avec les charges fiscales pour 2014 et 2015.\r\nLe taux d''impôt effectif est détaillé page 354 du DDR.\r\nRéponse 3 : (528 M€ / 18.6 %) : situation de 2013.\r\nRéponse 4 : (1 384 M€ / 29.5 %) : situation de 2014'),
(15, 1, 'Comment traduit-on en anglais « coefficient d’exploitation » ? ', 4, 'radio', 'Bonne réponse : 1\r\n\r\n'),
(16, 1, 'Parmi la liste suivante, indiquez les trois ratios qui correspondent à des ratios types de pilotage du Groupe ?', 4, 'checkbox', 'Bonne réponse : 1,2 et 4\r\n\r\nRéponse 1 : Le ROE est le rapport permettant de mesurer la rentabilité des capitaux propres d''une entité. Il est l’un des ratios clé du pilotage d’une banque. Son calcul et la cible du Groupe le concernant sont évoqués dans la vidéo. \r\nRéponse 2 : Ce ratio est un ratio propre à un métier du Groupe, en l’occurrence le niveau de collecte concerne exclusivement le métier des assurances.\r\nRéponse 4 : Le coefficient d’exploitation mesure l’efficacité opérationnelle d’une activité. Son niveau dépend de la nature de cette activité.');

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `theme`
--

INSERT INTO `theme` (`id_theme`, `name`) VALUES
(1, 'Thème 2 : Du PNB au RNPG, Ratios de pilotage');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
