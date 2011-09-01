-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: mysql03.osfeio.com    Database: tddc12
-- ------------------------------------------------------
-- Server version	5.1.54-rel12.5-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acesso_externo`
--

DROP TABLE IF EXISTS `acesso_externo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acesso_externo` (
  `id_dominio` int(3) NOT NULL DEFAULT '0',
  `acao` varchar(15) NOT NULL DEFAULT 'criar_email',
  `flg_permissao` tinyint(3) DEFAULT '0',
  `url1` varchar(250) DEFAULT '0',
  `flg_comunica` tinyint(4) DEFAULT '0',
  `comunica_email` varchar(60) DEFAULT NULL,
  `flg_status_conta` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_dominio`,`acao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acesso_externo`
--

LOCK TABLES `acesso_externo` WRITE;
/*!40000 ALTER TABLE `acesso_externo` DISABLE KEYS */;
INSERT INTO `acesso_externo` VALUES (261862,'apaga_conta',1,'http://thiagodias.locaweb.com.br/',0,NULL,0),(261862,'converte_conta',1,'http://thiagodias.locaweb.com.br/',0,NULL,0),(261862,'criar_apelido',1,'http://thiagodias.locaweb.com.br/',0,NULL,0),(261862,'criar_email',1,'http://thiagodias.locaweb.com.br/api/criaremail2.html',0,NULL,0),(261862,'muda_senha',1,'http://thiagodias.locaweb.com.br/api/',0,NULL,0),(261862,'muda_senha_adm',1,'http://thiagodias.locaweb.com.br/',0,NULL,0),(261862,'muda_status',1,'http://thiagodias.locaweb.com.br/',0,NULL,0);
/*!40000 ALTER TABLE `acesso_externo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_perfil`
--

DROP TABLE IF EXISTS `admin_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_perfil` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `id_perfil` smallint(6) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `nome_perfil` varchar(20) NOT NULL DEFAULT '',
  `descricao` varchar(50) DEFAULT NULL,
  `limite_quota` int(3) DEFAULT '20480',
  `limite_mensagem` mediumint(9) DEFAULT '40960',
  `limite_msg_envia` mediumint(9) DEFAULT '40960',
  `limite_count` mediumint(9) DEFAULT '50000',
  `nivel_spam` tinyint(3) DEFAULT '0',
  `flg_spam` tinyint(3) DEFAULT '1',
  `nivel_virus` tinyint(3) DEFAULT '1',
  `flg_virus` tinyint(3) DEFAULT '1',
  `nivel_seguranca` tinyint(3) DEFAULT '0',
  `flg_seguranca` tinyint(3) DEFAULT '1',
  `flg_apelido_oculto` tinyint(3) DEFAULT '1',
  `flg_pop` tinyint(3) DEFAULT '1',
  `flg_webmail` tinyint(3) DEFAULT '1',
  `flg_troca_senha` tinyint(4) DEFAULT '1',
  `flg_filtros` tinyint(4) DEFAULT '1',
  `flg_webmail_attach` tinyint(4) DEFAULT '1',
  `flg_webmail_download` tinyint(4) DEFAULT '1',
  `perm_acesso` varchar(20) DEFAULT '111010',
  `perm_webmail` varchar(20) DEFAULT '1111111111111100',
  `flg_padrao` tinyint(4) DEFAULT '0',
  `flg_webmail_addressbook` tinyint(4) DEFAULT '0',
  `flg_webmail_prefsnome` tinyint(4) DEFAULT '0',
  `ctl_quar_email` varchar(5) DEFAULT '0',
  `ctl_spam_digest` tinyint(4) NOT NULL DEFAULT '0',
  `lang` varchar(5) DEFAULT 'pt_BR',
  `ctl_spam_spf` varchar(140) DEFAULT NULL,
  `flg_envio_aut_ativado` tinyint(4) NOT NULL DEFAULT '0',
  `tipo_autorizacao` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_dominio`,`id_perfil`),
  UNIQUE KEY `id_dominio` (`id_dominio`,`id_perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_perfil`
--

LOCK TABLES `admin_perfil` WRITE;
/*!40000 ALTER TABLE `admin_perfil` DISABLE KEYS */;
INSERT INTO `admin_perfil` VALUES (261862,1,1,'Padrão','Para criação de novas contas',2097152,10240,10240,50000,0,1,1,1,0,1,1,1,1,1,1,1,1,'111110','111111111111111111',1,1,0,'0',0,'pt_BR','',0,0),(261862,9999,1,'Administrador','Perfil do Sistema',2097152,10240,10240,50000,0,1,1,1,0,1,1,1,1,1,1,1,1,'111110','111111111111111111',0,1,0,'0',0,'pt_BR','',0,0),(142587,1,1,'PadrÃ£o','Para criaÃ§Ã£o de novas contas',2097152,10240,10240,3000,0,1,1,1,0,1,1,1,1,1,1,1,1,'111110','111111111111111111',1,1,0,'0',0,'pt_BR','',0,0),(142587,9999,1,'Administrador','Perfil do Sistema',2097152,10240,10240,3000,0,1,1,1,0,1,1,1,1,1,1,1,1,'111110','111111111111111111',0,1,0,'0',0,'pt_BR','',0,0);
/*!40000 ALTER TABLE `admin_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_regras`
--

DROP TABLE IF EXISTS `admin_regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_regras` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `cliente` varchar(20) NOT NULL DEFAULT '',
  `regra` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_dominio`,`cliente`,`regra`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_regras`
--

LOCK TABLES `admin_regras` WRITE;
/*!40000 ALTER TABLE `admin_regras` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_regras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administracao`
--

DROP TABLE IF EXISTS `administracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administracao` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `dominio_base` varchar(50) NOT NULL DEFAULT '',
  `mostrar_contas` tinyint(4) NOT NULL DEFAULT '20',
  `flg_login` tinyint(4) DEFAULT '0',
  `cor_fundo` varchar(7) DEFAULT NULL,
  `cor_bordafora` varchar(7) DEFAULT NULL,
  `cor_bordainterna` varchar(7) DEFAULT NULL,
  `cor_fontemenu` varchar(7) DEFAULT NULL,
  `cor_tabelacontas` varchar(7) DEFAULT NULL,
  `cor_linha1` varchar(7) DEFAULT NULL,
  `cor_linha2` varchar(7) DEFAULT NULL,
  `cor_menu` varchar(7) DEFAULT NULL,
  `cor_cabecalho` varchar(7) DEFAULT NULL,
  `cor_fontecabecalho` varchar(7) DEFAULT NULL,
  `vm_personal` varchar(10) DEFAULT NULL,
  `tipo_layout_grupo` tinyint(3) unsigned DEFAULT '0',
  `politica_senha` varchar(8) NOT NULL DEFAULT '6|4|2',
  `txt_assinatura` varchar(250) DEFAULT NULL,
  `ctl_admin_regras` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_dominio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administracao`
--

LOCK TABLES `administracao` WRITE;
/*!40000 ALTER TABLE `administracao` DISABLE KEYS */;
INSERT INTO `administracao` VALUES (261862,'',20,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'6|4|2',NULL,0),(142587,'',20,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'6|4|2',NULL,0);
/*!40000 ALTER TABLE `administracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apelidos`
--

DROP TABLE IF EXISTS `apelidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apelidos` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `id_apelido` int(11) NOT NULL AUTO_INCREMENT,
  `nome_apelido` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) DEFAULT '1',
  `status_alias` tinyint(4) NOT NULL DEFAULT '1',
  `nome_redir` varchar(200) NOT NULL DEFAULT '',
  `flg_oculto` tinyint(4) DEFAULT '0',
  `tipo_autorizacao` tinyint(4) DEFAULT '0',
  `ctl_spam_greylisting` tinyint(4) NOT NULL DEFAULT '1',
  `vm_obs` varchar(20) DEFAULT NULL,
  `vm_enable` tinyint(3) unsigned DEFAULT '1',
  `vm_dt_criacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_apelido`,`id_dominio`),
  KEY `idx_nome` (`id_dominio`,`nome_apelido`)
) ENGINE=InnoDB AUTO_INCREMENT=814134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apelidos`
--

LOCK TABLES `apelidos` WRITE;
/*!40000 ALTER TABLE `apelidos` DISABLE KEYS */;
INSERT INTO `apelidos` VALUES (261862,709712,'alias',1,1,'locaweb',0,0,0,'teste apelido',1,1243427541),(261862,802047,'teste',1,1,'@id_grupo=73821',0,0,0,NULL,1,1278621387),(142587,803977,'nova',1,1,'@id_grupo=91960',0,0,0,NULL,1,1279664920),(261862,807966,'teste01',1,1,'@id_grupo=92698',0,0,0,NULL,1,1281461700);
/*!40000 ALTER TABLE `apelidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication`
--

DROP TABLE IF EXISTS `authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authentication` (
  `id_dominio` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication`
--

LOCK TABLES `authentication` WRITE;
/*!40000 ALTER TABLE `authentication` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cache_key` varchar(128) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `data` longtext NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `created_index` (`created`),
  KEY `user_cache_index` (`user_id`,`cache_key`),
  CONSTRAINT `user_id_fk_cache` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1768 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactgroupmembers`
--

DROP TABLE IF EXISTS `contactgroupmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactgroupmembers` (
  `contactgroup_id` int(10) unsigned NOT NULL,
  `contact_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`contactgroup_id`,`contact_id`),
  KEY `contact_id_fk_contacts` (`contact_id`),
  CONSTRAINT `contactgroup_id_fk_contactgroups` FOREIGN KEY (`contactgroup_id`) REFERENCES `contactgroups` (`contactgroup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_id_fk_contacts` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactgroupmembers`
--

LOCK TABLES `contactgroupmembers` WRITE;
/*!40000 ALTER TABLE `contactgroupmembers` DISABLE KEYS */;
INSERT INTO `contactgroupmembers` VALUES (1,7,'2011-03-24 16:56:01'),(1,8,'2011-03-24 16:56:01');
/*!40000 ALTER TABLE `contactgroupmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactgroups`
--

DROP TABLE IF EXISTS `contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactgroups` (
  `contactgroup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`contactgroup_id`),
  KEY `contactgroups_user_index` (`user_id`,`del`),
  CONSTRAINT `user_id_fk_contactgroups` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactgroups`
--

LOCK TABLES `contactgroups` WRITE;
/*!40000 ALTER TABLE `contactgroups` DISABLE KEYS */;
INSERT INTO `contactgroups` VALUES (1,23,'2011-02-23 15:57:07',0,'teste'),(2,1,'2011-02-28 13:28:55',0,'teste');
/*!40000 ALTER TABLE `contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `contact_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(128) NOT NULL DEFAULT '',
  `surname` varchar(128) NOT NULL DEFAULT '',
  `vcard` text,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`contact_id`),
  KEY `user_contacts_index` (`user_id`,`email`),
  CONSTRAINT `user_id_fk_contacts` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'2011-03-17 10:53:45',0,'aaaaa111','aaaa11@aa.com','','',NULL,24),(2,'2011-03-24 16:51:36',0,'teste','asssss@ssss.com','e','sadfadf',NULL,23),(3,'2011-03-24 16:54:37',1,'teste6 lala','teste6@lala.com','teste6','lala',NULL,23),(4,'2011-03-24 16:54:56',0,'asdfasdfasdf asdfasdfasdf','webmail@asdfasdf.com','asdfasdfasdf','asdfasdfasdf',NULL,23),(5,'2011-03-24 16:56:11',1,'dasdfasdfdsfs fasdfasdfa','webmail@asdsssfasdf.com','dasdfasdfdsfs','fasdfasdfa',NULL,23),(6,'2011-03-24 17:26:33',1,'teste2 lala','teste2@lala.com','teste2','lala',NULL,23),(7,'2011-03-24 17:22:52',1,'teste7 asdf','teste7@lala.com','teste7','asdf',NULL,23),(8,'2011-03-24 16:56:20',1,'teste3 teste3','teste3@lala.com','teste3','teste3',NULL,23),(9,'2011-03-24 17:49:22',0,'a1idc','a1idc@locaweb.com.br','','a1idc','BEGIN:VCARD\nVERSION:3.0\nFN:a1idc\nN:a1idc;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:a1idc@locaweb.com.br\nEND:VCARD\n',24),(10,'2011-03-24 17:49:23',0,'none','abner.silva-deleted-28092010-162655@locaweb.com.br','','none','BEGIN:VCARD\nVERSION:3.0\nFN:none\nN:none;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:abner.silva-deleted-28092010-162655@locaweb.com.br\nEND:VCARD\n',24),(11,'2011-03-24 17:49:23',0,'abuse-tm','abuse-tm@locaweb.com.br','','abuse-tm','BEGIN:VCARD\nVERSION:3.0\nFN:abuse-tm\nN:abuse-tm;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:abuse-tm@locaweb.com.br\nEND:VCARD\n',24),(12,'2011-03-24 17:49:23',0,'accountinfo accountinfo','accountinfo@locaweb.com.br','accountinfo','accountinfo','BEGIN:VCARD\nVERSION:3.0\nFN:accountinfo accountinfo\nN:accountinfo;accountinfo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:accountinfo@locaweb.com.br\nEND:VCARD\n',24),(13,'2011-03-24 17:49:23',0,'accounting accounting','accounting@locaweb.com.br','accounting','accounting','BEGIN:VCARD\nVERSION:3.0\nFN:accounting accounting\nN:accounting;accounting;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:accounting@locaweb.com.br\nEND:VCARD\n',24),(14,'2011-03-24 17:50:26',1,'Ademir Palmeira','ademir.palmeira@locaweb.com.br','Ademir','Palmeira','BEGIN:VCARD\nVERSION:3.0\nFN:Ademir Palmeira\nN:Palmeira;Ademir;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ademir.palmeira@locaweb.com.br\nEND:VCARD\n',24),(15,'2011-03-24 17:49:23',0,'Adinan Paiva','adinan.paiva@locaweb.com.br','Adinan','Paiva','BEGIN:VCARD\nVERSION:3.0\nFN:Adinan Paiva\nN:Paiva;Adinan;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adinan.paiva@locaweb.com.br\nEND:VCARD\n',24),(16,'2011-03-24 17:49:23',0,'admin-blog','admin-blog@locaweb.com.br','','admin-blog','BEGIN:VCARD\nVERSION:3.0\nFN:admin-blog\nN:admin-blog;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:admin-blog@locaweb.com.br\nEND:VCARD\n',24),(17,'2011-03-24 17:49:23',0,'administrador ','administrador@locaweb.com.br','administrador','','BEGIN:VCARD\nVERSION:3.0\nFN:administrador \nN:;administrador;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:administrador@locaweb.com.br\nEND:VCARD\n',24),(18,'2011-03-24 17:50:08',1,'administrator administrador','administrator@locaweb.com.br','administrator','administrador','BEGIN:VCARD\nVERSION:3.0\nFN:administrator administrador\nN:administrador;administrator;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:administrator@locaweb.com.br\nEND:VCARD\n',24),(19,'2011-03-24 17:49:23',0,'Adolfo Sousa ','adolfo.sousa@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Adolfo Sousa \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adolfo.sousa@locaweb.com.br\nEND:VCARD\n',24),(20,'2011-03-24 17:50:00',1,'Adriana Borges ','adriana.borges@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Adriana Borges \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adriana.borges@locaweb.com.br\nEND:VCARD\n',24),(21,'2011-03-24 17:49:23',0,'Adriana Brandao ','adriana.brandao-deleted-11082010-112731@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Adriana Brandao \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adriana.brandao-deleted-11082010-112731@locaweb.com.br\nEND:VCARD\n',24),(22,'2011-03-24 17:49:23',0,'Adriana Hernandez','adriana.hernandez@locaweb.com.br','Adriana','Hernandez','BEGIN:VCARD\nVERSION:3.0\nFN:Adriana Hernandez\nN:Hernandez;Adriana;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adriana.hernandez@locaweb.com.br\nEND:VCARD\n',24),(23,'2011-03-24 17:50:31',1,'Adriana Paixao ','adriana.paixao@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Adriana Paixao \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adriana.paixao@locaweb.com.br\nEND:VCARD\n',24),(24,'2011-03-24 17:49:23',0,'Adriana Vieira','adriana.vieira@locaweb.com.br','Adriana','Vieira','BEGIN:VCARD\nVERSION:3.0\nFN:Adriana Vieira\nN:Vieira;Adriana;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adriana.vieira@locaweb.com.br\nEND:VCARD\n',24),(25,'2011-03-24 17:49:23',0,'Adriano Russini ','adriano.russini@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Adriano Russini \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adriano.russini@locaweb.com.br\nEND:VCARD\n',24),(26,'2011-03-24 17:49:23',0,'Adsense','adsense@locaweb.com.br','','Adsense','BEGIN:VCARD\nVERSION:3.0\nFN:Adsense\nN:Adsense;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adsense@locaweb.com.br\nEND:VCARD\n',24),(27,'2011-03-24 17:49:47',1,'Adso Castro ','adso.castro@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Adso Castro \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:adso.castro@locaweb.com.br\nEND:VCARD\n',24),(28,'2011-03-24 17:50:15',1,'Agenda ','agenda@locaweb.com.br','Agenda','','BEGIN:VCARD\nVERSION:3.0\nFN:Agenda \nN:;Agenda;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:agenda@locaweb.com.br\nEND:VCARD\n',24),(29,'2011-03-24 17:49:23',0,'Agnaldo Silva','agnaldo.silva@locaweb.com.br','Agnaldo','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Agnaldo Silva\nN:Silva;Agnaldo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:agnaldo.silva@locaweb.com.br\nEND:VCARD\n',24),(30,'2011-03-24 17:49:23',0,'Aguida Carvalho','aguida.carvalho@locaweb.com.br','Aguida','Carvalho','BEGIN:VCARD\nVERSION:3.0\nFN:Aguida Carvalho\nN:Carvalho;Aguida;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:aguida.carvalho@locaweb.com.br\nEND:VCARD\n',24),(31,'2011-03-24 17:49:24',0,'Agustinho Oliveira','agustinho.oliveira@locaweb.com.br','Agustinho','Oliveira','BEGIN:VCARD\nVERSION:3.0\nFN:Agustinho Oliveira\nN:Oliveira;Agustinho;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:agustinho.oliveira@locaweb.com.br\nEND:VCARD\n',24),(32,'2011-03-24 17:49:24',0,'Alan Batista','alan.batista@locaweb.com.br','Alan','Batista','BEGIN:VCARD\nVERSION:3.0\nFN:Alan Batista\nN:Batista;Alan;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alan.batista@locaweb.com.br\nEND:VCARD\n',24),(33,'2011-03-24 17:49:24',0,'Alan Benazzi','alan.benazzi-deleted-18102010-184217@locaweb.com.br','Alan','Benazzi','BEGIN:VCARD\nVERSION:3.0\nFN:Alan Benazzi\nN:Benazzi;Alan;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alan.benazzi-deleted-18102010-184217@locaweb.com.br\nEND:VCARD\n',24),(34,'2011-03-24 17:49:24',0,'Alan Castro','alan.castro@locaweb.com.br','Alan','Castro','BEGIN:VCARD\nVERSION:3.0\nFN:Alan Castro\nN:Castro;Alan;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alan.castro@locaweb.com.br\nEND:VCARD\n',24),(35,'2011-03-24 17:49:24',0,'Alarmeinfra','alarmeinfra@locaweb.com.br','','Alarmeinfra','BEGIN:VCARD\nVERSION:3.0\nFN:Alarmeinfra\nN:Alarmeinfra;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alarmeinfra@locaweb.com.br\nEND:VCARD\n',24),(36,'2011-03-24 17:49:24',0,'Alberto Olivastro','alberto.olivastro@locaweb.com.br','Alberto','Olivastro','BEGIN:VCARD\nVERSION:3.0\nFN:Alberto Olivastro\nN:Olivastro;Alberto;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alberto.olivastro@locaweb.com.br\nEND:VCARD\n',24),(37,'2011-03-24 17:49:24',0,'Alerta Has','alerta_has@locaweb.com.br','','Has','BEGIN:VCARD\nVERSION:3.0\nFN:Alerta Has\nN:Has;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alerta_has@locaweb.com.br\nEND:VCARD\n',24),(38,'2011-03-24 17:50:40',1,'Alex Guerra','alex.guerra@locaweb.com.br','','Guerra','BEGIN:VCARD\nVERSION:3.0\nFN:Alex Guerra\nN:Guerra;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alex.guerra@locaweb.com.br\nEND:VCARD\n',24),(39,'2011-03-24 17:49:24',0,'Alex Hubner','alex.hubner-deleted-06122010-114738@locaweb.com.br','Alex','Hubner','BEGIN:VCARD\nVERSION:3.0\nFN:Alex Hubner\nN:Hubner;Alex;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alex.hubner-deleted-06122010-114738@locaweb.com.br\nEND:VCARD\n',24),(40,'2011-03-24 17:49:24',0,'Alexandre Abreu','alexandre.abreu@locaweb.com.br','Alexandre','Abreu','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Abreu\nN:Abreu;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.abreu@locaweb.com.br\nEND:VCARD\n',24),(41,'2011-03-24 17:49:24',0,'Alexandre Anjos ','alexandre.anjos@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Anjos \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.anjos@locaweb.com.br\nEND:VCARD\n',24),(42,'2011-03-24 17:49:24',0,'Alexandre Bacci ','alexandre.bacci@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Bacci \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.bacci@locaweb.com.br\nEND:VCARD\n',24),(43,'2011-03-24 17:49:24',0,'Alexandre Borsari','alexandre.borsari@locaweb.com.br','Alexandre','Borsari','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Borsari\nN:Borsari;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.borsari@locaweb.com.br\nEND:VCARD\n',24),(44,'2011-03-24 17:49:24',0,'Alexandre Catao ','alexandre.catao-deleted-19102010-114310@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Catao \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.catao-deleted-19102010-114310@locaweb.com.br\nEND:VCARD\n',24),(45,'2011-03-24 17:49:24',0,'Alexandre Conceicao','alexandre.conceicao@locaweb.com.br','Alexandre','Conceicao','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Conceicao\nN:Conceicao;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.conceicao@locaweb.com.br\nEND:VCARD\n',24),(46,'2011-03-24 17:49:24',0,'Alexandre Costa','alexandre.costa@locaweb.com.br','Alexandre','Costa','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Costa\nN:Costa;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.costa@locaweb.com.br\nEND:VCARD\n',24),(47,'2011-03-24 17:49:24',0,'Alexandre Curce','alexandre.curce-deleted-10012011-151818@locaweb.com.br','Alexandre','Curce','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Curce\nN:Curce;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.curce-deleted-10012011-151818@locaweb.com.br\nEND:VCARD\n',24),(48,'2011-03-24 17:49:24',0,'Alexandre Freire','alexandre.freire@locaweb.com.br','Alexandre','Freire','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Freire\nN:Freire;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.freire@locaweb.com.br\nEND:VCARD\n',24),(49,'2011-03-24 17:49:24',0,'Alexandre Glikas','alexandre.glikas@locaweb.com.br','','Glikas','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Glikas\nN:Glikas;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.glikas@locaweb.com.br\nEND:VCARD\n',24),(50,'2011-03-24 17:49:24',0,'Alexandre Nascimento ','alexandre.nascimento@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Nascimento \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.nascimento@locaweb.com.br\nEND:VCARD\n',24),(51,'2011-03-24 17:49:24',0,'Alexandre Pontes','alexandre.pontes@locaweb.com.br','Alexandre','Pontes','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Pontes\nN:Pontes;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.pontes@locaweb.com.br\nEND:VCARD\n',24),(52,'2011-03-24 17:49:24',0,'Alexandre Santana','alexandre.santana@locaweb.com.br','Alexandre','Santana','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Santana\nN:Santana;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.santana@locaweb.com.br\nEND:VCARD\n',24),(53,'2011-03-24 17:49:24',0,'Alexandre Silva','alexandre.silva@locaweb.com.br','Alexandre','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Silva\nN:Silva;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.silva@locaweb.com.br\nEND:VCARD\n',24),(54,'2011-03-24 17:49:24',0,'Alexandre Soares','alexandre.soares-deleted-09092010-120653@locaweb.com.br','Alexandre','Soares','BEGIN:VCARD\nVERSION:3.0\nFN:Alexandre Soares\nN:Soares;Alexandre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexandre.soares-deleted-09092010-120653@locaweb.com.br\nEND:VCARD\n',24),(55,'2011-03-24 17:49:24',0,'Alexsander Alves','alexsander.alves-deleted-07022011-181350@locaweb.com.br','Alexsander','Alves','BEGIN:VCARD\nVERSION:3.0\nFN:Alexsander Alves\nN:Alves;Alexsander;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alexsander.alves-deleted-07022011-181350@locaweb.com.br\nEND:VCARD\n',24),(56,'2011-03-24 17:49:24',0,'Alfred Maechler','alfred.maechler@locaweb.com.br','Alfred','Maechler','BEGIN:VCARD\nVERSION:3.0\nFN:Alfred Maechler\nN:Maechler;Alfred;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alfred.maechler@locaweb.com.br\nEND:VCARD\n',24),(57,'2011-03-24 17:49:24',0,'Alfredo Almeida','alfredo.almeida@locaweb.com.br','Alfredo','Almeida','BEGIN:VCARD\nVERSION:3.0\nFN:Alfredo Almeida\nN:Almeida;Alfredo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alfredo.almeida@locaweb.com.br\nEND:VCARD\n',24),(58,'2011-03-24 17:49:24',0,'Aliane Cafe ','aliane.cafe@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Aliane Cafe \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:aliane.cafe@locaweb.com.br\nEND:VCARD\n',24),(59,'2011-03-24 17:49:24',0,'Aline Dias','aline.dias-deleted-25012011-111821@locaweb.com.br','Aline','Dias','BEGIN:VCARD\nVERSION:3.0\nFN:Aline Dias\nN:Dias;Aline;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:aline.dias-deleted-25012011-111821@locaweb.com.br\nEND:VCARD\n',24),(60,'2011-03-24 17:49:24',0,'Aline Goldsztejn','aline.goldsztejn@locaweb.com.br','','Goldsztejn','BEGIN:VCARD\nVERSION:3.0\nFN:Aline Goldsztejn\nN:Goldsztejn;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:aline.goldsztejn@locaweb.com.br\nEND:VCARD\n',24),(61,'2011-03-24 17:49:24',0,'Aline Goncalves','aline.goncalves@locaweb.com.br','Aline','Goncalves','BEGIN:VCARD\nVERSION:3.0\nFN:Aline Goncalves\nN:Goncalves;Aline;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:aline.goncalves@locaweb.com.br\nEND:VCARD\n',24),(62,'2011-03-24 17:49:24',0,'Aline Silva','aline.silva@locaweb.com.br','Aline','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Aline Silva\nN:Silva;Aline;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:aline.silva@locaweb.com.br\nEND:VCARD\n',24),(63,'2011-03-24 17:49:24',0,'Alison Costa','alison.costa@locaweb.com.br','Alison','Costa','BEGIN:VCARD\nVERSION:3.0\nFN:Alison Costa\nN:Costa;Alison;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alison.costa@locaweb.com.br\nEND:VCARD\n',24),(64,'2011-03-24 17:49:25',0,'Alison Fabio','alison.fabio@locaweb.com.br','Alison','Fabio','BEGIN:VCARD\nVERSION:3.0\nFN:Alison Fabio\nN:Fabio;Alison;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:alison.fabio@locaweb.com.br\nEND:VCARD\n',24),(65,'2011-03-24 17:49:25',0,'Allan Diniz ','allan.diniz@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Allan Diniz \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:allan.diniz@locaweb.com.br\nEND:VCARD\n',24),(66,'2011-03-24 17:49:25',0,'Allan Mauad','allan.mauad@locaweb.com.br','Allan','Mauad','BEGIN:VCARD\nVERSION:3.0\nFN:Allan Mauad\nN:Mauad;Allan;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:allan.mauad@locaweb.com.br\nEND:VCARD\n',24),(67,'2011-03-24 17:49:25',0,'Allisson Soares ','allisson.soares@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Allisson Soares \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:allisson.soares@locaweb.com.br\nEND:VCARD\n',24),(68,'2011-03-24 17:49:25',0,'Ana Carolina','ana.carolina@locaweb.com.br','Ana','Carolina','BEGIN:VCARD\nVERSION:3.0\nFN:Ana Carolina\nN:Carolina;Ana;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ana.carolina@locaweb.com.br\nEND:VCARD\n',24),(69,'2011-03-24 17:49:25',0,'Ana Hellembrand','ana.hellembrand@locaweb.com.br','Ana','Hellembrand','BEGIN:VCARD\nVERSION:3.0\nFN:Ana Hellembrand\nN:Hellembrand;Ana;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ana.hellembrand@locaweb.com.br\nEND:VCARD\n',24),(70,'2011-03-24 17:49:25',0,'Ana Juraitis','ana.juraitis-deleted-19102010-114330@locaweb.com.br','Ana','Juraitis','BEGIN:VCARD\nVERSION:3.0\nFN:Ana Juraitis\nN:Juraitis;Ana;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ana.juraitis-deleted-19102010-114330@locaweb.com.br\nEND:VCARD\n',24),(71,'2011-03-24 17:49:25',0,'Ana Silva ','ana.silva-deleted-20072010-095600@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Ana Silva \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ana.silva-deleted-20072010-095600@locaweb.com.br\nEND:VCARD\n',24),(72,'2011-03-24 17:49:25',0,'Anderson Abreu','anderson.abreu@locaweb.com.br','Anderson','Abreu','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Abreu\nN:Abreu;Anderson;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.abreu@locaweb.com.br\nEND:VCARD\n',24),(73,'2011-03-24 17:49:25',0,'Anderson Martins','anderson.martins@locaweb.com.br','Anderson','Martins','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Martins\nN:Martins;Anderson;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.martins@locaweb.com.br\nEND:VCARD\n',24),(74,'2011-03-24 17:49:25',0,'Anderson Mendes ','anderson.mendes@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Mendes \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.mendes@locaweb.com.br\nEND:VCARD\n',24),(75,'2011-03-24 17:49:25',0,'Anderson Moreira ','anderson.moreira@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Moreira \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.moreira@locaweb.com.br\nEND:VCARD\n',24),(76,'2011-03-24 17:49:25',0,'Anderson Oliveira ','anderson.oliveira@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Oliveira \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.oliveira@locaweb.com.br\nEND:VCARD\n',24),(77,'2011-03-24 17:49:26',0,'Anderson Souza','anderson.souza@locaweb.com.br','Anderson','Souza','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Souza\nN:Souza;Anderson;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.souza@locaweb.com.br\nEND:VCARD\n',24),(78,'2011-03-24 17:49:26',0,'Anderson Vieira ','anderson.vieira@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Anderson Vieira \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:anderson.vieira@locaweb.com.br\nEND:VCARD\n',24),(79,'2011-03-24 17:49:26',0,'Andre Andrade','andre.andrade@locaweb.com.br','Andre','Andrade','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Andrade\nN:Andrade;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.andrade@locaweb.com.br\nEND:VCARD\n',24),(80,'2011-03-24 17:49:26',0,'Andre Duarte ','andre.duarte@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Duarte \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.duarte@locaweb.com.br\nEND:VCARD\n',24),(81,'2011-03-24 17:49:26',0,'André Ferraz','andre.ferraz@locaweb.com.br','','Ferraz','BEGIN:VCARD\nVERSION:3.0\nFN:André Ferraz\nN:Ferraz;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.ferraz@locaweb.com.br\nEND:VCARD\n',24),(82,'2011-03-24 17:49:26',0,'Andre Gomes','andre.gomes@locaweb.com.br','Andre','Gomes','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Gomes\nN:Gomes;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.gomes@locaweb.com.br\nEND:VCARD\n',24),(83,'2011-03-24 17:49:26',0,'Andre Lima','andre.lima@locaweb.com.br','','Lima','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Lima\nN:Lima;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.lima@locaweb.com.br\nEND:VCARD\n',24),(84,'2011-03-24 17:49:26',0,'Andre Luiz','andre.luiz@locaweb.com.br','Andre','Luiz','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Luiz\nN:Luiz;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.luiz@locaweb.com.br\nEND:VCARD\n',24),(85,'2011-03-24 17:49:26',0,'Andre Muraro ','andre.muraro@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Muraro \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.muraro@locaweb.com.br\nEND:VCARD\n',24),(86,'2011-03-24 17:49:26',0,'Andre Oliveira','andre.oliveira@locaweb.com.br','Andre','Oliveira','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Oliveira\nN:Oliveira;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.oliveira@locaweb.com.br\nEND:VCARD\n',24),(87,'2011-03-24 17:49:26',0,'Andre Osti ','andre.osti-deleted-27082010-165627@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Osti \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.osti-deleted-27082010-165627@locaweb.com.br\nEND:VCARD\n',24),(88,'2011-03-24 17:49:26',0,'Andre Pimentel ','andre.pimentel@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Pimentel \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.pimentel@locaweb.com.br\nEND:VCARD\n',24),(89,'2011-03-24 17:49:26',0,'Andre Santos ','andre.santos-deleted-25112010-143347@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Santos \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.santos-deleted-25112010-143347@locaweb.com.br\nEND:VCARD\n',24),(90,'2011-03-24 17:49:26',0,'Andre Siqueira','andre.siqueira-deleted-19102010-114434@locaweb.com.br','Andre','Siqueira','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Siqueira\nN:Siqueira;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.siqueira-deleted-19102010-114434@locaweb.com.br\nEND:VCARD\n',24),(91,'2011-03-24 17:49:26',0,'Andre Teixeira','andre.teixeira@locaweb.com.br','Andre','Teixeira','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Teixeira\nN:Teixeira;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.teixeira@locaweb.com.br\nEND:VCARD\n',24),(92,'2011-03-24 17:49:26',0,'Andre Tellini','andre.tellini-deleted-06122010-115457@locaweb.com.br','','Tellini','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Tellini\nN:Tellini;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.tellini-deleted-06122010-115457@locaweb.com.br\nEND:VCARD\n',24),(93,'2011-03-24 17:49:26',0,'Andre Toso','andre.toso@locaweb.com.br','Andre','Toso','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Toso\nN:Toso;Andre;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.toso@locaweb.com.br\nEND:VCARD\n',24),(94,'2011-03-24 17:49:26',0,'Andre Zanetti ','andre.zanetti@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andre Zanetti \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andre.zanetti@locaweb.com.br\nEND:VCARD\n',24),(95,'2011-03-24 17:49:26',0,'Andrea Gora ','andrea.gora@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andrea Gora \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andrea.gora@locaweb.com.br\nEND:VCARD\n',24),(96,'2011-03-24 18:22:33',1,'Andrea Surerus','andrea.surerus@locaweb.com.br','Andrea','Surerus','BEGIN:VCARD\nVERSION:3.0\nFN:Andrea Surerus\nN:Surerus;Andrea;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andrea.surerus@locaweb.com.br\nEND:VCARD\n',24),(97,'2011-03-24 17:49:26',0,'Andressa Vieira','andressa.vieira@locaweb.com.br','Andressa','Vieira','BEGIN:VCARD\nVERSION:3.0\nFN:Andressa Vieira\nN:Vieira;Andressa;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andressa.vieira@locaweb.com.br\nEND:VCARD\n',24),(98,'2011-03-24 17:49:26',0,'Andrew Andrade','andrew.andrade@locaweb.com.br','Andrew','Andrade','BEGIN:VCARD\nVERSION:3.0\nFN:Andrew Andrade\nN:Andrade;Andrew;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andrew.andrade@locaweb.com.br\nEND:VCARD\n',24),(99,'2011-03-24 17:49:26',0,'Andreza Vasconcelos ','andreza.godoy@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Andreza Vasconcelos \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andreza.godoy@locaweb.com.br\nEND:VCARD\n',24),(100,'2011-03-24 17:49:26',0,'Andreza Santos','andreza.santos@locaweb.com.br','Andreza','Santos','BEGIN:VCARD\nVERSION:3.0\nFN:Andreza Santos\nN:Santos;Andreza;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:andreza.santos@locaweb.com.br\nEND:VCARD\n',24),(101,'2011-03-24 17:49:26',0,'Angelica Franca ','angelica.franca@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Angelica Franca \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:angelica.franca@locaweb.com.br\nEND:VCARD\n',24),(102,'2011-03-24 17:49:26',0,'Antelio Sap ','antelio.sap@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Antelio Sap \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:antelio.sap@locaweb.com.br\nEND:VCARD\n',24),(103,'2011-03-24 17:49:26',0,'Guilherme Mazzola ','antiga.guilherme.mazzola@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Guilherme Mazzola \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:antiga.guilherme.mazzola@locaweb.com.br\nEND:VCARD\n',24),(104,'2011-03-24 17:49:26',0,'Antonio Marques ','antonio.marques@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Antonio Marques \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:antonio.marques@locaweb.com.br\nEND:VCARD\n',24),(105,'2011-03-24 17:49:26',0,'Apoio Datacenter','apoio.datacenter@locaweb.com.br','Apoio','Datacenter','BEGIN:VCARD\nVERSION:3.0\nFN:Apoio Datacenter\nN:Datacenter;Apoio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:apoio.datacenter@locaweb.com.br\nEND:VCARD\n',24),(106,'2011-03-24 17:49:27',0,'Ari Milani','ari.milani@locaweb.com.br','Ari','Milani','BEGIN:VCARD\nVERSION:3.0\nFN:Ari Milani\nN:Milani;Ari;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ari.milani@locaweb.com.br\nEND:VCARD\n',24),(107,'2011-03-24 17:49:27',0,'Arimendes Oliveira','arimendes.oliveira@locaweb.com.br','Arimendes','Oliveira','BEGIN:VCARD\nVERSION:3.0\nFN:Arimendes Oliveira\nN:Oliveira;Arimendes;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:arimendes.oliveira@locaweb.com.br\nEND:VCARD\n',24),(108,'2011-03-24 17:49:27',0,'Arnaldo Souza','arnaldo.souza-deleted-28072010-145651@locaweb.com.br','Arnaldo','Souza','BEGIN:VCARD\nVERSION:3.0\nFN:Arnaldo Souza\nN:Souza;Arnaldo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:arnaldo.souza-deleted-28072010-145651@locaweb.com.br\nEND:VCARD\n',24),(109,'2011-03-24 17:49:27',0,'Lista do grupo de arquitetura','arquitetura@locaweb.com.br','','arquitetura','BEGIN:VCARD\nVERSION:3.0\nFN:Lista do grupo de arquitetura\nN:arquitetura;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:arquitetura@locaweb.com.br\nEND:VCARD\n',24),(110,'2011-03-24 17:49:27',0,'Asteriskdead','asteriskdead@locaweb.com.br','','Asteriskdead','BEGIN:VCARD\nVERSION:3.0\nFN:Asteriskdead\nN:Asteriskdead;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:asteriskdead@locaweb.com.br\nEND:VCARD\n',24),(111,'2011-03-24 17:49:27',0,'Atualizatec-corp','atualizatec-corp@locaweb.com.br','','Atualizatec-corp','BEGIN:VCARD\nVERSION:3.0\nFN:Atualizatec-corp\nN:Atualizatec-corp;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:atualizatec-corp@locaweb.com.br\nEND:VCARD\n',24),(112,'2011-03-24 17:49:27',0,'Auditoria','auditoria@locaweb.com.br','','Auditoria','BEGIN:VCARD\nVERSION:3.0\nFN:Auditoria\nN:Auditoria;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:auditoria@locaweb.com.br\nEND:VCARD\n',24),(113,'2011-03-24 17:49:27',0,'autocad ','autocad@locaweb.com.br','autocad','','BEGIN:VCARD\nVERSION:3.0\nFN:autocad \nN:;autocad;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:autocad@locaweb.com.br\nEND:VCARD\n',24),(114,'2011-03-24 17:49:27',0,'Autorizacao','autorizacao@locaweb.com.br','','Autorizacao','BEGIN:VCARD\nVERSION:3.0\nFN:Autorizacao\nN:Autorizacao;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:autorizacao@locaweb.com.br\nEND:VCARD\n',24),(115,'2011-03-24 17:49:27',0,'Ba Interconexao','ba.interconexao@locaweb.com.br','','Interconexao','BEGIN:VCARD\nVERSION:3.0\nFN:Ba Interconexao\nN:Interconexao;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ba.interconexao@locaweb.com.br\nEND:VCARD\n',24),(116,'2011-03-24 17:49:27',0,'ba.portabilidade','ba.portabilidade@locaweb.com.br','','ba.portabilidade','BEGIN:VCARD\nVERSION:3.0\nFN:ba.portabilidade\nN:ba.portabilidade;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ba.portabilidade@locaweb.com.br\nEND:VCARD\n',24),(117,'2011-03-24 17:49:27',0,'Back Office','backoffice@locaweb.com.br','','Office','BEGIN:VCARD\nVERSION:3.0\nFN:Back Office\nN:Office;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:backoffice@locaweb.com.br\nEND:VCARD\n',24),(118,'2011-03-24 17:49:28',0,'bacula','bacula@locaweb.com.br','','bacula','BEGIN:VCARD\nVERSION:3.0\nFN:bacula\nN:bacula;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bacula@locaweb.com.br\nEND:VCARD\n',24),(119,'2011-03-24 17:49:28',0,'barcamp ','barcamp@locaweb.com.br','barcamp','','BEGIN:VCARD\nVERSION:3.0\nFN:barcamp \nN:;barcamp;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:barcamp@locaweb.com.br\nEND:VCARD\n',24),(120,'2011-03-24 17:49:28',0,'Basilio Barbosa','basilio.barbosa@locaweb.com.br','Basilio','Barbosa','BEGIN:VCARD\nVERSION:3.0\nFN:Basilio Barbosa\nN:Barbosa;Basilio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:basilio.barbosa@locaweb.com.br\nEND:VCARD\n',24),(121,'2011-03-24 17:49:28',0,'billing billing','billing@locaweb.com.br','billing','billing','BEGIN:VCARD\nVERSION:3.0\nFN:billing billing\nN:billing;billing;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:billing@locaweb.com.br\nEND:VCARD\n',24),(122,'2011-03-24 17:49:28',0,'board board','board@locaweb.com.br','board','board','BEGIN:VCARD\nVERSION:3.0\nFN:board board\nN:board;board;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:board@locaweb.com.br\nEND:VCARD\n',24),(123,'2011-03-24 17:49:28',0,'branches branches','branches@locaweb.com.br','branches','branches','BEGIN:VCARD\nVERSION:3.0\nFN:branches branches\nN:branches;branches;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:branches@locaweb.com.br\nEND:VCARD\n',24),(124,'2011-03-24 17:49:28',0,'Breno Lastra','breno.lastra@locaweb.com.br','Breno','Lastra','BEGIN:VCARD\nVERSION:3.0\nFN:Breno Lastra\nN:Lastra;Breno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:breno.lastra@locaweb.com.br\nEND:VCARD\n',24),(125,'2011-03-24 17:49:28',0,'Brigada ','brigada@locaweb.com.br','Brigada','','BEGIN:VCARD\nVERSION:3.0\nFN:Brigada \nN:;Brigada;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:brigada@locaweb.com.br\nEND:VCARD\n',24),(126,'2011-03-24 17:49:28',0,'brigadista','brigadista@locaweb.com.br','','brigadista','BEGIN:VCARD\nVERSION:3.0\nFN:brigadista\nN:brigadista;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:brigadista@locaweb.com.br\nEND:VCARD\n',24),(127,'2011-03-24 17:49:28',0,'Brunno Mollica ','brunno.mollica@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Brunno Mollica \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:brunno.mollica@locaweb.com.br\nEND:VCARD\n',24),(128,'2011-03-24 17:49:28',0,'Bruno Alves ','bruno.alves@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Alves \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.alves@locaweb.com.br\nEND:VCARD\n',24),(129,'2011-03-24 17:49:28',0,'Bruno Bolivar','bruno.bolivar@locaweb.com.br','Bruno','Bolivar','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Bolivar\nN:Bolivar;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.bolivar@locaweb.com.br\nEND:VCARD\n',24),(130,'2011-03-24 17:49:28',0,'Bruno Coimbra','bruno.coimbra-deleted-21092010-180910@locaweb.com.br','Bruno','Coimbra','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Coimbra\nN:Coimbra;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.coimbra-deleted-21092010-180910@locaweb.com.br\nEND:VCARD\n',24),(131,'2011-03-24 17:49:28',0,'Bruno Gonçalves','bruno.goncalves-deleted-24112010-125407@locaweb.com.br','Bruno','Gonçalves','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Gonçalves\nN:Gonçalves;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.goncalves-deleted-24112010-125407@locaweb.com.br\nEND:VCARD\n',24),(132,'2011-03-24 17:49:28',0,'Bruno Henrique ','bruno.henrique@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Henrique \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.henrique@locaweb.com.br\nEND:VCARD\n',24),(133,'2011-03-24 17:49:28',0,'Bruno Hildebrando','bruno.hildebrando@locaweb.com.br','Bruno','Hildebrando','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Hildebrando\nN:Hildebrando;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.hildebrando@locaweb.com.br\nEND:VCARD\n',24),(134,'2011-03-24 17:49:28',0,'Bruno Lourenco','bruno.lourenco@locaweb.com.br','Bruno','Lourenco','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Lourenco\nN:Lourenco;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.lourenco@locaweb.com.br\nEND:VCARD\n',24),(135,'2011-03-24 17:49:28',0,'Bruno Luppi','bruno.luppi@locaweb.com.br','Bruno','Luppi','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Luppi\nN:Luppi;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.luppi@locaweb.com.br\nEND:VCARD\n',24),(136,'2011-03-24 17:49:28',0,'Bruno Nilo','bruno.nilo@locaweb.com.br','Bruno','Nilo','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Nilo\nN:Nilo;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.nilo@locaweb.com.br\nEND:VCARD\n',24),(137,'2011-03-24 17:49:28',0,'Bruno Paiuca','bruno.paiuca@locaweb.com.br','Bruno','Paiuca','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Paiuca\nN:Paiuca;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.paiuca@locaweb.com.br\nEND:VCARD\n',24),(138,'2011-03-24 17:49:29',0,'Bruno Pasquali','bruno.pasquali@locaweb.com.br','Bruno','Pasquali','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Pasquali\nN:Pasquali;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.pasquali@locaweb.com.br\nEND:VCARD\n',24),(139,'2011-03-24 17:49:29',0,'Bruno Pereira','bruno.pereira@locaweb.com.br','Bruno','Pereira','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Pereira\nN:Pereira;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.pereira@locaweb.com.br\nEND:VCARD\n',24),(140,'2011-03-24 17:49:29',0,'Bruno Pires','bruno.pires@locaweb.com.br','Bruno','Pires','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Pires\nN:Pires;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.pires@locaweb.com.br\nEND:VCARD\n',24),(141,'2011-03-24 17:49:29',0,'Bruno Santana','bruno.santana@locaweb.com.br','Bruno','Santana','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Santana\nN:Santana;Bruno;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.santana@locaweb.com.br\nEND:VCARD\n',24),(142,'2011-03-24 17:49:29',0,'Bruno Silva ','bruno.silva@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Bruno Silva \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:bruno.silva@locaweb.com.br\nEND:VCARD\n',24),(143,'2011-03-24 17:49:29',0,'Caio Braga','caio.braga@locaweb.com.br','Caio','Braga','BEGIN:VCARD\nVERSION:3.0\nFN:Caio Braga\nN:Braga;Caio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:caio.braga@locaweb.com.br\nEND:VCARD\n',24),(144,'2011-03-24 17:49:29',0,'Caio Duarte','caio.duarte-deleted-15092010-094312@locaweb.com.br','Caio','Duarte','BEGIN:VCARD\nVERSION:3.0\nFN:Caio Duarte\nN:Duarte;Caio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:caio.duarte-deleted-15092010-094312@locaweb.com.br\nEND:VCARD\n',24),(145,'2011-03-24 17:49:29',0,'Caio Spadafora ','caio.spadafora@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Caio Spadafora \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:caio.spadafora@locaweb.com.br\nEND:VCARD\n',24),(146,'2011-03-24 17:49:29',0,'Camila Kamimura ','camila.kamimura@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Camila Kamimura \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:camila.kamimura@locaweb.com.br\nEND:VCARD\n',24),(147,'2011-03-24 17:49:29',0,'Camila Morita','camila.morita@locaweb.com.br','Camila','Morita','BEGIN:VCARD\nVERSION:3.0\nFN:Camila Morita\nN:Morita;Camila;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:camila.morita@locaweb.com.br\nEND:VCARD\n',24),(148,'2011-03-24 17:49:29',0,'Camila Santana','camila.santana@locaweb.com.br','Camila','Santana','BEGIN:VCARD\nVERSION:3.0\nFN:Camila Santana\nN:Santana;Camila;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:camila.santana@locaweb.com.br\nEND:VCARD\n',24),(149,'2011-03-24 17:49:29',0,'Camila Santos ','camila.santos@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Camila Santos \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:camila.santos@locaweb.com.br\nEND:VCARD\n',24),(150,'2011-03-24 17:49:29',0,'Camila Zamora','camila.zamora@locaweb.com.br','Camila','Zamora','BEGIN:VCARD\nVERSION:3.0\nFN:Camila Zamora\nN:Zamora;Camila;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:camila.zamora@locaweb.com.br\nEND:VCARD\n',24),(151,'2011-03-24 17:49:29',0,'Carina Santos','carina.santos@locaweb.com.br','Carina','Santos','BEGIN:VCARD\nVERSION:3.0\nFN:Carina Santos\nN:Santos;Carina;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carina.santos@locaweb.com.br\nEND:VCARD\n',24),(152,'2011-03-24 17:49:29',0,'Carla Andrade','carla.andrade@locaweb.com.br','Carla','Andrade','BEGIN:VCARD\nVERSION:3.0\nFN:Carla Andrade\nN:Andrade;Carla;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carla.andrade@locaweb.com.br\nEND:VCARD\n',24),(153,'2011-03-24 17:49:29',0,'Carla Brunelli','carla.brunelli@locaweb.com.br','Carla','Brunelli','BEGIN:VCARD\nVERSION:3.0\nFN:Carla Brunelli\nN:Brunelli;Carla;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carla.brunelli@locaweb.com.br\nEND:VCARD\n',24),(154,'2011-03-24 17:49:29',0,'Carlos Eduardo','carlos.eduardo@locaweb.com.br','','Eduardo','BEGIN:VCARD\nVERSION:3.0\nFN:Carlos Eduardo\nN:Eduardo;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carlos.eduardo@locaweb.com.br\nEND:VCARD\n',24),(155,'2011-03-24 17:49:29',0,'Carlos Eugenio ','carlos.eugenio@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Carlos Eugenio \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carlos.eugenio@locaweb.com.br\nEND:VCARD\n',24),(156,'2011-03-24 17:49:29',0,'Carlos Goncalves ','carlos.goncalves@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Carlos Goncalves \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carlos.goncalves@locaweb.com.br\nEND:VCARD\n',24),(157,'2011-03-24 17:49:29',0,'Carlos Mendonca ','carlos.mendonca@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Carlos Mendonca \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carlos.mendonca@locaweb.com.br\nEND:VCARD\n',24),(158,'2011-03-24 17:49:29',0,'Carlos Saturnino','carlos.saturnino@locaweb.com.br','Carlos','Saturnino','BEGIN:VCARD\nVERSION:3.0\nFN:Carlos Saturnino\nN:Saturnino;Carlos;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carlos.saturnino@locaweb.com.br\nEND:VCARD\n',24),(159,'2011-03-24 17:49:29',0,'Carolina Sales','carolina.sales@locaweb.com.br','','Sales','BEGIN:VCARD\nVERSION:3.0\nFN:Carolina Sales\nN:Sales;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carolina.sales@locaweb.com.br\nEND:VCARD\n',24),(160,'2011-03-24 17:49:29',0,'Carolina Souza','carolina.souza@locaweb.com.br','Carolina','Souza','BEGIN:VCARD\nVERSION:3.0\nFN:Carolina Souza\nN:Souza;Carolina;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carolina.souza@locaweb.com.br\nEND:VCARD\n',24),(161,'2011-03-24 17:49:29',0,'Caroline Pucci ','caroline.pucci-deleted-02082010-154531@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Caroline Pucci \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:caroline.pucci-deleted-02082010-154531@locaweb.com.br\nEND:VCARD\n',24),(162,'2011-03-24 17:49:29',0,'carreiratecnica','carreiratecnica@locaweb.com.br','','carreiratecnica','BEGIN:VCARD\nVERSION:3.0\nFN:carreiratecnica\nN:carreiratecnica;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:carreiratecnica@locaweb.com.br\nEND:VCARD\n',24),(163,'2011-03-24 17:49:29',0,'Cassio Engel','cassio.engel-deleted-18102010-182626@locaweb.com.br','Cassio','Engel','BEGIN:VCARD\nVERSION:3.0\nFN:Cassio Engel\nN:Engel;Cassio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cassio.engel-deleted-18102010-182626@locaweb.com.br\nEND:VCARD\n',24),(164,'2011-03-24 17:49:29',0,'Cegonha mobimail.locaweb','cegonha@locaweb.com.br','Cegonha','mobimail.locaweb','BEGIN:VCARD\nVERSION:3.0\nFN:Cegonha mobimail.locaweb\nN:mobimail.locaweb;Cegonha;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cegonha@locaweb.com.br\nEND:VCARD\n',24),(165,'2011-03-24 17:49:29',0,'Celestino Gomes','celestino.gomes-deleted-03122010-174323@locaweb.com.br','Celestino','Gomes','BEGIN:VCARD\nVERSION:3.0\nFN:Celestino Gomes\nN:Gomes;Celestino;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:celestino.gomes-deleted-03122010-174323@locaweb.com.br\nEND:VCARD\n',24),(166,'2011-03-24 17:49:29',0,'Celso Nunes','celso.nunes@locaweb.com.br','','Nunes','BEGIN:VCARD\nVERSION:3.0\nFN:Celso Nunes\nN:Nunes;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:celso.nunes@locaweb.com.br\nEND:VCARD\n',24),(167,'2011-03-24 17:49:30',0,'Celso Paulon','celso.paulon@locaweb.com.br','Celso','Paulon','BEGIN:VCARD\nVERSION:3.0\nFN:Celso Paulon\nN:Paulon;Celso;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:celso.paulon@locaweb.com.br\nEND:VCARD\n',24),(168,'2011-03-24 17:49:30',0,'Certificado','certificado@locaweb.com.br','','Certificado','BEGIN:VCARD\nVERSION:3.0\nFN:Certificado\nN:Certificado;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:certificado@locaweb.com.br\nEND:VCARD\n',24),(169,'2011-03-24 17:49:30',0,'certificate certificate','certificate@locaweb.com.br','certificate','certificate','BEGIN:VCARD\nVERSION:3.0\nFN:certificate certificate\nN:certificate;certificate;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:certificate@locaweb.com.br\nEND:VCARD\n',24),(170,'2011-03-24 17:49:30',0,'Cesar Morilla','cesar.morilla@locaweb.com.br','Cesar','Morilla','BEGIN:VCARD\nVERSION:3.0\nFN:Cesar Morilla\nN:Morilla;Cesar;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cesar.morilla@locaweb.com.br\nEND:VCARD\n',24),(171,'2011-03-24 17:49:30',0,'cfengine','cfengine@locaweb.com.br','','cfengine','BEGIN:VCARD\nVERSION:3.0\nFN:cfengine\nN:cfengine;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cfengine@locaweb.com.br\nEND:VCARD\n',24),(172,'2011-03-24 17:49:30',0,'Chamados Micro Indormática','chamados@locaweb.com.br','Chamados','Micro Indormática','BEGIN:VCARD\nVERSION:3.0\nFN:Chamados Micro Indormática\nN:Micro Indormática;Chamados;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:chamados@locaweb.com.br\nEND:VCARD\n',24),(173,'2011-03-24 17:49:30',0,'Charles Amaral','charles.amaral@locaweb.com.br','Charles','Amaral','BEGIN:VCARD\nVERSION:3.0\nFN:Charles Amaral\nN:Amaral;Charles;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:charles.amaral@locaweb.com.br\nEND:VCARD\n',24),(174,'2011-03-24 17:49:30',0,'Chat','chat2@locaweb.com.br','','Chat','BEGIN:VCARD\nVERSION:3.0\nFN:Chat\nN:Chat;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:chat2@locaweb.com.br\nEND:VCARD\n',24),(175,'2011-03-24 17:49:30',0,'Christopher Guerra','christopher.guerra@locaweb.com.br','Christopher','Guerra','BEGIN:VCARD\nVERSION:3.0\nFN:Christopher Guerra\nN:Guerra;Christopher;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:christopher.guerra@locaweb.com.br\nEND:VCARD\n',24),(176,'2011-03-24 17:49:30',0,'Cilene Lopes ','cilene.lopes-deleted-20102010-154445@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Cilene Lopes \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cilene.lopes-deleted-20102010-154445@locaweb.com.br\nEND:VCARD\n',24),(177,'2011-03-24 17:49:30',0,'Cintia Cavalheiro','cintia.cavalheiro-deleted-20102010-154445@locaweb.com.br','Cintia','Cavalheiro','BEGIN:VCARD\nVERSION:3.0\nFN:Cintia Cavalheiro\nN:Cavalheiro;Cintia;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cintia.cavalheiro-deleted-20102010-154445@locaweb.com.br\nEND:VCARD\n',24),(178,'2011-03-24 17:49:30',0,'Cintia Nascimento ','cintia.nascimento@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Cintia Nascimento \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cintia.nascimento@locaweb.com.br\nEND:VCARD\n',24),(179,'2011-03-24 17:49:30',0,'cipa ','cipa@locaweb.com.br','cipa','','BEGIN:VCARD\nVERSION:3.0\nFN:cipa \nN:;cipa;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cipa@locaweb.com.br\nEND:VCARD\n',24),(180,'2011-03-24 17:49:30',0,'cipa1','cipa1@locaweb.com.br','','cipa1','BEGIN:VCARD\nVERSION:3.0\nFN:cipa1\nN:cipa1;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cipa1@locaweb.com.br\nEND:VCARD\n',24),(181,'2011-03-24 17:49:30',0,'Clara Silva','clara.silva@locaweb.com.br','Clara','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Clara Silva\nN:Silva;Clara;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:clara.silva@locaweb.com.br\nEND:VCARD\n',24),(182,'2011-03-24 17:49:30',0,'Claudemir Vargas','claudemir.vargas@locaweb.com.br','Claudemir','Vargas','BEGIN:VCARD\nVERSION:3.0\nFN:Claudemir Vargas\nN:Vargas;Claudemir;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudemir.vargas@locaweb.com.br\nEND:VCARD\n',24),(183,'2011-03-24 17:49:30',0,'Claudio Filho','claudio.filho@locaweb.com.br','Claudio','Filho','BEGIN:VCARD\nVERSION:3.0\nFN:Claudio Filho\nN:Filho;Claudio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudio.filho@locaweb.com.br\nEND:VCARD\n',24),(184,'2011-03-24 17:49:30',0,'Claudio Germack','claudio.germack@locaweb.com.br','Claudio','Germack','BEGIN:VCARD\nVERSION:3.0\nFN:Claudio Germack\nN:Germack;Claudio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudio.germack@locaweb.com.br\nEND:VCARD\n',24),(185,'2011-03-24 17:49:30',0,'Claudio Gora','claudio.gora@locaweb.com.br','','Gora','BEGIN:VCARD\nVERSION:3.0\nFN:Claudio Gora\nN:Gora;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudio.gora@locaweb.com.br\nEND:VCARD\n',24),(186,'2011-03-24 17:49:30',0,'Claudio Hessel ','claudio.hessel@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Claudio Hessel \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudio.hessel@locaweb.com.br\nEND:VCARD\n',24),(187,'2011-03-24 17:49:30',0,'Claudio Pereira','claudio.pereira-deleted-20072010-113318@locaweb.com.br','Claudio','Pereira','BEGIN:VCARD\nVERSION:3.0\nFN:Claudio Pereira\nN:Pereira;Claudio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudio.pereira-deleted-20072010-113318@locaweb.com.br\nEND:VCARD\n',24),(188,'2011-03-24 17:49:31',0,'Claudio Silva','claudio.silva-deleted-26112010-173035@locaweb.com.br','Claudio','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Claudio Silva\nN:Silva;Claudio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:claudio.silva-deleted-26112010-173035@locaweb.com.br\nEND:VCARD\n',24),(189,'2011-03-24 17:49:31',0,'Clayton Ormundo ','clayton.ormundo@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Clayton Ormundo \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:clayton.ormundo@locaweb.com.br\nEND:VCARD\n',24),(190,'2011-03-24 17:49:31',0,'Cleonice Silva','cleonice.silva@locaweb.com.br','Cleonice','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Cleonice Silva\nN:Silva;Cleonice;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cleonice.silva@locaweb.com.br\nEND:VCARD\n',24),(191,'2011-03-24 17:49:31',0,'clima-corp','clima-corp@locaweb.com.br','','clima-corp','BEGIN:VCARD\nVERSION:3.0\nFN:clima-corp\nN:clima-corp;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:clima-corp@locaweb.com.br\nEND:VCARD\n',24),(192,'2011-03-24 17:49:31',0,'clipping','clipping@locaweb.com.br','','clipping','BEGIN:VCARD\nVERSION:3.0\nFN:clipping\nN:clipping;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:clipping@locaweb.com.br\nEND:VCARD\n',24),(193,'2011-03-24 17:49:31',0,'cloud-dev','cloud-dev@locaweb.com.br','','cloud-dev','BEGIN:VCARD\nVERSION:3.0\nFN:cloud-dev\nN:cloud-dev;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cloud-dev@locaweb.com.br\nEND:VCARD\n',24),(194,'2011-03-24 17:49:31',0,'Cloud Infra','cloud-infra@locaweb.com.br','','Infra','BEGIN:VCARD\nVERSION:3.0\nFN:Cloud Infra\nN:Infra;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cloud-infra@locaweb.com.br\nEND:VCARD\n',24),(195,'2011-03-24 17:49:31',0,'cloud_backup','cloud_backup@locaweb.com.br','','cloud_backup','BEGIN:VCARD\nVERSION:3.0\nFN:cloud_backup\nN:cloud_backup;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cloud_backup@locaweb.com.br\nEND:VCARD\n',24),(196,'2011-03-24 17:49:31',0,'cloud_sqlserver','cloud_sqlserver@locaweb.com.br','','cloud_sqlserver','BEGIN:VCARD\nVERSION:3.0\nFN:cloud_sqlserver\nN:cloud_sqlserver;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cloud_sqlserver@locaweb.com.br\nEND:VCARD\n',24),(197,'2011-03-24 17:49:31',0,'cloud_storage_alarm','cloud_storage_alarm@locaweb.com.br','','cloud_storage_alarm','BEGIN:VCARD\nVERSION:3.0\nFN:cloud_storage_alarm\nN:cloud_storage_alarm;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cloud_storage_alarm@locaweb.com.br\nEND:VCARD\n',24),(198,'2011-03-24 17:49:31',0,'cm4all','cm4all@locaweb.com.br','','cm4all','BEGIN:VCARD\nVERSION:3.0\nFN:cm4all\nN:cm4all;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cm4all@locaweb.com.br\nEND:VCARD\n',24),(199,'2011-03-24 17:49:31',0,'Cobranca Locaweb','cobranca@locaweb.com.br','Cobranca','Locaweb','BEGIN:VCARD\nVERSION:3.0\nFN:Cobranca Locaweb\nN:Locaweb;Cobranca;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cobranca@locaweb.com.br\nEND:VCARD\n',24),(200,'2011-03-24 17:49:31',0,'Cobranca Corporativa','cobrancacorporativa@locaweb.com.br','Cobranca','Corporativa','BEGIN:VCARD\nVERSION:3.0\nFN:Cobranca Corporativa\nN:Corporativa;Cobranca;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cobrancacorporativa@locaweb.com.br\nEND:VCARD\n',24),(201,'2011-03-24 17:49:31',0,'Cobranca IDC','cobrancaidc@locaweb.com.br','Cobranca','IDC','BEGIN:VCARD\nVERSION:3.0\nFN:Cobranca IDC\nN:IDC;Cobranca;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cobrancaidc@locaweb.com.br\nEND:VCARD\n',24),(202,'2011-03-24 17:49:31',0,'Cobranca Registro','cobrancaregistro-deleted-30082010-142654@locaweb.com.br','Cobranca','Registro','BEGIN:VCARD\nVERSION:3.0\nFN:Cobranca Registro\nN:Registro;Cobranca;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cobrancaregistro-deleted-30082010-142654@locaweb.com.br\nEND:VCARD\n',24),(203,'2011-03-24 17:49:31',0,'comercio eletronio','comercio@locaweb.com.br','comercio','eletronio','BEGIN:VCARD\nVERSION:3.0\nFN:comercio eletronio\nN:eletronio;comercio;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:comercio@locaweb.com.br\nEND:VCARD\n',24),(204,'2011-03-24 17:49:31',0,'Comissao Festa 2009','comissao.festa2009@locaweb.com.br','Comissao','Festa 2009','BEGIN:VCARD\nVERSION:3.0\nFN:Comissao Festa 2009\nN:Festa 2009;Comissao;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:comissao.festa2009@locaweb.com.br\nEND:VCARD\n',24),(205,'2011-03-24 17:49:31',0,'comissao.lanche2009 ','comissao.lanche2009@locaweb.com.br','comissao.lanche2009','','BEGIN:VCARD\nVERSION:3.0\nFN:comissao.lanche2009 \nN:;comissao.lanche2009;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:comissao.lanche2009@locaweb.com.br\nEND:VCARD\n',24),(206,'2011-03-24 17:49:31',0,'comitedeci','comitedeci@locaweb.com.br','','comitedeci','BEGIN:VCARD\nVERSION:3.0\nFN:comitedeci\nN:comitedeci;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:comitedeci@locaweb.com.br\nEND:VCARD\n',24),(207,'2011-03-24 17:49:31',0,'CommTouch Reports','commtouch-fpreports@locaweb.com.br','','Reports','BEGIN:VCARD\nVERSION:3.0\nFN:CommTouch Reports\nN:Reports;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:commtouch-fpreports@locaweb.com.br\nEND:VCARD\n',24),(208,'2011-03-24 17:49:31',0,'Commtouch Oemupdates','commtouch_oemupdates@locaweb.com.br','','Oemupdates','BEGIN:VCARD\nVERSION:3.0\nFN:Commtouch Oemupdates\nN:Oemupdates;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:commtouch_oemupdates@locaweb.com.br\nEND:VCARD\n',24),(209,'2011-03-24 17:49:31',0,'Compras Locawe','compras@locaweb.com.br','Compras','Locawe','BEGIN:VCARD\nVERSION:3.0\nFN:Compras Locawe\nN:Locawe;Compras;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:compras@locaweb.com.br\nEND:VCARD\n',24),(210,'2011-03-24 17:49:31',0,'Compras IDC','compras.idc@locaweb.com.br','Compras','IDC','BEGIN:VCARD\nVERSION:3.0\nFN:Compras IDC\nN:IDC;Compras;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:compras.idc@locaweb.com.br\nEND:VCARD\n',24),(211,'2011-03-24 17:49:31',0,'Compras POA','compras.poa@locaweb.com.br','Compras','POA','BEGIN:VCARD\nVERSION:3.0\nFN:Compras POA\nN:POA;Compras;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:compras.poa@locaweb.com.br\nEND:VCARD\n',24),(212,'2011-03-24 17:49:32',0,'Compras RJ','compras.rj@locaweb.com.br','Compras','RJ','BEGIN:VCARD\nVERSION:3.0\nFN:Compras RJ\nN:RJ;Compras;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:compras.rj@locaweb.com.br\nEND:VCARD\n',24),(213,'2011-03-24 17:49:32',0,'Compras Sede','compras.sede@locaweb.com.br','Compras','Sede','BEGIN:VCARD\nVERSION:3.0\nFN:Compras Sede\nN:Sede;Compras;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:compras.sede@locaweb.com.br\nEND:VCARD\n',24),(214,'2011-03-24 17:49:32',0,'Compras Telecom','compras.telecom@locaweb.com.br','Compras','Telecom','BEGIN:VCARD\nVERSION:3.0\nFN:Compras Telecom\nN:Telecom;Compras;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:compras.telecom@locaweb.com.br\nEND:VCARD\n',24),(215,'2011-03-24 17:49:32',0,'comunicacao-corp','comunicacao-corp@locaweb.com.br','','comunicacao-corp','BEGIN:VCARD\nVERSION:3.0\nFN:comunicacao-corp\nN:comunicacao-corp;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:comunicacao-corp@locaweb.com.br\nEND:VCARD\n',24),(216,'2011-03-24 17:49:32',0,'Comunicado Vendas','comunicadovendas@locaweb.com.br','','Vendas','BEGIN:VCARD\nVERSION:3.0\nFN:Comunicado Vendas\nN:Vendas;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:comunicadovendas@locaweb.com.br\nEND:VCARD\n',24),(217,'2011-03-24 17:49:32',0,'Concurso ','concurso@locaweb.com.br','Concurso','','BEGIN:VCARD\nVERSION:3.0\nFN:Concurso \nN:;Concurso;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:concurso@locaweb.com.br\nEND:VCARD\n',24),(218,'2011-03-24 17:49:32',0,'confluence ','confluence@locaweb.com.br','confluence','','BEGIN:VCARD\nVERSION:3.0\nFN:confluence \nN:;confluence;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:confluence@locaweb.com.br\nEND:VCARD\n',24),(219,'2011-03-24 17:49:32',0,'Contabilidade','contabilidade@locaweb.com.br','','Contabilidade','BEGIN:VCARD\nVERSION:3.0\nFN:Contabilidade\nN:Contabilidade;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:contabilidade@locaweb.com.br\nEND:VCARD\n',24),(220,'2011-03-24 17:49:32',0,'contabilidade_pabx','contabilidade_pabx@locaweb.com.br','','contabilidade_pabx','BEGIN:VCARD\nVERSION:3.0\nFN:contabilidade_pabx\nN:contabilidade_pabx;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:contabilidade_pabx@locaweb.com.br\nEND:VCARD\n',24),(221,'2011-03-24 17:49:32',0,'Contato Verisign','contato.verisign@locaweb.com.br','','Verisign','BEGIN:VCARD\nVERSION:3.0\nFN:Contato Verisign\nN:Verisign;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:contato.verisign@locaweb.com.br\nEND:VCARD\n',24),(222,'2011-03-24 17:49:32',0,'Cadastro de Contatos','contatos@locaweb.com.br','Cadastro','de Contatos','BEGIN:VCARD\nVERSION:3.0\nFN:Cadastro de Contatos\nN:de Contatos;Cadastro;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:contatos@locaweb.com.br\nEND:VCARD\n',24),(223,'2011-03-24 17:49:32',0,'cortesialw mobimail.locaweb','cortesialw@locaweb.com.br','cortesialw','mobimail.locaweb','BEGIN:VCARD\nVERSION:3.0\nFN:cortesialw mobimail.locaweb\nN:mobimail.locaweb;cortesialw;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cortesialw@locaweb.com.br\nEND:VCARD\n',24),(224,'2011-03-24 17:49:32',0,'creditcard creditcard','creditcard@locaweb.com.br','creditcard','creditcard','BEGIN:VCARD\nVERSION:3.0\nFN:creditcard creditcard\nN:creditcard;creditcard;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:creditcard@locaweb.com.br\nEND:VCARD\n',24),(225,'2011-03-24 17:49:32',0,'crise','crise@locaweb.com.br','','crise','BEGIN:VCARD\nVERSION:3.0\nFN:crise\nN:crise;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:crise@locaweb.com.br\nEND:VCARD\n',24),(226,'2011-03-24 17:49:32',0,'Cristiane Barberino ','cristiane.barberino@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiane Barberino \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiane.barberino@locaweb.com.br\nEND:VCARD\n',24),(227,'2011-03-24 17:49:32',0,'Cristiane Dias','cristiane.dias@locaweb.com.br','','Dias','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiane Dias\nN:Dias;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiane.dias@locaweb.com.br\nEND:VCARD\n',24),(228,'2011-03-24 17:49:32',0,'Cristiane Sousa','cristiane.sousa@locaweb.com.br','Cristiane','Sousa','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiane Sousa\nN:Sousa;Cristiane;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiane.sousa@locaweb.com.br\nEND:VCARD\n',24),(229,'2011-03-24 17:49:32',0,'Cristiano Braier ','cristiano.braier@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiano Braier \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiano.braier@locaweb.com.br\nEND:VCARD\n',24),(230,'2011-03-24 17:49:32',0,'Cristiano Costa','cristiano.costa@locaweb.com.br','Cristiano','Costa','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiano Costa\nN:Costa;Cristiano;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiano.costa@locaweb.com.br\nEND:VCARD\n',24),(231,'2011-03-24 17:49:32',0,'Cristiano Santos','cristiano.santos@locaweb.com.br','Cristiano','Santos','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiano Santos\nN:Santos;Cristiano;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiano.santos@locaweb.com.br\nEND:VCARD\n',24),(232,'2011-03-24 17:49:32',0,'Cristiano Silva','cristiano.silva@locaweb.com.br','Cristiano','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Cristiano Silva\nN:Silva;Cristiano;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cristiano.silva@locaweb.com.br\nEND:VCARD\n',24),(233,'2011-03-24 17:49:32',0,'crm mobimail.locaweb','crm@locaweb.com.br','crm','mobimail.locaweb','BEGIN:VCARD\nVERSION:3.0\nFN:crm mobimail.locaweb\nN:mobimail.locaweb;crm;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:crm@locaweb.com.br\nEND:VCARD\n',24),(234,'2011-03-24 17:49:32',0,'crm_admin ','crm_admin@locaweb.com.br','crm_admin','','BEGIN:VCARD\nVERSION:3.0\nFN:crm_admin \nN:;crm_admin;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:crm_admin@locaweb.com.br\nEND:VCARD\n',24),(235,'2011-03-24 17:49:33',0,'Postmaster','cron-mobimail@locaweb.com.br','Postmaster','Postmaster','BEGIN:VCARD\nVERSION:3.0\nFN:Postmaster\nN:Postmaster;Postmaster;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cron-mobimail@locaweb.com.br\nEND:VCARD\n',24),(236,'2011-03-24 17:49:33',0,'Cron Sistemas Centrais','cron-sc@locaweb.com.br','Cron','Sistemas Centrais','BEGIN:VCARD\nVERSION:3.0\nFN:Cron Sistemas Centrais\nN:Sistemas Centrais;Cron;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cron-sc@locaweb.com.br\nEND:VCARD\n',24),(237,'2011-03-24 17:49:33',0,'cronaplicativo','cronaplicativo@locaweb.com.br','','cronaplicativo','BEGIN:VCARD\nVERSION:3.0\nFN:cronaplicativo\nN:cronaplicativo;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cronaplicativo@locaweb.com.br\nEND:VCARD\n',24),(238,'2011-03-24 17:49:33',0,'crongeral','crongeral@locaweb.com.br','','crongeral','BEGIN:VCARD\nVERSION:3.0\nFN:crongeral\nN:crongeral;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:crongeral@locaweb.com.br\nEND:VCARD\n',24),(239,'2011-03-24 17:49:33',0,'cronrevenda','cronrevenda@locaweb.com.br','','cronrevenda','BEGIN:VCARD\nVERSION:3.0\nFN:cronrevenda\nN:cronrevenda;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:cronrevenda@locaweb.com.br\nEND:VCARD\n',24),(240,'2011-03-24 17:49:33',0,'ct-automacao','ct-automacao@locaweb.com.br','','ct-automacao','BEGIN:VCARD\nVERSION:3.0\nFN:ct-automacao\nN:ct-automacao;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-automacao@locaweb.com.br\nEND:VCARD\n',24),(241,'2011-03-24 17:49:33',0,'ct-backup','ct-backup@locaweb.com.br','','ct-backup','BEGIN:VCARD\nVERSION:3.0\nFN:ct-backup\nN:ct-backup;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-backup@locaweb.com.br\nEND:VCARD\n',24),(242,'2011-03-24 17:49:33',0,'ct-banco','ct-banco@locaweb.com.br','','ct-banco','BEGIN:VCARD\nVERSION:3.0\nFN:ct-banco\nN:ct-banco;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-banco@locaweb.com.br\nEND:VCARD\n',24),(243,'2011-03-24 17:49:33',0,'CT Banco Monitor ','ct-banco-monitor@locaweb.com.br','CT Banco Monitor','','BEGIN:VCARD\nVERSION:3.0\nFN:CT Banco Monitor \nN:;CT Banco Monitor;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-banco-monitor@locaweb.com.br\nEND:VCARD\n',24),(244,'2011-03-24 17:49:33',0,'ct-dns','ct-dns@locaweb.com.br','','ct-dns','BEGIN:VCARD\nVERSION:3.0\nFN:ct-dns\nN:ct-dns;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-dns@locaweb.com.br\nEND:VCARD\n',24),(245,'2011-03-24 17:49:33',0,'ct-hardware','ct-hardware@locaweb.com.br','','ct-hardware','BEGIN:VCARD\nVERSION:3.0\nFN:ct-hardware\nN:ct-hardware;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-hardware@locaweb.com.br\nEND:VCARD\n',24),(246,'2011-03-24 17:49:33',0,'ct-redes','ct-redes@locaweb.com.br','','ct-redes','BEGIN:VCARD\nVERSION:3.0\nFN:ct-redes\nN:ct-redes;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-redes@locaweb.com.br\nEND:VCARD\n',24),(247,'2011-03-24 17:49:33',0,'ct-storage','ct-storage@locaweb.com.br','','ct-storage','BEGIN:VCARD\nVERSION:3.0\nFN:ct-storage\nN:ct-storage;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-storage@locaweb.com.br\nEND:VCARD\n',24),(248,'2011-03-24 17:49:33',0,'ct-windows','ct-windows@locaweb.com.br','','ct-windows','BEGIN:VCARD\nVERSION:3.0\nFN:ct-windows\nN:ct-windows;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ct-windows@locaweb.com.br\nEND:VCARD\n',24),(249,'2011-03-24 17:49:33',0,'CT Vendas','ctvendas2@locaweb.com.br','','Vendas','BEGIN:VCARD\nVERSION:3.0\nFN:CT Vendas\nN:Vendas;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:ctvendas2@locaweb.com.br\nEND:VCARD\n',24),(250,'2011-03-24 17:49:33',0,'Curriculo Locaweb','curriculo@locaweb.com.br','Curriculo','Locaweb','BEGIN:VCARD\nVERSION:3.0\nFN:Curriculo Locaweb\nN:Locaweb;Curriculo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:curriculo@locaweb.com.br\nEND:VCARD\n',24),(251,'2011-03-24 17:49:33',0,'curriculo pne','curriculo.pne@locaweb.com.br','curriculo','pne','BEGIN:VCARD\nVERSION:3.0\nFN:curriculo pne\nN:pne;curriculo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:curriculo.pne@locaweb.com.br\nEND:VCARD\n',24),(252,'2011-03-24 17:49:33',0,'Dalton Belo','dalton.belo@locaweb.com.br','Dalton','Belo','BEGIN:VCARD\nVERSION:3.0\nFN:Dalton Belo\nN:Belo;Dalton;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:dalton.belo@locaweb.com.br\nEND:VCARD\n',24),(253,'2011-03-24 17:49:33',0,'Daniel Alves','daniel.alves@locaweb.com.br','Daniel','Alves','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Alves\nN:Alves;Daniel;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.alves@locaweb.com.br\nEND:VCARD\n',24),(254,'2011-03-24 17:49:34',0,'Daniel Azevedo','daniel.azevedo@locaweb.com.br','','Azevedo','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Azevedo\nN:Azevedo;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.azevedo@locaweb.com.br\nEND:VCARD\n',24),(255,'2011-03-24 17:49:34',0,'Daniel Cukier','daniel.cukier@locaweb.com.br','','Cukier','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Cukier\nN:Cukier;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.cukier@locaweb.com.br\nEND:VCARD\n',24),(256,'2011-03-24 17:49:34',0,'Daniel Ferro','daniel.ferro-deleted-13012011-124017@locaweb.com.br','Daniel','Ferro','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Ferro\nN:Ferro;Daniel;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.ferro-deleted-13012011-124017@locaweb.com.br\nEND:VCARD\n',24),(257,'2011-03-24 17:49:34',0,'Daniel Konishi','daniel.konishi@locaweb.com.br','Daniel','Konishi','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Konishi\nN:Konishi;Daniel;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.konishi@locaweb.com.br\nEND:VCARD\n',24),(258,'2011-03-24 17:49:34',0,'Daniel Monteiro ','daniel.monteiro@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Monteiro \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.monteiro@locaweb.com.br\nEND:VCARD\n',24),(259,'2011-03-24 17:49:34',0,'Daniel Oliveira','daniel.oliveira@locaweb.com.br','Daniel','Oliveira','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Oliveira\nN:Oliveira;Daniel;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.oliveira@locaweb.com.br\nEND:VCARD\n',24),(260,'2011-03-24 17:49:34',0,'Daniel Quirino','daniel.quirino@locaweb.com.br','Daniel','Quirino','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Quirino\nN:Quirino;Daniel;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.quirino@locaweb.com.br\nEND:VCARD\n',24),(261,'2011-03-24 17:49:34',0,'Daniel Villot','daniel.villot-deleted-10012011-153039@locaweb.com.br','Daniel','Villot','BEGIN:VCARD\nVERSION:3.0\nFN:Daniel Villot\nN:Villot;Daniel;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniel.villot-deleted-10012011-153039@locaweb.com.br\nEND:VCARD\n',24),(262,'2011-03-24 17:49:34',0,'Daniela Pereira','daniela.pereira@locaweb.com.br','Daniela','Pereira','BEGIN:VCARD\nVERSION:3.0\nFN:Daniela Pereira\nN:Pereira;Daniela;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniela.pereira@locaweb.com.br\nEND:VCARD\n',24),(263,'2011-03-24 17:49:34',0,'Daniela Veronese ','daniela.veronese@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Daniela Veronese \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniela.veronese@locaweb.com.br\nEND:VCARD\n',24),(264,'2011-03-24 17:49:34',0,'Daniele Dias ','daniele.dias@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Daniele Dias \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniele.dias@locaweb.com.br\nEND:VCARD\n',24),(265,'2011-03-24 17:49:34',0,'Daniele Martins','daniele.martins-deleted-08072010-151054@locaweb.com.br','Daniele','Martins','BEGIN:VCARD\nVERSION:3.0\nFN:Daniele Martins\nN:Martins;Daniele;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniele.martins-deleted-08072010-151054@locaweb.com.br\nEND:VCARD\n',24),(266,'2011-03-24 17:49:34',0,'daniella vidal','daniella.vidal-deleted-10012011-153013@locaweb.com.br','daniella','vidal','BEGIN:VCARD\nVERSION:3.0\nFN:daniella vidal\nN:vidal;daniella;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:daniella.vidal-deleted-10012011-153013@locaweb.com.br\nEND:VCARD\n',24),(267,'2011-03-24 17:49:34',0,'Danielle Baldin','danielle.baldin@locaweb.com.br','Danielle','Baldin','BEGIN:VCARD\nVERSION:3.0\nFN:Danielle Baldin\nN:Baldin;Danielle;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danielle.baldin@locaweb.com.br\nEND:VCARD\n',24),(268,'2011-03-24 17:49:34',0,'Danielle Dias ','danielle.dias@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danielle Dias \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danielle.dias@locaweb.com.br\nEND:VCARD\n',24),(269,'2011-03-24 17:49:34',0,'Danielle Zuffo ','danielle.zuffo@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danielle Zuffo \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danielle.zuffo@locaweb.com.br\nEND:VCARD\n',24),(270,'2011-03-24 17:49:34',0,'Danielly Garrido','danielly.garrido@locaweb.com.br','Danielly','Garrido','BEGIN:VCARD\nVERSION:3.0\nFN:Danielly Garrido\nN:Garrido;Danielly;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danielly.garrido@locaweb.com.br\nEND:VCARD\n',24),(271,'2011-03-24 17:49:34',0,'Danilo Acquaviva ','danilo.acquaviva@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Acquaviva \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.acquaviva@locaweb.com.br\nEND:VCARD\n',24),(272,'2011-03-24 17:49:34',0,'Danilo Augusto ','danilo.augusto@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Augusto \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.augusto@locaweb.com.br\nEND:VCARD\n',24),(273,'2011-03-24 17:49:34',0,'Danilo Melo ','danilo.melo@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Melo \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.melo@locaweb.com.br\nEND:VCARD\n',24),(274,'2011-03-24 17:49:35',0,'Danilo Praxedes','danilo.praxedes@locaweb.com.br','Danilo','Praxedes','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Praxedes\nN:Praxedes;Danilo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.praxedes@locaweb.com.br\nEND:VCARD\n',24),(275,'2011-03-24 17:49:35',0,'Danilo Santos ','danilo.santos@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Santos \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.santos@locaweb.com.br\nEND:VCARD\n',24),(276,'2011-03-24 17:49:35',0,'Danilo Silva','danilo.silva@locaweb.com.br','Danilo','Silva','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Silva\nN:Silva;Danilo;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.silva@locaweb.com.br\nEND:VCARD\n',24),(277,'2011-03-24 17:49:35',0,'Danilo Silvestrin ','danilo.silvestrin@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Danilo Silvestrin \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:danilo.silvestrin@locaweb.com.br\nEND:VCARD\n',24),(278,'2011-03-24 17:49:35',0,'Dario Goncalves','dario.goncalves@locaweb.com.br','Dario','Goncalves','BEGIN:VCARD\nVERSION:3.0\nFN:Dario Goncalves\nN:Goncalves;Dario;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:dario.goncalves@locaweb.com.br\nEND:VCARD\n',24),(279,'2011-03-24 17:49:35',0,'Davi Cabral','davi.cabral@locaweb.com.br','Davi','Cabral','BEGIN:VCARD\nVERSION:3.0\nFN:Davi Cabral\nN:Cabral;Davi;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:davi.cabral@locaweb.com.br\nEND:VCARD\n',24),(280,'2011-03-24 17:49:35',0,'David Paniz','david.paniz@locaweb.com.br','David','Paniz','BEGIN:VCARD\nVERSION:3.0\nFN:David Paniz\nN:Paniz;David;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:david.paniz@locaweb.com.br\nEND:VCARD\n',24),(281,'2011-03-24 17:49:35',0,'Dayane Esteves','dayane.esteves@locaweb.com.br','Dayane','Esteves','BEGIN:VCARD\nVERSION:3.0\nFN:Dayane Esteves\nN:Esteves;Dayane;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:dayane.esteves@locaweb.com.br\nEND:VCARD\n',24),(282,'2011-03-24 17:49:35',0,'Dayvison Pellegrina ','dayvison.pellegrina@locaweb.com.br','','','BEGIN:VCARD\nVERSION:3.0\nFN:Dayvison Pellegrina \nN:;;;;\nEMAIL;type=INTERNET;type=HOME;type=pref:dayvison.pellegrina@locaweb.com.br\nEND:VCARD\n',24);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominio`
--

DROP TABLE IF EXISTS `dominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dominio` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `id_domadic` tinyint(4) NOT NULL DEFAULT '0',
  `id_produto` tinyint(4) NOT NULL DEFAULT '1',
  `servidor` varchar(16) NOT NULL DEFAULT '',
  `dominio` varchar(50) NOT NULL DEFAULT '',
  `nome` varchar(50) NOT NULL DEFAULT '',
  `home` varchar(200) NOT NULL DEFAULT '',
  `archive` varchar(200) NOT NULL DEFAULT '',
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `principal` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `status_locamail` tinyint(4) NOT NULL DEFAULT '1',
  `status_produto` tinyint(4) NOT NULL DEFAULT '0',
  `cota_liberada` mediumint(9) DEFAULT '20480',
  `cota_msg_liberada` smallint(6) DEFAULT '10240',
  `limite_msg` mediumint(9) DEFAULT '40960',
  `limite_msg_envia` mediumint(9) DEFAULT '40960',
  `limite_quota` int(11) DEFAULT '20480',
  `limite_count` mediumint(9) DEFAULT '50000',
  `limite_box` mediumint(9) DEFAULT '20',
  `locamail` tinyint(4) DEFAULT '0',
  `locavoz` tinyint(3) DEFAULT '0',
  `email_assinatura` varchar(255) DEFAULT NULL,
  `txt_corfundo` varchar(7) DEFAULT NULL,
  `txt_corcabecalho` varchar(7) DEFAULT NULL,
  `txt_cormenu` varchar(7) DEFAULT NULL,
  `txt_corfontecabecalho` varchar(7) DEFAULT NULL,
  `txt_corfontemenu` varchar(7) DEFAULT NULL,
  `txt_corlinhalocamail` varchar(7) DEFAULT NULL,
  `txt_corbarra` varchar(7) DEFAULT NULL,
  `txt_corfontebarra` varchar(7) DEFAULT NULL,
  `txt_cormenu2` varchar(7) DEFAULT NULL,
  `link_logo` varchar(100) DEFAULT NULL,
  `txt_cormsgalert` varchar(7) DEFAULT '#000000',
  `email_admin` varchar(80) DEFAULT 'webmaster',
  `ctl_quar_global` tinyint(4) NOT NULL DEFAULT '0',
  `cota_metodo_calculo` tinyint(4) DEFAULT '1',
  `flg_mudacores` tinyint(4) DEFAULT '0',
  `flg_autorizacao_global` tinyint(4) NOT NULL DEFAULT '0',
  `flg_bloqueio_global` tinyint(4) DEFAULT '0',
  `flg_filtro_global` tinyint(4) DEFAULT '0',
  `dt_atualizacao` datetime DEFAULT NULL,
  `flg_email_prefs_automat` tinyint(4) DEFAULT '0',
  `ctl_message_cache` tinyint(4) DEFAULT '0',
  `ctl_spam_tipo` tinyint(4) NOT NULL DEFAULT '2',
  `ctl_spam_greylisting` tinyint(4) NOT NULL DEFAULT '0',
  `ctl_vdeliver_logs` tinyint(4) NOT NULL DEFAULT '0',
  `ctl_tipo_quota` tinyint(4) DEFAULT '0',
  `lang` varchar(5) DEFAULT 'pt_BR',
  `mx_externo` int(1) NOT NULL DEFAULT '0',
  KEY `dominio` (`dominio`,`id_dominio`),
  KEY `idx_dominio` (`dominio`),
  KEY `idx_dom_princ` (`id_dominio`,`principal`),
  KEY `idx_nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominio`
--

LOCK TABLES `dominio` WRITE;
/*!40000 ALTER TABLE `dominio` DISABLE KEYS */;
INSERT INTO `dominio` VALUES (261862,1,1,'hm1401','www1401.locaweb.com.br','www1401','/home98/www1401','',261862,261862,1,1,1,0,20480,10240,40960,40960,2097152,50000,5,1,0,NULL,'#CC0000','#EFEFEF','#EFEFEF','#000000','#000000',NULL,'#003366','#FFFFFF','#CCCCCC','','#000000','webmaster',0,1,0,0,0,0,'2008-11-25 16:11:28',0,0,2,0,0,0,'pt_BR',0),(142587,1,1,'hm539','www539.locaweb.com.br','www539','/home113/w/ww/www539','',142587,142587,1,1,1,0,20480,10240,40960,40960,2097152,50000,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#000000','webmaster',0,1,0,0,0,0,'2007-03-12 14:03:22',0,0,2,0,0,0,'pt_BR',0);
/*!40000 ALTER TABLE `dominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominio_cliente`
--

DROP TABLE IF EXISTS `dominio_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dominio_cliente` (
  `id_dominio` int(3) NOT NULL DEFAULT '0',
  `nome` varchar(40) NOT NULL DEFAULT '0',
  `flg_permissao` tinyint(3) NOT NULL DEFAULT '0',
  `limite_caixas` smallint(6) DEFAULT '0',
  `limite_espaco` int(11) NOT NULL DEFAULT '0',
  `dt_criacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_dominio`,`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominio_cliente`
--

LOCK TABLES `dominio_cliente` WRITE;
/*!40000 ALTER TABLE `dominio_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `dominio_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `password_type` tinyint(4) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `id_email` bigint(18) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `sobrenome` varchar(30) DEFAULT NULL,
  `id_perfil` smallint(6) DEFAULT NULL,
  `limite_count` mediumint(9) DEFAULT '50000',
  `limite_msg` mediumint(9) DEFAULT '10240',
  `limite_msg_envia` mediumint(9) DEFAULT '10240',
  `limite_quota` int(11) DEFAULT '20480',
  `vm_obs` varchar(20) DEFAULT NULL,
  `vm_enable` tinyint(4) DEFAULT '1',
  `status_email` tinyint(4) NOT NULL DEFAULT '1',
  `vm_personal` varchar(10) DEFAULT NULL,
  `vm_pop3_enable` tinyint(4) DEFAULT '1',
  `vm_dt_expiracao` int(11) DEFAULT '0',
  `dt_senha_expiracao` int(11) DEFAULT '0',
  `vm_dt_criacao` int(11) DEFAULT NULL,
  `nome_redir` varchar(200) DEFAULT NULL,
  `nome_redir_desativado` varchar(200) NOT NULL DEFAULT '',
  `bccoculto` varchar(100) DEFAULT NULL,
  `dt_ult_acesso` int(11) DEFAULT NULL,
  `cota_usada` int(11) DEFAULT NULL,
  `cota_msg_usada` smallint(6) DEFAULT '0',
  `cota_porc_aviso` tinyint(4) DEFAULT '80',
  `cota_metodo_calculo` tinyint(4) DEFAULT '1',
  `dt_ult_cota` int(11) NOT NULL DEFAULT '0',
  `limite_count_inbox` smallint(6) NOT NULL DEFAULT '3000',
  `flg_antivirus` tinyint(4) DEFAULT '1',
  `flg_spam` tinyint(4) DEFAULT '1',
  `flg_webmail` tinyint(4) DEFAULT '1',
  `ip_externo` varchar(15) DEFAULT NULL,
  `flg_apelido_oculto` tinyint(4) DEFAULT '1',
  `flg_seguranca` tinyint(4) DEFAULT '1',
  `flg_aut_checa_ip` tinyint(4) DEFAULT '0',
  `flg_troca_senha` tinyint(4) DEFAULT '1',
  `flg_filtros` tinyint(4) DEFAULT '1',
  `flg_bloqueio_ativado` tinyint(4) DEFAULT '0',
  `flg_filtro_ativado` tinyint(4) DEFAULT '0',
  `flg_envio_aut_ativado` tinyint(4) NOT NULL DEFAULT '0',
  `cal_ativo` tinyint(4) NOT NULL DEFAULT '0',
  `tipo_autorizacao` tinyint(4) DEFAULT '0',
  `ctl_quar_email` varchar(5) DEFAULT '0',
  `ctl_spam_tipo` tinyint(4) NOT NULL DEFAULT '2',
  `ctl_logs_vdeliver` tinyint(4) DEFAULT '0',
  `ctl_logs_smtpd` tinyint(4) NOT NULL DEFAULT '0',
  `ctl_spam_subj_rewrite` varchar(15) DEFAULT NULL,
  `ctl_spam_digest` tinyint(4) DEFAULT '0',
  `ctl_spam_spf` varchar(180) DEFAULT NULL,
  `ctl_spam_greylisting` tinyint(4) NOT NULL DEFAULT '0',
  `pasta_spam` varchar(25) NOT NULL DEFAULT 'spam',
  `ctl_message_cache` tinyint(4) DEFAULT '0',
  `flg_locavoz` tinyint(3) DEFAULT '0',
  `id_locavoz` varchar(10) DEFAULT NULL,
  `perm_acesso` varchar(8) DEFAULT '111010',
  `perm_webmail` varchar(20) DEFAULT '1111111111111100',
  `txt_assinatura` varchar(250) DEFAULT NULL,
  `prefs_webmail` varchar(5) DEFAULT '0',
  `flg_webmail_addressbook` tinyint(4) DEFAULT '0',
  `flg_webmail_attach` tinyint(4) DEFAULT '1',
  `flg_webmail_download` tinyint(4) DEFAULT '1',
  `flg_webmail_prefsnome` tinyint(4) DEFAULT '1',
  `next_event_time` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) DEFAULT 'pt_BR',
  PRIMARY KEY (`id_email`),
  KEY `idx_nome` (`id_dominio`,`username`),
  KEY `ndx_vm_obs` (`vm_obs`),
  KEY `ndx_status` (`status`),
  KEY `ndx_id_dominio` (`id_dominio`)
) ENGINE=InnoDB AUTO_INCREMENT=2148258574 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (142587,'loop','operac539',1,1,1872872,'Monitoração','Operações',9999,3000,10240,10240,2097152,'',1,1,'0|1|0',1,0,0,1173810318,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,0,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',1,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'locaweb','$1$k`GaCx5b$0IDCYv87mdAnfwQJHzrBu1',0,1,2050353,'Teste','Suporte',9998,3000,10240,10240,2097152,'',1,1,'1|1|1',1,0,0,1181716651,'webmaster@www539.locaweb.com.br,diagnosticando.locaweb@gmail.com','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,'[SPAM]',0,'',0,'.Mala_Direta/cur',1,0,NULL,'111111','111111111111111111','','1',1,1,1,1,0,'pt_BR'),(261862,'webmaster','locaweb1234',1,1,3385133,'webmaster',NULL,9999,50000,10240,10240,2097152,NULL,1,1,'',1,0,0,1227636688,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,0,0,'0',2,0,0,NULL,0,NULL,0,'spam',0,0,NULL,'111110','111111111111111111',NULL,'0',1,1,1,1,0,'pt_BR'),(261862,'locaweb','locaweb1234',1,1,3385175,'Suporte ','',0,50000,10240,10240,2097152,'',1,1,'7|0|1|0',1,0,0,1227637141,'','','',NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,1,0,0,1,99,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',0,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'site24x7','$1$oK87mLm1$KAnJrPnDzNqfqfEqcDvDw/',0,1,2147877134,'site24x7','',1,3000,10240,10240,2097152,'',1,1,'0|1|0',1,0,0,1274207519,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',0,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(261862,'site24x7','$1$ofmf0xfS$.iD40G2niMayvsYU8tgVY.',0,1,2147877634,'site24x7','',1,50000,10240,10240,2097152,'',1,1,'0|1|0',1,0,0,1274214813,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,0,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',0,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'diagnosticando','$1$qGXLv9RD$LXQsLfiyP5FGf2kHXw/CV1',1,1,2148163177,'diagnostico','',1,3000,10240,10240,2097152,'',1,1,'1|1|1',1,0,0,1280515066,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,0,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',0,0,NULL,'111111','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'webmaster','$1$olYuhl8i$.HcjTCDchX7SlrGawp3PU0',0,1,2148190750,'Webmaster','',9999,3000,10240,10240,2097152,'',1,1,'0|1|1',1,0,0,1281645341,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,0,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',0,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'juliano','locaweb1234',1,1,2148204057,'Teste','Suporte',9999,3000,10240,10240,2097152,'',1,1,'0|1|0|1',1,0,0,1181716651,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',1,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'juliano2','locaweb1234',1,1,2148204060,'Teste','Suporte',9999,3000,10240,10240,2097152,'',1,1,'0|1|0|1',1,0,0,1181716651,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',1,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'juliano3','locaweb1234',1,1,2148204063,'Teste','Suporte',9999,3000,10240,10240,2097152,'',1,1,'0|1|0|1',1,0,0,1181716651,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',1,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'juliano4','locaweb1234',1,1,2148204064,'Teste','Suporte',9999,3000,10240,10240,2097152,'',1,1,'0|1|0|1',1,0,0,1181716651,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',1,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR'),(142587,'juliano5','locaweb1234',1,1,2148204068,'Teste','Suporte',9999,3000,10240,10240,2097152,'',1,1,'0|1|0|1',1,0,0,1181716651,'','',NULL,NULL,NULL,0,80,1,0,3000,1,1,1,NULL,1,1,0,1,1,0,0,0,1,0,'0',2,0,0,NULL,0,'',0,'.Mala_Direta/cur',1,0,NULL,'111110','111111111111111111','','0',1,1,1,1,0,'pt_BR');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_detalhes`
--

DROP TABLE IF EXISTS `email_detalhes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_detalhes` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `id_email` bigint(18) NOT NULL AUTO_INCREMENT,
  `id_perfil` tinyint(4) DEFAULT '0',
  `nome` varchar(40) DEFAULT NULL,
  `sobrenome` varchar(40) DEFAULT NULL,
  `nota` varchar(20) DEFAULT NULL,
  `apelido` varchar(30) DEFAULT NULL,
  `cpf` varchar(12) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `telefone1` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `fax1` varchar(25) DEFAULT NULL,
  `endereco` varchar(75) DEFAULT NULL,
  `complemento` varchar(40) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT '--',
  `cep` varchar(9) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `celular` varchar(25) DEFAULT NULL,
  `celular1` varchar(25) DEFAULT NULL,
  `email1` varchar(60) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `homepage1` varchar(200) DEFAULT NULL,
  `aniversario` varchar(10) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `nome_display` varchar(20) DEFAULT NULL,
  `depto` varchar(30) DEFAULT NULL,
  `funcao` varchar(30) DEFAULT NULL,
  `icq` varchar(11) DEFAULT NULL,
  `aol` varchar(10) DEFAULT NULL,
  `msn` varchar(60) DEFAULT NULL,
  `irc` varchar(15) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_email`,`id_dominio`)
) ENGINE=InnoDB AUTO_INCREMENT=2148258537 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_detalhes`
--

LOCK TABLES `email_detalhes` WRITE;
/*!40000 ALTER TABLE `email_detalhes` DISABLE KEYS */;
INSERT INTO `email_detalhes` VALUES (142587,1872872,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142587,2050353,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261862,3385133,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261862,3385175,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142587,2147877134,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261862,2147877634,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142587,2148163177,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142587,2148190750,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `email_detalhes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos_w`
--

DROP TABLE IF EXISTS `enderecos_w`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enderecos_w` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `flg_catalogo` tinyint(1) DEFAULT '0',
  `flg_autorizado` tinyint(4) DEFAULT '0',
  `cod_cadastro` tinyint(4) DEFAULT '1',
  `nome` varchar(60) DEFAULT NULL,
  `sobrenome` varchar(60) DEFAULT NULL,
  `apelido` varchar(20) DEFAULT NULL,
  `tratamento` varchar(15) DEFAULT NULL,
  `nome_display` varchar(20) DEFAULT NULL,
  `aniversario` varchar(10) DEFAULT NULL,
  `telefone` varchar(18) DEFAULT NULL,
  `celular` varchar(18) DEFAULT NULL,
  `fax` varchar(18) DEFAULT NULL,
  `homepage` varchar(70) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `cidade` varchar(35) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  `email_trabalho` varchar(80) DEFAULT NULL,
  `telefone_trabalho` varchar(18) DEFAULT NULL,
  `celular_trabalho` varchar(18) DEFAULT NULL,
  `fax_trabalho` varchar(18) DEFAULT NULL,
  `homepage_trabalho` varchar(80) DEFAULT NULL,
  `endereco_trabalho` varchar(255) DEFAULT NULL,
  `cep_trabalho` varchar(9) DEFAULT NULL,
  `cidade_trabalho` varchar(35) DEFAULT NULL,
  `estado_trabalho` char(2) DEFAULT NULL,
  `pais_trabalho` varchar(25) DEFAULT NULL,
  `funcao` varchar(20) DEFAULT NULL,
  `organizacao` varchar(100) DEFAULT NULL,
  `departamento` varchar(25) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `icq` varchar(15) DEFAULT NULL,
  `aol` varchar(15) DEFAULT NULL,
  `apelido_irc` varchar(15) DEFAULT NULL,
  `apelido_msn` varchar(60) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `pgp_public` blob,
  `dt_criacao` datetime DEFAULT NULL,
  `ts_criacao` int(11) DEFAULT '0',
  `ts_modificacao` int(11) DEFAULT '0',
  PRIMARY KEY (`id_dominio`,`username`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos_w`
--

LOCK TABLES `enderecos_w` WRITE;
/*!40000 ALTER TABLE `enderecos_w` DISABLE KEYS */;
INSERT INTO `enderecos_w` VALUES (142587,'locaweb','aaaaaaaaaaaaa@minha.com',1,0,1,'Aaaaaaaaaaaaaa','Minha mãe','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1288301140,0),(142587,'locaweb','aaaaaaiaiaititiaaa@lala.com',1,0,1,'Aiaiai','Titia','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1291048536,0),(142587,'locaweb','aaabbb@dasdas.com',1,0,1,'Dsadas','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1297705502,0),(142587,'locaweb','alexandre.nas@gmail.com',1,0,1,'Alexandre','Nascimento','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1293476614,0),(142587,'locaweb','amanda.nogueira@yahoo.com.br',1,0,1,'Nome','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1293476614,0),(142587,'locaweb','anacarolina@eucaliptotratado.com',1,0,1,'Ana','Carolina','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1293476614,0),(142587,'locaweb','asdfafasdfasdf@lalala.com',1,0,1,'A','Teste edliiiiiihjgjição','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,1291052572,1291754378),(142587,'locaweb','asdfasdf@aaaa.com',1,0,1,'Asdfadf','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292609004,0),(142587,'locaweb','asdfasdfasdf@lslslalal.com',1,0,1,'Asdfasdfasfd','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1291048509,0),(142587,'locaweb','dasdsa@dasd.com',1,0,1,'Dasd','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1297705488,0),(142587,'locaweb','diagnosticando.lw@gmail.com',1,0,1,'Teste','1301','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,1294919198,1294919513),(142587,'locaweb','diagnosticando@gmail.com',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1285191007,1285192051),(142587,'locaweb','diagnosticando@uol.com.br',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1296478397,0),(142587,'locaweb','email01@teste.com',1,0,1,'','','','','Email01','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292347172,0),(142587,'locaweb','email02@teste.com',1,0,1,'','','','','Email02','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292347172,0),(142587,'locaweb','email03@teste.com',1,0,1,'','','','','Email03','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292347172,0),(142587,'locaweb','email04@teste.com',1,0,1,'','','','','Email04','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292347172,0),(142587,'locaweb','email05@teste.com',1,0,1,'','','','','Email05','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292347172,0),(142587,'locaweb','francisco.freire@locaweb.com.br',1,0,1,'Freire','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1289999745,0),(142587,'locaweb','gago@uol.com',1,0,1,'Gago','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1288303692,0),(142587,'locaweb','jaopones@lala.com',1,0,1,'Jp. Dragao do norte','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,1300300796,1300301659),(142587,'locaweb','lalau@teto.com',1,0,1,'','','','','lalau','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292346959,0),(142587,'locaweb','locaweb@www539.locaweb.com.br',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1182534688,1285192060),(142587,'locaweb','locaweb@www606.locaweb.com.br',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1285195944,0),(142587,'locaweb','ricardo.ruiz@locaweb.com.br',1,0,1,'Ruiz','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1282244740,0),(142587,'locaweb','seupai@sumemo.com',1,0,1,'Sumemo','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1289991812,0),(142587,'locaweb','site24x7@www539.locaweb.com.br',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: GnuPG v1.4.10 (GNU/Linux)\r\n\r\nmOIETJtZVxECAMCa986xI3qJjEb4g2Mrjc9ImBwBzmIYa04TMBxE5JiXL4W3OJGg\r\nMVDIazIn9lJ2Let3YFlEAuZKt6+rjvhVi+8AoMucjT/Lk4KIF07cVdDUoGnWXq2F\r\nAf9xt95h7ZPyX7HgqL7B5iPaOFO9Fo3pmzFEoQVgU1IgCVc5u+zGJUd06Qr7c+NE\r\nI+3CIZvru5WSC4P441pHJGmoAf0YGUVT2AdAM4TbvsfVtc53M8i8vk6RHRrDTXBm\r\nizFherAlhq+R4xpf/n8Kl7TDwDX0TAQGtB3MrcaQan7XJXHStEFzaXRlMjR4NyAo\r\nd3d3NTM5LmxvY2F3ZWIuY29tLmJyKSA8c2l0ZTI0eDdAd3d3NTM5LmxvY2F3ZWIu\r\nY29tLmJyPohiBBMRAgAiBQJMm1lXAhsjBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIX\r\ngAAKCRAOrJl92nARXzf5AKC3WI6b1au89vNOh7B28IVPUT4dpQCfXboUe8CyWrm3\r\nTex2o5IP41Fn6d24jQRMm1lXEAIAxksMSU3CcmQjacR/u9UdJJHSVLYNLMGKz/Om\r\nmPAe7KTw4ZD4YNj2zllBd+K1Zqgd8rga+A45on/otAqP9EAsYwADBgH/ZUwAjEoB\r\nWOGrNk5OZ+vEwhwzzpikmRJ5ubRQd/mqf7kNX9/Yep2Um/vcxe4LHtQxP094hSCG\r\n8Mv6N/wQ1JsnbYhJBBgRAgAJBQJMm1lXAhsMAAoJEA6smX3acBFfuSAAoJm6LMil\r\n7mq47Ve9x8QDITc6+dDYAKCAfbYECDubo4ZnrahuQFdeZNdpmQ==\r\n=8haH\r\n-----END PGP PUBLIC KEY BLOCK-----',NULL,1285339892,0),(142587,'locaweb','suamae@gmail.com',1,0,1,'Ela','Mesmo','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1288303081,0),(142587,'locaweb','tata@tata.com',1,0,1,'','','','','tata','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1292346959,0),(142587,'locaweb','testinho@teste.com.br',1,0,1,'Testinho','Bonitinho','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1291203554,0),(142587,'locaweb','webmaster@www539.locaweb.com.br',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1285191007,1285195330),(142587,'site24x7','locaweb@www539.locaweb.com.br',1,0,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: GnuPG v1.4.10 (GNU/Linux)\r\n\r\nmOIETJtWahECAI6+aGgbGkjf+Y2E0LLz/+UeZQ9MK0R7rOc9PXdbsEm0Pw49soRQ\r\nLzZfe+MUQPl3KKrv5CR6bvMMgDT81IMNBDMAoOFG47C9sNx76OQcuGlhl4vV+iPz\r\nAf0W2DR4v5Slfn5IGSnOP3x7T4OBmVWEqWHGx/UTQu8fZKwwA5qMOW67RNU8ed8D\r\nEOs6TuFAhOprfviOF6hd17I6Af4wRfBYdAigVLSzDDeByT4GwggYTJ84U/wfSXX/\r\nrhRV8yvQoWssaaFg8FZa5UxH4Wxqf6On5M6AdKCO0HmohAOjtEVUZXN0ZSBTdXBv\r\ncnRlICh3d3c1MzkubG9jYXdlYi5jb20uYnIpIDxsb2Nhd2ViQHd3dzUzOS5sb2Nh\r\nd2ViLmNvbS5icj6IYgQTEQIAIgUCTJtWagIbIwYLCQgHAwIGFQgCCQoLBBYCAwEC\r\nHgECF4AACgkQarZ5HoulEMp9swCg2E9cEd+YRGtU/Suk1RlFkJ/K3/QAoJ30685J\r\nH/xDahd8PW/ogaP9WX4JuI0ETJtWahACAIEW4QD6lbkmhvJy+S196HkWttmrYYEk\r\ngNkSHwB4zTVA0v4DxSkm5esi8WXgq19ob/yPf3Z1HsNlNGm2tjBhp9cABAsB+QGl\r\n5zP1HHc5ZXZ7Tos2wZVZdE4i3FpothmHOuKc4qMk9a10yZGWdZxCUEAijFa2JmWX\r\nLzBKXhW+4qthG48NGC2ISQQYEQIACQUCTJtWagIbDAAKCRBqtnkei6UQyh9ZAKDF\r\nCRrSMTxqL31+SKNM0UhCKEJEDQCg1YDWjmt0XRPydsAjrvVIZj68c2Y=\r\n=Ebbx\r\n-----END PGP PUBLIC KEY BLOCK-----',NULL,1285249495,1285251318),(142587,'_dominio_','peixe@peixe.com',1,0,1,'peixe','gostoso','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,1298393313,0);
/*!40000 ALTER TABLE `enderecos_w` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio_autorizacao`
--

DROP TABLE IF EXISTS `envio_autorizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envio_autorizacao` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `tipo_entrega` tinyint(4) NOT NULL DEFAULT '1',
  `ts_criacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dominio`,`username`,`email`,`tipo_entrega`),
  KEY `IDX_DOM_USERNAME` (`id_dominio`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio_autorizacao`
--

LOCK TABLES `envio_autorizacao` WRITE;
/*!40000 ALTER TABLE `envio_autorizacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `envio_autorizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtros`
--

DROP TABLE IF EXISTS `filtros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtros` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `cont_regra` tinyint(4) NOT NULL DEFAULT '0',
  `nome_regra` varchar(20) NOT NULL DEFAULT '',
  `acao` varchar(10) NOT NULL DEFAULT '''''',
  `parametro` varchar(250) NOT NULL DEFAULT '',
  `pasta` varchar(50) DEFAULT NULL,
  `flg_notificacao` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_dominio`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtros`
--

LOCK TABLES `filtros` WRITE;
/*!40000 ALTER TABLE `filtros` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot_password` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `alternative_email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `token` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `token_expiration` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_password`
--

LOCK TABLES `forgot_password` WRITE;
/*!40000 ALTER TABLE `forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_grupo` varchar(40) NOT NULL DEFAULT '',
  `descricao` varchar(50) DEFAULT NULL,
  `flg_global` tinyint(4) NOT NULL DEFAULT '0',
  `flg_recebimento` tinyint(4) DEFAULT '0',
  `flg_msg_externa` tinyint(4) DEFAULT '0',
  `flg_membros_visualizar` tinyint(4) DEFAULT '0',
  `flg_membros_enviar` tinyint(4) DEFAULT '0',
  `flg_bloqueio_ativado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_grupo`,`id_dominio`)
) ENGINE=MyISAM AUTO_INCREMENT=93944 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (261862,73821,'teste','',1,1,1,0,0,0),(261862,92698,'teste01','',0,1,1,0,0,0),(142587,91960,'nova','',0,1,0,0,1,0);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_email`
--

DROP TABLE IF EXISTS `grupos_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_email` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `id_email` bigint(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_grupo`,`id_dominio`,`id_email`)
) ENGINE=MyISAM AUTO_INCREMENT=93944 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_email`
--

LOCK TABLES `grupos_email` WRITE;
/*!40000 ALTER TABLE `grupos_email` DISABLE KEYS */;
INSERT INTO `grupos_email` VALUES (73821,261862,3385175),(91960,142587,2050353),(91960,142587,2148190750),(92698,261862,3385175);
/*!40000 ALTER TABLE `grupos_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_email_externo`
--

DROP TABLE IF EXISTS `grupos_email_externo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_email_externo` (
  `id_grupo` int(11) NOT NULL DEFAULT '0',
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `email` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_grupo`,`id_dominio`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_email_externo`
--

LOCK TABLES `grupos_email_externo` WRITE;
/*!40000 ALTER TABLE `grupos_email_externo` DISABLE KEYS */;
INSERT INTO `grupos_email_externo` VALUES (73821,261862,'diagnosticando@gmail.com'),(73821,261862,'luiz.nascimento@locaweb.com.br'),(91960,142587,'wgrcunha@gmail.com'),(92698,261862,'diagnosticando.locaweb@gmail.com'),(92698,261862,'locaweb@mafalleiros.com.br');
/*!40000 ALTER TABLE `grupos_email_externo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_endereco`
--

DROP TABLE IF EXISTS `grupos_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_endereco` (
  `id_grupo` smallint(6) NOT NULL DEFAULT '0',
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `nome_grupo` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_grupo`,`id_dominio`,`username`),
  KEY `id_dominio` (`id_dominio`),
  KEY `username` (`username`),
  KEY `nome_grupo` (`nome_grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_endereco`
--

LOCK TABLES `grupos_endereco` WRITE;
/*!40000 ALTER TABLE `grupos_endereco` DISABLE KEYS */;
INSERT INTO `grupos_endereco` VALUES (2,142587,'locaweb','aaaaapopo'),(3,142587,'locaweb','aaaaaalalalalla'),(1,142587,'locaweb','Teste'),(4,142587,'locaweb','teste_email');
/*!40000 ALTER TABLE `grupos_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_endereco_email`
--

DROP TABLE IF EXISTS `grupos_endereco_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_endereco_email` (
  `id_grupo` int(11) NOT NULL DEFAULT '0',
  `id_dominio` int(11) NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_grupo`,`id_dominio`,`username`,`email`),
  KEY `id_dominio` (`id_dominio`,`username`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_endereco_email`
--

LOCK TABLES `grupos_endereco_email` WRITE;
/*!40000 ALTER TABLE `grupos_endereco_email` DISABLE KEYS */;
INSERT INTO `grupos_endereco_email` VALUES (1,142587,'locaweb','locaweb@www539.locaweb.com.br'),(2,142587,'locaweb','asdfasdfasdf@lslslalal.com'),(2,142587,'locaweb','gago@uol.com'),(3,142587,'locaweb','aaaaaaaaaaaaa@minha.com'),(3,142587,'locaweb','aaaaaaiaiaititiaaa@lala.com'),(3,142587,'locaweb','asdfafasdfasdf@lalala.com'),(4,142587,'locaweb','teste@gmail.com');
/*!40000 ALTER TABLE `grupos_endereco_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identities`
--

DROP TABLE IF EXISTS `identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identities` (
  `identity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `standard` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `organization` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL,
  `reply-to` varchar(128) NOT NULL DEFAULT '',
  `bcc` varchar(128) NOT NULL DEFAULT '',
  `signature` text,
  `html_signature` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identity_id`),
  KEY `user_identities_index` (`user_id`,`del`),
  CONSTRAINT `user_id_fk_identities` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `identities` WRITE;
/*!40000 ALTER TABLE `identities` DISABLE KEYS */;
INSERT INTO `identities` VALUES (1,1,'2011-04-20 14:59:01',0,1,'','','locaweb@www539.locaweb.com.br','','',NULL,0),(2,2,'2011-04-20 14:59:26',0,1,'','','locaweb@www1401.locaweb.com.br','','',NULL,0);
/*!40000 ALTER TABLE `identities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `cache_key` varchar(128) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `idx` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `size` int(11) unsigned NOT NULL DEFAULT '0',
  `headers` text NOT NULL,
  `structure` text,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `uniqueness` (`user_id`,`cache_key`,`uid`),
  KEY `created_index` (`created`),
  KEY `index_index` (`user_id`,`cache_key`,`idx`),
  CONSTRAINT `user_id_fk_messages` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24617 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao_acesso`
--

DROP TABLE IF EXISTS `permissao_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao_acesso` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_acesso`),
  KEY `idx_ipaddress` (`ipaddress`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao_acesso`
--

LOCK TABLES `permissao_acesso` WRITE;
/*!40000 ALTER TABLE `permissao_acesso` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissao_acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao_locamail`
--

DROP TABLE IF EXISTS `permissao_locamail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao_locamail` (
  `id_dominio` int(3) NOT NULL DEFAULT '0',
  `flg_acesso_externo` tinyint(4) DEFAULT '0',
  `flg_grupo_externo` tinyint(3) DEFAULT '0',
  `flg_grupo_externo_apelidos` tinyint(4) NOT NULL DEFAULT '0',
  `flg_gerencia_contas` tinyint(3) unsigned DEFAULT '0',
  `flg_gerencia_espaco` tinyint(4) DEFAULT '0',
  `limite_grupo_externo` smallint(6) DEFAULT '0',
  `cota_liberada` int(11) DEFAULT '20480',
  `cota_msg_liberada` int(11) DEFAULT '10240',
  `limite_perfil` tinyint(3) DEFAULT '20',
  `bcc_oculto` tinyint(4) DEFAULT '1',
  `espaco_adicional` int(11) DEFAULT '0',
  `flg_importa_grupo` tinyint(4) DEFAULT '0',
  `flg_importa_apelido` tinyint(4) DEFAULT '0',
  `limite_enderecos_dominio` smallint(6) NOT NULL DEFAULT '400',
  `flg_acoes_lote` tinyint(4) NOT NULL DEFAULT '0',
  `flg_exportar` tinyint(4) DEFAULT '0',
  `flg_busca_avancada` tinyint(4) NOT NULL DEFAULT '0',
  `flg_voicemail` tinyint(4) NOT NULL DEFAULT '0',
  `flg_calendario` tinyint(4) NOT NULL DEFAULT '1',
  `flg_imap` tinyint(4) NOT NULL DEFAULT '1',
  `flg_logs` tinyint(4) NOT NULL DEFAULT '1',
  `flg_firewall_email` tinyint(4) NOT NULL DEFAULT '0',
  `cota_firewall_email` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_dominio`),
  UNIQUE KEY `id_dominio` (`id_dominio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao_locamail`
--

LOCK TABLES `permissao_locamail` WRITE;
/*!40000 ALTER TABLE `permissao_locamail` DISABLE KEYS */;
INSERT INTO `permissao_locamail` VALUES (261862,0,1,0,0,0,3,20480,10240,20,1,0,0,0,400,0,0,0,0,1,1,1,0,0),(142587,0,1,0,0,0,3,20480,10240,20,1,0,0,0,400,0,0,0,0,1,1,1,0,0);
/*!40000 ALTER TABLE `permissao_locamail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id_produto` tinyint(4) NOT NULL DEFAULT '0',
  `nome_produto` varchar(50) NOT NULL DEFAULT '',
  `cod_produto` varchar(10) NOT NULL DEFAULT '',
  `servidor_instalacao` varchar(10) NOT NULL DEFAULT '',
  `home_instalacao` varchar(25) NOT NULL DEFAULT '',
  `locamail_admin` tinyint(4) NOT NULL DEFAULT '0',
  `status_locamail` tinyint(4) NOT NULL DEFAULT '1',
  `status_produto` tinyint(4) NOT NULL DEFAULT '0',
  `email_redir` tinyint(4) NOT NULL DEFAULT '0',
  `apelido_redir` tinyint(4) NOT NULL DEFAULT '0',
  `limite_box` smallint(6) DEFAULT '0',
  `limite_quota` int(11) NOT NULL DEFAULT '0',
  `limite_msg` mediumint(9) NOT NULL DEFAULT '0',
  `limite_msg_envia` mediumint(9) NOT NULL DEFAULT '0',
  `limite_count` mediumint(9) NOT NULL DEFAULT '0',
  `cota_metodo_calculo` tinyint(4) NOT NULL DEFAULT '0',
  `ctl_spam_tipo` tinyint(4) NOT NULL DEFAULT '0',
  `perm_acesso` varchar(20) NOT NULL DEFAULT '',
  `perm_webmail` varchar(20) NOT NULL DEFAULT '',
  `perfil_padrao` varchar(20) NOT NULL DEFAULT '',
  `assinatura` varchar(255) NOT NULL DEFAULT '',
  `flg_grupo_externo` tinyint(2) NOT NULL DEFAULT '0',
  `flg_imap` tinyint(2) NOT NULL DEFAULT '0',
  `flg_acesso_externo` tinyint(2) NOT NULL DEFAULT '0',
  `flg_firewall_email` tinyint(2) NOT NULL DEFAULT '0',
  `limite_grupo_externo` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replicacao`
--

DROP TABLE IF EXISTS `replicacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replicacao` (
  `id` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replicacao`
--

LOCK TABLES `replicacao` WRITE;
/*!40000 ALTER TABLE `replicacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `replicacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servidores`
--

DROP TABLE IF EXISTS `servidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servidores` (
  `servidor` varchar(20) NOT NULL DEFAULT '',
  `ip_interno` varchar(15) NOT NULL DEFAULT '',
  `ip_externo` varchar(15) NOT NULL DEFAULT '',
  `ip_web` varchar(15) NOT NULL DEFAULT '',
  `servicos` varchar(255) NOT NULL DEFAULT '',
  `head_postfix` varchar(50) NOT NULL,
  `home_server` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`servidor`),
  KEY `head_postfix` (`head_postfix`),
  KEY `home_server` (`home_server`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servidores`
--

LOCK TABLES `servidores` WRITE;
/*!40000 ALTER TABLE `servidores` DISABLE KEYS */;
INSERT INTO `servidores` VALUES ('hm483','10.1.10.128','200.234.205.190','10.1.4.25','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD,WEBMAIL','',NULL),('hm47','10.1.10.47','200.234.205.146','10.1.0.80','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','','10.50.0.201'),('hm28','10.1.0.72','200.234.205.144','10.1.4.73','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm191','10.1.10.191','200.234.205.134','10.1.4.91','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm407','10.1.10.133','200.234.205.163','10.1.10.64','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','','NULL'),('hm10','10.1.10.10','200.234.205.141','10.1.0.77','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','','NULL'),('hm15','10.1.10.15','200.234.205.142','10.1.4.65','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','hm4092.email.locaweb.com.br',NULL),('hm20','10.1.10.20','200.234.205.143','10.1.4.56','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm60','10.1.10.60','200.234.205.147','10.1.4.80','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm101','10.1.10.101','200.234.205.148','10.1.4.104','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm158','10.1.10.158','200.234.205.130','10.1.10.24','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm169','10.1.10.169','200.234.205.132','10.1.4.96','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm183','10.1.10.183','200.234.205.135','10.1.4.83','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm196','10.1.10.196','200.234.205.145','10.1.4.57','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm257','10.1.10.57','200.234.205.138','10.1.4.89','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm293','10.1.10.93','200.234.205.139','10.1.4.94','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm331','10.1.10.31','200.234.205.152','10.1.4.84','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm370','10.1.10.35','200.234.205.157','10.1.4.30','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm401','10.1.10.37','200.234.205.162','10.1.4.77','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm456','10.1.10.142','200.234.205.189','','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm506','10.1.10.193','200.234.205.191','10.1.4.24','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD,WEBMAIL','',NULL),('hm539','10.1.10.137','200.234.205.198','','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD,WEBMAIL','homer0001.email.locaweb.com.br','10.50.0.205'),('hm574','10.1.10.44','200.234.205.210','10.1.4.64','MAIL_CLUSTER_HEAD,QMQPD,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm606','10.1.10.78','200.234.205.213','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','homer0002.email.locaweb.com.br',NULL),('hm333','10.1.10.33','200.234.205.153','','','',NULL),('hm642','10.1.10.76','10.1.4.103','10.1.4.93','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm674','10.1.10.85','200.234.205.230','10.1.4.86','MAIL_CLUSTER_HEAD,POP3,SMTPD,QMQPD','',NULL),('hm725','10.1.10.208','200.234.205.67','10.1.10.207','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm720','10.1.10.72','200.234.205.68','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm745','10.1.10.242','200.234.205.237','10.1.10.118','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm793','10.1.10.211','200.234.205.253','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm826','10.1.10.150','201.76.49.3','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm842','10.1.10.209','201.76.49.7','10.1.4.87','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm887','10.1.0.4','201.76.49.12','10.1.4.34','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm928','10.1.0.22','201.76.49.14','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm952','10.1.0.31','201.76.49.13','10.1.0.140','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm990','10.1.0.35','201.76.49.21','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1076','10.1.0.51','201.76.49.30','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1123','10.1.0.67','201.76.49.32','10.1.4.37','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1199','10.1.0.58','201.76.49.33','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('l30dnn0258','10.1.10.9','200.234.205.16','','MAIL_DEDICADO,WEBMAIL,POP,SMTP,IMAP,MAIL_CLUSTER_HEAD','',NULL),('hm1245','10.1.0.84','201.76.49.40','10.1.4.69','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1246','10.1.0.85','201.76.49.42','','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1338','10.1.0.111','201.76.49.20','10.1.4.39','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1401','10.1.0.124','201.76.49.62','10.1.4.70','MAIL_CLUSTER_HEAD,QMQPD,WEBMAIL,POP3D,SMTP,WEBMAIL,IMAP','',NULL),('hm1345','10.1.0.118','201.76.49.232','10.1.0.37','MAIL_CLUSTER_HEAD,QMQPD,POP3D,SMTP,IMAP','',NULL),('serv_teste','','','','','',NULL);
/*!40000 ALTER TABLE `servidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `sess_id` varchar(40) NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ip` varchar(40) NOT NULL,
  `vars` mediumtext NOT NULL,
  PRIMARY KEY (`sess_id`),
  KEY `changed_index` (`changed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessoes_locamail`
--

DROP TABLE IF EXISTS `sessoes_locamail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessoes_locamail` (
  `id_session` varchar(120) NOT NULL DEFAULT '',
  `servidor` varchar(10) DEFAULT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `home` varchar(150) NOT NULL DEFAULT '',
  `dominio` varchar(40) NOT NULL DEFAULT '',
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `usuario` varchar(50) NOT NULL DEFAULT '',
  `painel` tinyint(4) DEFAULT NULL,
  `lw_username` varchar(30) DEFAULT NULL,
  `lw_access` tinyint(4) DEFAULT NULL,
  `lang` varchar(5) DEFAULT 'pt_BR',
  `data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_session`),
  UNIQUE KEY `id_session` (`id_session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessoes_locamail`
--

LOCK TABLES `sessoes_locamail` WRITE;
/*!40000 ALTER TABLE `sessoes_locamail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessoes_locamail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `mail_host` varchar(128) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `last_login` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `preferences` text,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`,`mail_host`),
  KEY `alias_index` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `users` VALUES (1,'locaweb@www539.locaweb.com.br','10.50.1.74','','2011-03-25 14:20:37','2011-03-25 14:20:37','pt_BR','a:5:{s:22:"import_locamail_groups";i:1303232131;s:10:"dst_active";b:0;s:8:"pagesize";i:40;s:15:"import_contacts";i:1303232049;i:0;b:0;}',NULL);
INSERT INTO `users` VALUES (2,'locaweb@www1401.locaweb.com.br','10.50.1.74','','2011-03-25 14:20:37','2011-03-25 14:20:37','pt_BR','a:5:{s:22:"import_locamail_groups";i:1303232131;s:10:"dst_active";b:0;s:8:"pagesize";i:40;s:15:"import_contacts";i:1303232049;i:0;b:0;}',NULL);

CREATE TABLE `rcguard` (
  `ip` VARCHAR(40) NOT NULL,
  `first` DATETIME NOT NULL,
  `last` DATETIME NOT NULL,
  `hits` INT(10) NOT NULL,
  PRIMARY KEY (`ip`),
  INDEX `last_index` (`last`),
  INDEX `hits_index` (`hits`)
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
