-- MySQL dump 10.11
--
-- Host: localhost    Database: lnsmessp
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt

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
-- Table structure for table `busiapply`
--

DROP TABLE IF EXISTS `busiapply`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `busiapply` (
  `busicode` int(11) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `shortTitle` varchar(100) default NULL,
  `contacts` varchar(100) NOT NULL,
  `contactMobile` varchar(20) NOT NULL,
  `description` varchar(255) default NULL,
  `origin` int(11) default '-1',
  `lastupddate` date default NULL,
  `proccess` varchar(20) default '???',
  `isValuing` varchar(20) default '?(??????)',
  PRIMARY KEY  (`busicode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `busiapply`
--

LOCK TABLES `busiapply` WRITE;
/*!40000 ALTER TABLE `busiapply` DISABLE KEYS */;
INSERT INTO `busiapply` VALUES (1,'6d5cff22bf0b4832943c629b494d9060','????','??????,????,???????','?????? ','3123','?????? ',-1,'2014-02-10','???','?(??????)'),(2,'6d5cff22bf0b4832943c629b494d9060','????','??????,????,???????','?????? ','3123','?????? ',-1,'2014-02-10','???','?(??????)');
/*!40000 ALTER TABLE `busiapply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policyfile`
--

DROP TABLE IF EXISTS `policyfile`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `policyfile` (
  `Id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) character set utf8 default NULL,
  `content` blob,
  `lastupddate` date default NULL,
  `attachment` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `attachmentpath` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `policyfile`
--

LOCK TABLES `policyfile` WRITE;
/*!40000 ALTER TABLE `policyfile` DISABLE KEYS */;
INSERT INTO `policyfile` VALUES (1,'åŒ—äº¬ç»æµŽæŠ€æœ¯å¼€å‘åŒºæµ·å¤–é«˜å±‚æ¬¡äººæ‰åˆ›åŠžä¼ä¸šæˆ¿ç§Ÿè¡¥è´´å®žæ–½åŠžæ³•ï¼ˆè¯•è¡Œï¼‰','\r\n                    À´Ô´£º±±¾©º£ÍâÑ§ÈËÖÐÐÄ¿ª·¢Çø·ÖÖÐÐÄ      ·¢²¼Ê±¼ä£º2011-04-13\r\n\r\nµÚÒ»Ìõ ÎªÂäÊµ±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çø£¨ÒÔÏÂ¼ò³Æ¿ª·¢Çø£©¡¶¹ØÓÚ¹ÄÀøºÍÎüÒýº£Íâ¸ß²ã´ÎÈË²ÅÀ´±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çø´´ÒµºÍ¹¤×÷µÄÒâ¼û£¨ÊÔÐÐ£©¡·£¨ÒÔÏÂ¼ò³Æ¡¶Òâ¼û¡·£©µÚÎåÌõµÚÎå¿î¡°º£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµÔÚ¾­¹ýÈÏ¶¨µÄ·õ»¯ÇøÓò×âÁÞ°ì¹«³¡ËùºÍÉú²ú³¡µØ£¬¿ÉÏíÊÜ·¿×â²¹Ìù£¬²¹Ìù¶î¶ÈÏàµ±ÓÚÆóÒµ´ÓÆð×âÈÕÆðÒ»ÄêÊµ¼ÊÖ§¸¶×â½ðµÄ50%£»µ¥¸öÆóÒµ²¹ÌùÊ±¼äÎªÁ½Äê£¬×Ü¶î¶È²»³¬¹ý200ÍòÔª¡£¡±µÄÕþ²ß¹æ¶¨£¬¹ÄÀøº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ½«ÏÈ½øµÄ¼¼ÊõºÍ¿Æ¼¼³É¹ûÔÚ´óÐËÇø¡¢¿ª·¢Çø½øÐÐ²úÒµ»¯£¬Ö§³Öº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ·¢Õ¹×³´ó£¬ÖÆ¶¨±¾ÊµÊ©°ì·¨¡£\r\n   \r\nµÚ¶þÌõ ±¾°ì·¨Ëù³Æº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ£¬ÊÇÒÀÕÕ¡¶±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çøº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµÈÏ¶¨°ì·¨£¨ÊÔÐÐ£©¡·ÈÏ¶¨µÄº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ£¨ÒÔÏÂ¼ò³ÆÆóÒµ£©¡£\r\n   \r\nµÚÈýÌõ ÆóÒµ·¿×â²¹ÌùµÄÈÕÆÚ´ÓÆóÒµ±»ÈÏ¶¨Îªº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµ£¬²¢½ÉÄÉ·¿×âÖ®ÈÕ¿ªÊ¼¼ÆËã¡£\r\n   \r\nµÚËÄÌõ ÆóÒµ×¢²áµØÖ·¡¢Ë°ÎñµÇ¼Ç¡¢Í³¼ÆµÇ¼Ç¡¢ÆóÒµ°ì¹«³¡Ëù»òÉú²ú³¡µØÓ¦ÔÚ¿ª·¢Çø»ò´óÐËÇø·¶Î§ÄÚ¡£\r\n   \r\nµÚÎåÌõ ±»ÈÏ¶¨Îªº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµÒÔÀ´£¬¸ÃÆóÒµÓ¦ÎÞÒòÎ¥·¨Î¥¹æ±»ÐÐÕþÖ´·¨²¿ÃÅ´¦·£µÄ¼ÇÂ¼¡£\r\n   \r\nµÚÁùÌõ ÆóÒµÉêÇë·¿×â²¹ÌùÐèÌá½»ÒÔÏÂ²ÄÁÏ£º\r\n    1¡¢¡¶±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çøº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµ·¿×â²¹ÌùÉêÇë±í¡·£» \r\n    2¡¢ÆóÒµÓªÒµÖ´ÕÕ¡¢Ë°ÎñµÇ¼ÇÖ¤£»\r\n    3¡¢ÆóÒµ°ì¹«³¡Ëù»òÉú²ú³¡µØ·¿ÎÝ×âÁÞÐ­Òé£»\r\n    4¡¢ÆóÒµ½ÉÄÉ·¿×âÆ¾Ö¤µÄ¸´Ó¡¼þ£»\r\n    5¡¢¼Ó¸Ç¹¤ÉÌÐÐÕþ²¿ÃÅµµ°¸²éÑ¯×¨ÓÃÕÂµÄ¡°ÆóÒµÕÂ³Ì»òÕÂ³ÌÐÞÕý°¸¡±µÄ¸´Ó¡¼þ¡£\r\n   \r\nµÚÆßÌõ ±±¾©º£ÍâÑ§ÈËÖÐÐÄ¿ª·¢Çø·ÖÖÐÐÄ¸ºÔðÊÜÀíÉêÇë£¬³õÉóºó±¨ËÍ¿ª·¢Çøº£ÍâÑ§ÈË¹¤×÷ÁªÏ¯»á°ì¹«ÊÒ¡£¿ª·¢Çøº£ÍâÑ§ÈË¹¤×÷ÁªÏ¯»á°ì¹«ÊÒÉóºË²¢Õ÷ÇóÓÐ¹ØÐÐÕþÖ´·¨²¿ÃÅµÄÒâ¼ûºó£¬±¨¿ª·¢ÇøÖ÷¹Üº£ÍâÑ§ÈË¹¤×÷µÄÁìµ¼ÉóÅú¡£\r\n   \r\nµÚ°ËÌõ ±¾°ì·¨ÓÉ¿ª·¢Çøº£ÍâÑ§ÈË¹¤×÷ÁªÏ¯»á°ì¹«ÊÒ¸ºÔð½âÊÍ¡£\r\n   \r\nµÚ¾ÅÌõ ±¾°ì·¨×Ô·¢²¼Ö®ÈÕÆðÊµÊ©¡£\r\n','2013-01-01',NULL,NULL,NULL),(2,'ä¸­ç§‘å›­å‘[2012]39å·å…³äºŽå°å‘ã€Šä¸­å…³æ‘å›½å®¶è‡ªä¸»åˆ›æ–°ç¤ºèŒƒåŒºäº§ä¸šæŠ€æœ¯è”ç›Ÿä¸“é¡¹èµ„é‡‘ç®¡ç†åŠžæ³•ã€‹','\r\n                                    ÖÐ¿ÆÔ°·¢¡²2012¡³39ºÅ\r\n\r\nµÚÒ»ÕÂ  ×ÜÔò\r\nµÚÒ»Ìõ  ¸ù¾Ý¡¶¹ØÓÚÍÆ¶¯²úÒµ¼¼Êõ´´ÐÂÕ½ÂÔÁªÃË¹¹½¨µÄÖ¸µ¼Òâ¼û¡·£¨¹ú¿Æ·¢Õþ¡²2008¡³770ºÅ£©¡¢¡¶¹ØÓÚ´Ù½ø²úÒµ¼¼Êõ´´ÐÂÕ½ÂÔÁªÃË¼Ó¿ì·¢Õ¹µÄÒâ¼û¡·£¨¾©¿Æ·¢¡²2011¡³303ºÅ£©¡¢¡¶ÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø·¢Õ¹×¨Ïî×Ê½ð¹ÜÀí°ì·¨¡·£¨¾©²ÆÎÄ¡²2011¡³2858ºÅ£©ºÍ¡¶ÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø·¢Õ¹×¨Ïî×Ê½ð£¨ÊÐ¼¶Í³³ï²¿·Ö£©Ê¹ÓÃ¹ÜÀí°ì·¨¡·£¨ÖÐ¿ÆÔ°·¢¡²2011¡³26ºÅ£©µÈÎÄ¼þ¾«Éñ£¬Îª½øÒ»²½´Ù½øÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø£¨ÒÔÏÂ¼ò³ÆÖÐ¹Ø´åÊ¾·¶Çø£©²úÒµ¼¼ÊõÁªÃË·¢Õ¹£¬ÍÆ¶¯´´ÐÂ×ÊÔ´ÕûºÏ£¬Éî»¯²úÑ§ÑÐÓÃºÏ×÷£¬ÍÆ½ø´´ÐÂÌåÏµ½¨Éè£¬ÌáÉýÊ¾·¶ÇøÄÚÖØµã·¢Õ¹²úÒµµÄ¾ºÕùÁ¦£¬ÍÆ¶¯ÐÎ³É²úÒµ¼¯Èº£¬ÖÐ¹Ø´å¿Æ¼¼Ô°Çø¹ÜÀíÎ¯Ô±»á(ÒÔÏÂ¼ò³ÆÖÐ¹Ø´å¹ÜÎ¯»á)ÉèÁ¢²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ð¡£Îª¹æ·¶¶Ô¸Ã×Ê½ðµÄ¹ÜÀí£¬ÌØÖÆ¶¨±¾°ì·¨¡£\r\nµÚ¶þÌõ  ²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ð´ÓÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø·¢Õ¹×¨Ïî×Ê½ðÖÐÁÐÖ§£¬²¢°´ÕÕÄê¶ÈÔ¤Ëã½øÐÐ°²ÅÅ¡£\r\n\r\nµÚ¶þÕÂ  Ö§³Ö·¶Î§\r\nµÚÈýÌõ  ±¾°ì·¨ËùÖ§³ÖµÄ²úÒµ¼¼ÊõÁªÃË£¨ÒÔÏÂ¼ò³ÆÁªÃË£©ÊÇÖ¸ÒÔÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø¸ßÐÂ¼¼ÊõÆóÒµÎªÖ÷Ìå£¬Õþ²úÑ§ÑÐÓÃµ¥Î»²ÎÓë£¬ÒÔÌáÉýÆóÒµ´´ÐÂÄÜÁ¦ºÍ²úÒµ¾ºÕùÁ¦ÎªÄ¿±ê£¬ÒÔÆõÔ¼¹ØÏµÎª±£ÕÏ£¬ÐÎ³ÉÃ÷È·µÄ×ÊÔ´ÕûºÏ¡¢ºÏ×÷ÔËÓª¡¢ÀûÒæ·ÖÏí»úÖÆµÄ´´ÐÂºÏ×÷×éÖ¯¡£\r\nµÚËÄÌõ  ÉêÇë×Ê½ðÖ§³ÖµÄÁªÃËÓ¦·ûºÏÒÔÏÂÌõ¼þ£º\r\n    £¨Ò»£©·ûºÏÖÐ¹Ø´åÊ¾·¶ÇøÖØµãÅàÓýºÍ·¢Õ¹µÄÕ½ÂÔÐÔÐÂÐË²úÒµ·¢Õ¹·½Ïò£¬×ÊÔ´ÕûºÏÄÜÁ¦Í»³ö¡¢ÔËÓª¹ÜÀí»úÖÆÍêÉÆ¡¢Áì¾üÆóÒµ¾Û¼¯¶È¸ß¡¢ÐÐÒµÓ°ÏìÁ¦´óµÄÁªÃË£»\r\n    £¨¶þ£©ÀíÊÂ³¤µ¥Î»»òÃØÊé³¤µ¥Î»Îª×¢²áÔÚÖÐ¹Ø´åÊ¾·¶ÇøµÄ·¨ÈËµ¥Î»£¬»òÕßÁªÃËºËÐÄ³ÉÔ±µ¥Î»×¢²áÔÚÖÐ¹Ø´åµÄ±ÈÀý²»µÍÓÚ50%¡£\r\nµÚÎåÌõ  ÉêÇë×Ê½ðÖ§³ÖµÄÁªÃË³ÉÔ±µ¥Î»Ó¦Îª×¢²áÔÚÖÐ¹Ø´åÊ¾·¶ÇøÄÚµÄ¸ßÐÂ¼¼ÊõÆóÒµ¡£\r\nµÚÁùÌõ  ÖÐ¹Ø´åÊ¾·¶Çø²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ðÖ÷ÒªÓÃÓÚÖ§³ÖÁªÃË³ÉÔ±¿ªÕ¹²úÑ§ÑÐÓÃºÏ×÷¡¢²úÒµÁ´Ð­Í¬´´ÐÂ¡¢Î§ÈÆÖØ´óÐèÇóÌá¹©ÏµÍ³½â¾ö·½°¸£¬½¨Éè¹«¹²¼¼ÊõÆ½Ì¨ºÍ²úÒµ·þÎñÆ½Ì¨£¬¿ªÕ¹½»Á÷ºÏ×÷£¬ÔöÇ¿ÐÐÒµÓ°ÏìÁ¦ºÍÄý¾ÛÁ¦µÈ¹¤×÷¡£\r\n\r\nµÚÈýÕÂ  Ö§³ÖÌõ¼þºÍ¶î¶È\r\nµÚÆßÌõ  Ö§³ÖÁªÃË³ÉÔ±ÆóÒµ²ÎÓë¹ú¼ÒÖØ´ó¿Æ¼¼¼Æ»®£¬Î§ÈÆ¹ú¼ÒÕ½ÂÔ¡¢Éç»á¹ÜÀí¡¢¸ÄÉÆÃñÉúµÈ·½ÃæµÄÖØ´ó¿Æ¼¼ÐèÇó£¬ÑÐ·¢Ç°ÑØ¼¼Êõ»ò¹Ø¼üºËÐÄ¼¼Êõ£¬¿ªÕ¹¼¯³É´´ÐÂºÍÓ¦ÓÃÊ¾·¶¡£\r\n    £¨Ò»£©¶ÔÁªÃË³ÉÔ±ÆóÒµÇ£Í·³Ðµ£µÄÉÏÒ»Äê¶È¹ú¼Ò¿Æ¼¼»ù´¡ÉèÊ©ÏîÄ¿£¬ÇÒÔÚ¾©ÂäµØµÄ£¬°´ÕÕ¹ú¼ÒÖ§³Ö½ð¶îµÄ20%¸øÓèÅäÌ××Ê½ðÖ§³Ö£¬Ã¿¼ÒÆóÒµÃ¿¸öÏîÄ¿×î¸ß²»³¬¹ý300ÍòÔª¡£\r\n    £¨¶þ£©¶ÔÁªÃË³ÉÔ±ÆóÒµÇ£Í·³Ðµ£µÄÉÏÒ»Äê¶È¹ú¼ÒÓÐ¹Ø²¿ÃÅµÄÖØµãÁìÓò²úÒµ»¯×¨Ïî£¬°´ÕÕ¹ú¼ÒÖ§³Ö½ð¶îµÄ20%¸øÓèÅäÌ××Ê½ðÖ§³Ö£¬Ã¿¼ÒÆóÒµÃ¿¸öÏîÄ¿×î¸ß²»³¬¹ý300ÍòÔª¡£\r\n    ±¾ÌõËùÖ¸µÄÏîÄ¿²»°üÀ¨¡¶¹ú¼ÒÖÐ³¤ÆÚ¿ÆÑ§¼¼Êõ·¢Õ¹¹æ»®¸ÙÒª£¨2006-2020Äê£©¡·È·¶¨µÄ¹ú¼Ò¿Æ¼¼ÖØ´ó×¨ÏîÏîÄ¿¡£\r\nµÚ°ËÌõ  Ö§³Ö²úÒµÁªÃË½¨Á¢½¡È«¹²ÐÔ¼¼Êõ·þÎñÆ½Ì¨£¬ÏòÁªÃË³ÉÔ±¿ª·Å¹²Ïí£¬Ìá¹©ÓÐ¹ØÑÐ·¢¡¢²âÊÔ¡¢ÑéÖ¤¡¢ÅàÑµµÈ·þÎñ¡£\r\n    £¨Ò»£©¶ÔÁªÃË¸ù¾Ý³ÉÔ±¹²ÐÔ¼¼ÊõÐèÇó£¬ÔÚÏÖÓÐ¿Æ¼¼Ö§³ÅÆ½Ì¨´æÔÚ¿Õ°×µÄÁìÓò£¬ÕûºÏ×ÊÔ´£¬×ÔÖ÷´´ÐÂÐÎ³ÉµÄÐÂµÄÑÐ·¢¡¢²âÊÔ¡¢ÑéÖ¤µÈÏµÍ³Èí¼þºÍÉè±¸£¬¸øÓè²»³¬¹ý100ÍòÔªµÄ×Ê½ð²¹Ìù¡£\r\n    £¨¶þ£©¶ÔÁªÃË»òÆä³ÉÔ±µ¥Î»Ç£Í·³ï½¨¹ú¼Ò¹¤³ÌÑÐ¾¿ÖÐÐÄ¡¢¹ú¼Ò¹¤³Ì¼¼ÊõÑÐ¾¿ÖÐÐÄ¡¢¹ú¼ÒÖØµãÊµÑéÊÒµÈÉèÊ©£¬ÔÚ»ñµÃ¹ú¼ÒÓÐ¹Ø²¿ÃÅÊÜÀíºó£¬¸øÓè200ÍòÔª³ï½¨¾­·ÑÖ§³Ö¡£\r\nµÚ¾ÅÌõ  Ö§³Ö²úÒµÁªÃËÇ£Í·£¬¶Ô½Ó³ÇÊÐ½¨Éè¡¢ÔËÐÐ¹ÜÀí¡¢ÃñÉú¡¢ÐÂÅ©´å½¨Éè¡¢ÖØ´ó»î¶¯µÈ·½ÃæµÄÖØ´ó¿Æ¼¼ÐèÇó£¬×éÖ¯²úÒµÁ´¸÷»·½Ú´´ÐÂ×ÊÔ´£¬¿ªÕ¹ÖØ´óÏîÄ¿¶¥²ãÉè¼Æ£¬ÊµÊ©ÐÐÒµ»òÇøÓòÓ¦ÓÃÊ¾·¶¡£\r\n¶ÔÓÚÓÉÖÐ¹Ø´åÆóÒµÇ£Í·£¬ÁªºÏ2¼ÒÒÔÉÏ²úÒµÁ´ÉÏÏÂÓÎµ¥Î»¹²Í¬²ÎÓëÊµÊ©µÄ¡¢ÇÒÒÑÓëÓÃ»§µ¥Î»Ç©¶©ºÏ×÷Ð­ÒéµÄÏîÄ¿£¬°´ÕÕ²»³¬¹ýÏîÄ¿ºÏÍ¬¶îµÄ20%¸øÓè×Ê½ðÖ§³Ö£¬µ¥¸öÏîÄ¿²¹Öú×Ê½ð×î¸ß²»³¬¹ý500ÍòÔª¡£\r\nµÚÊ®Ìõ  Ö§³Ö²úÒµÁªÃË³ÉÔ±ÆóÒµÎ§ÈÆÖØµãÅàÓýºÍ·¢Õ¹µÄÕ½ÂÔÐÔÐÂÐË²úÒµ¹Ø¼üÆ¿¾±¼¼Êõ¡¢Ç°ÑØ¼¼Êõ¡¢¹²ÐÔ¼¼Êõ¡¢Æ½Ì¨¼¼ÊõµÈ¿ªÕ¹¿Æ¼¼¹¥¹Ø£¬¶Ô×ÔÖ÷ÑÐ·¢È¡µÃÖØ´ó½øÕ¹µÄÐÂ¼¼ÊõºÍÐÂ²úÆ·µÄÊ×´ÎÊÔÉÌÓÃ£¬¸øÓè²»³¬¹ý300ÍòÔªµÄ×Ê½ðÖ§³Ö¡£\r\nµÚÊ®Ò»Ìõ  Ö§³Ö²úÒµÁªÃËÔÚ²úÒµ¹¹½¨¡¢ÐÐÒµ½»Á÷¡¢ÊÐ³¡ÍÆ¹ã¡¢Æ·ÅÆÅàÓýµÈ·½Ãæ·¢»ÓÍ³³ïºÍÅ¦´ø×÷ÓÃ£¬ÎªÁªÃË³ÉÔ±¼°ÐÐÒµÆóÒµÌá¹©ÓÐ¹ØÐÅÏ¢¡¢ÇþµÀºÍ·þÎñ¡£\r\n    £¨Ò»£©Ö§³Ö²úÒµÁªÃËÇ£Í·½¨ÉèÐÐÒµÐÂ¼¼Êõ¡¢ÐÂ²úÆ·µÄ¼¯ÖÐÕ¹Ê¾ºÍÌåÑéÖÐÐÄ£¬¶ÔÓÚÕ¹Ê¾Ãæ»ý²»ÉÙÓÚ100Æ½·½Ã×£¬²ÎÕ¹ÆóÒµÊýÁ¿²»ÉÙÓÚ15¼Ò£¬ÇÒÃæÏòÉç»á¿ª·Å²¢½¨Á¢ÁË¶¨ÆÚÂÖÕ¹»úÖÆ£¬Á¼ºÃ³ÊÏÖ²úÒµÁ´»òÏµÍ³·½°¸ÕûÌåÐ§¹ûµÄ£¬°´Äê¶È¸øÓè²úÒµÁªÃË20ÍòÔª×Ê½ðÖ§³Ö¡£\r\n    £¨¶þ£©Ö§³Ö²úÒµÁªÃËÖ÷°ì»ò³Ð°ì¾ßÓÐÆ·ÅÆÐ§Ó¦¡¢È«¹úÐÔ»òÈ«Çò¾ßÓÐÓ°ÏìÁ¦µÄ²úÒµÄê»á»òÂÛÌ³»î¶¯£¬ÌáÉý»°ÓïÈ¨ºÍÀ©´óÐÐÒµÓ°ÏìÁ¦¡£¶ÔÓÚÈ«¹úÐÔµÄ¡¢¹ú¼ÒÐÐÒµÖ÷¹Ü²¿ÃÅ²ÎÓë¡¢»áÒé¹æÄ£²»ÉÙÓÚ150ÈËµÄ»î¶¯£¬¸øÓè20ÍòÔª×Ê½ðÖ§³Ö£»¶ÔÓÚ¹ú¼ÊÐÔµÄ¡¢¹ú¼ÊÈ¨Íþ²úÒµ×éÖ¯²ÎÓë¡¢»áÒé¹æÄ£²»ÉÙÓÚ200ÈËµÄ»î¶¯£¬¸øÓè30ÍòÔª×Ê½ðÖ§³Ö¡£\r\n    £¨Èý£©¹ÄÀø²úÒµÁªÃË½¨Á¢ÐÐÒµÐÂ¼¼ÊõÐÂ²úÆ·ÐÅÏ¢¿â£¬Ïò¹ú¼ÒºÍ±¾ÊÐÓÐ¹Ø²¿ÃÅ»ý¼«ÍÆ¼ö½øÈëÏà¹ØÄ¿Â¼£¬Í¨¹ýÖÐ¹Ø´åÍøÕ¾ºÍÆäËûÃ½ÌåÏòÉç»á·¢²¼Ðû´«£¬×éÖ¯ÁªÃË³ÉÔ±²ÎÓë¹úÄÚÍâÓÐÓ°ÏìÁ¦µÄÕ¹ÀÀÕ¹»á£¬¶ÔÍÆ½éÈ¡µÃÃ÷ÏÔ³ÉÐ§µÄ£¬°´ÕÕÓÐ¹Ø×Ê½ð¹ÜÀí°ì·¨¸øÓèÖ§³Ö¡£\r\n    £¨ËÄ£©¹ÄÀø²úÒµÁªÃË´øÁì³ÉÔ±ÆóÒµ»ý¼«¿ªÍØ¹úÄÚÍâÊÐ³¡£¬¶Ô½ÓÓÐ¹ØÐÐÒµÖ÷¹Ü²¿ÃÅºÍÓÃ»§µ¥Î»£¬Éè¼ÆÕûÌå½â¾ö·½°¸£¬¶ÔÓÚÈ¡µÃÊµÖÊÐÔ½øÕ¹µÄ£¬°´ÕÕÓÐ¹Ø×Ê½ð¹ÜÀí°ì·¨¸øÓèÖ§³Ö¡£\r\nµÚÊ®¶þÌõ  Ö§³ÖÁªÃË¿ªÕ¹ÒÔÏÂ¹¤×÷£¬ÔöÇ¿²úÒµÄý¾ÛÁ¦¡¢»°ÓïÈ¨¡¢Ó°ÏìÁ¦ºÍ¹«ÐÅÁ¦£¬ÔÚ×ÊÔ´ÕûºÏ¡¢Ð­Í¬´´ÐÂ¡¢ÊÐ³¡ÍÆ¹ã¡¢Õþ²ß¶Ô½ÓºÍ·þÎñÐÐÒµµÈ·½Ãæ·¢»ÓÓÐÐ§×÷ÓÃ¡£\r\n    £¨Ò»£©×é½¨×¨Ö°¹¤×÷ÍÅ¶Ó£¬ÖªÊ¶²úÈ¨¡¢¾­·Ñ¹ÜÀí¡¢ÀûÒæ·ÖÅä¡¢ÄÚ²¿¼à¶½¹ÜÀíµÈÏà¹ØÖÆ¶È½¡È«£¬ÄÜ¹»¸ßÐ§¡¢³£Ì¬»¯ÔËÐÐ£¨20·Ö£©£»\r\n    £¨¶þ£©±àÖÆÄê¶È²úÒµ·¢Õ¹°×Æ¤ÊéºÍ¼¼ÊõÇ÷ÊÆÀ¶Æ¤Êé£¬¶Ô³ÉÔ±ÆóÒµÌá¹©¿Æ¼¼Çé±¨ºÍÐÅÏ¢·þÎñ£¬¶ÔÕþ¸®²¿ÃÅÌá¹©²ÎÄ±¾ö²ß·þÎñ£¨20·Ö£©£»\r\n    £¨Èý£©»ý¼«ÍÆ¼ö±±¾©ÊÐÖØ´ó¿Æ¼¼³É¹û×ª»¯ºÍ²úÒµÍ³³ïÏîÄ¿¡¢ÖÐ¹Ø´åÏÖ´ú·þÎñÒµÊÔµãÏîÄ¿¡¢²¿ÊÐ»áÉÌÏîÄ¿¡¢ÖØ´óÊ¾·¶¹¤³ÌµÈÖØ´óÏîÄ¿£¬Äê¶È»ñµÃ±¾ÊÐÁ¢Ïî»òÉÏ±¨²¿Î¯µÄÏîÄ¿²»ÉÙÓÚ5Ïî£¨20·Ö£©£»\r\n    £¨ËÄ£©¶ÔÖÐ¹Ø´åÊ¾·¶ÇøÕþ²ßÏÈÐÐÏÈÊÔ¡¢ÈË²ÅÌØÇø½¨Éè¡¢Õþ¸®²É¹º¡¢Æ·ÅÆÐû´«¡¢¿Æ¼¼½ðÈÚ¡¢¹ú¼Ê»¯·¢Õ¹¡¢Õ¹ÀÀÕ¹Ê¾¡¢ÇøÓòºÏ×÷µÈÖØµã¹¤×÷£¬·¢»ÓÁËÍÆ¼ö¡¢×éÖ¯µÈÖ§³Å×÷ÓÃ£¨25·Ö£©£»\r\n    £¨Îå£©½¨Á¢ÁË¹²ÐÔ¼¼ÊõÑÐ·¢»òÓ¦ÓÃÆ½Ì¨£¬»òÈË²Å¡¢ÐÅÏ¢¡¢ÈÚ×Ê¡¢Õþ²ßÐû¹á¡¢Õ¹ÀÀÕ¹Ê¾µÈ²úÒµ·þÎñÆ½Ì¨£¨10·Ö£©£»\r\n    £¨Áù£©´î½¨ÁËÕþ¸®¡¢ÆóÒµ¡¢ÖÐ½é×éÖ¯Ö®¼äµÄ¹µÍ¨ÇþµÀ£¬ÐÎ³ÉÁËÉ³Áú¡¢ÍøÕ¾¡¢¼ò±¨µÈ³£Ì¬»¯µÄ½»Á÷»úÖÆ£¨5·Ö£©¡£\r\n    ¶ÔÔËÐÐ»úÖÆ½¡È«£¬Î§ÈÆÉÏÊöÊÂÏî¿ªÕ¹ÁËÓÐÐ§¹¤×÷£¬¶ÔÖÐ¹Ø´åÊ¾·¶Çø²úÒµ´Ù½ø¹¤×÷·¢»ÓÁËÖØÒªÖ§³Å×÷ÓÃµÄ²úÒµÁªÃË£¬°´ÕÕÍê³ÉÐ§¹û·Ö±ð¸øÓè²»Í¬¶î¶ÈµÄÖ§³Ö¡£¶ÔÉÏÒ»Äê¶È¿ªÕ¹ÁËÁùÏîÈ«²¿¹¤×÷£¬¸ù¾ÝÍê³ÉÐ§¹ûºÍÆÀ¹À´ò·ÖÇé¿ö£¬¸øÓè²»³¬¹ý100ÍòÔªµÄÔËÓª¾­·ÑÖ§³Ö£»¶ÔÉÏÒ»Äê¶È¿ªÕ¹ÁË²»ÉÙÓÚÎåÏî¹¤×÷£¬¸ù¾ÝÍê³ÉÐ§¹ûºÍÆÀ¹À´ò·ÖÇé¿ö£¬¸øÓè²»³¬¹ý80ÍòÔªµÄÔËÓª¾­·ÑÖ§³Ö£»¶ÔÉÏÒ»Äê¶È¿ªÕ¹ÁË²»ÉÙÓÚËÄÏî¹¤×÷£¬¸ù¾ÝÍê³ÉÐ§¹ûºÍÆÀ¹À´ò·ÖÇé¿ö£¬¸øÓè²»³¬¹ý50ÍòÔªµÄÔËÓª¾­·ÑÖ§³Ö¡£\r\nµÚÊ®ÈýÌõ  ÆäËûÊÂÒËÈçÏÂ£º\r\n    £¨Ò»£©¶Ô²úÒµÁªÃË»ò³ÉÔ±µ¥Î»ÓÐ¹ØµÄ×¨Àû±ê×¼´´ÖÆ¡¢¹ú¼Ê»¯ÍØÕ¹¡¢·õ»¯Æ÷½¨Éè¡¢ÈÚ×ÊµÈÖØ´ó½øÕ¹£¬°´ÕÕ¡¶ÖÐ¹Ø´å×¨Àû´Ù½ø×Ê½ð¹ÜÀí°ì·¨¡·¡¢¡¶ÖÐ¹Ø´å¼¼Êõ±ê×¼×ÊÖú×Ê½ð¹ÜÀí°ì·¨¡·¡¢¡¶ÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø´óÑ§¿Æ¼¼Ô°¼°¿Æ¼¼ÆóÒµ·õ»¯Æ÷·¢Õ¹Ö§³Ö×Ê½ð¹ÜÀí°ì·¨¡·µÈÏà¹Ø×Ê½ð¹ÜÀí°ì·¨µÄ¹æ¶¨Ö´ÐÐ¡£\r\n    £¨¶þ£©¶Ô²úÒµÁªÃËÇ£Í·½¨Éè×¨Òµ¼¯¾ÛÇø¡¢·¢ÆðÉèÁ¢²úÒµÍ¶×Ê»ù½ðµÈÊÂ¹ØÁªÃËÕûÌå·¢Õ¹¡¢´Ù½ø²úÒµ¼¯ÈºÐÎ³É¡¢²¢ÓÐÀûÓÚÊµÏÖÖÐ¹Ø´åÊ¾·¶Çø·¢Õ¹Ä¿±êµÄÆäËû¹¤×÷£¬¸ù¾Ý¹¤×÷¿ªÕ¹Çé¿ö¸øÓèÖ§³Ö¡£\r\n\r\nµÚËÄÕÂ  ÉêÇëºÍÉóºË\r\nµÚÊ®ËÄÌõ  ÖÐ¹Ø´å¹ÜÎ¯»á¸ù¾ÝÄê¶È×¨Ïî×Ê½ðÔ¤ËãÇé¿ö£¬±àÖÆÄê¶È¹¤×÷·½°¸£¬Í¨¹ýÖÐ¹Ø´å¹ÜÎ¯»áÍøÕ¾£¨www.zgc.gov.cn£©¹«²¼ÊÜÀíÊ±¼ä¡¢ÊÜÀíÁ÷³ÌºÍÆäËûÊÂÏî¡£\r\nµÚÊ®ÎåÌõ  ÖÐ¹Ø´å¹ÜÎ¯»áÎ¯ÍÐÖÐ¹Ø´åÁªÃËÁªÏ¯»á»òÏà¹Ø»ú¹¹°´ÕÕÍ¨ÖªÒªÇó£¬¸ºÔðÊÜÀíÁªÃË»òÆä³ÉÔ±µ¥Î»ÓÐ¹Ø×Ê½ðºÍÏîÄ¿µÄÉêÇë£¬²¢×éÖ¯¿ªÕ¹ÓÐ¹ØÆÀÉóºÍÉê±¨²ÄÁÏºËÑé¹¤×÷¡£\r\nµÚÊ®ÁùÌõ  ¶ÔÓÚ²ÉÈ¡ºó²¹ÖúÖ§³Ö·½Ê½µÄÏîÄ¿£¬ÓÉÖÐ¹Ø´å¹ÜÎ¯»á¼à²ì´¦¡¢²ÆÎñ´¦¡¢²úÒµ·¢Õ¹´Ù½ø´¦µÈÏà¹Ø´¦ÊÒºÍ×¨¼Ò½øÐÐÁªºÏÆÀ¹À£¬×¨¼ÒÓ¦×ñÊØÓÐ¹Ø»Ø±ÜÖÆ¶È²¢Ç©Êð±£ÃÜÐ­Òé£»¶ÔÓÚ²ÉÈ¡Ç°²¹ÖúÖ§³Ö·½Ê½µÄÏîÄ¿£¬ÓÉÖÐ¹Ø´å¹ÜÎ¯»áÎ¯ÍÐÏà¹Ø»ú¹¹×éÖ¯ÆÀÉó¡£\r\nµÚÊ®ÆßÌõ  ¾­Ö÷ÈÎ×¨Ìâ»áÉóÒéºó£¬È·¶¨Äê¶ÈÖ§³ÖµÄÁªÃËÃûµ¥¡¢ÏîÄ¿Ãûµ¥¼°Ö§³Ö½ð¶î¡£ÖÐ¹Ø´å¹ÜÎ¯»áÎ¯ÍÐÖÐ¹Ø´å²úÒµ¼¼ÊõÁªÃËÁªÏ¯»áÏò²úÒµÁªÃËÍ¨±¨Á¢ÏîÖ§³ÖÇé¿ö¡£\r\nµÚÊ®°ËÌõ  ÖÐ¹Ø´å¹ÜÎ¯»á°´ÕÕ²»³¬¹ý±¾°ì·¨Ëù¹æ¶¨ÉÏÏÞµÄÔ­Ôò£¬¸ù¾Ý·ÖÄê¶ÈÔ¤Ëã×Ü¶îÈ·¶¨Ã¿ÄêÖ§³Ö±ÈÀýºÍ¶î¶È¡£\r\n\r\nµÚÎåÕÂ  ¼à¶½¹ÜÀí\r\nµÚÊ®¾ÅÌõ  ×Ê½ðÊ¹ÓÃµ¥Î»ºÍÊÜÍÐ¹¤×÷µ¥Î»ÓÐÒåÎñ½ÓÊÜÖÐ¹Ø´å¹ÜÎ¯»á¡¢ÊÐÉó¼Æ¾Ö¡¢ÊÐ²ÆÕþ¾ÖµÄÉó¼ÆºÍ²ÆÕþ¼à¶½£¬²¢ÅäºÏ¿ªÕ¹¼¨Ð§ÆÀ¼Û¡¢Ðû´«¡¢µ÷ÑÐµÈ¹¤×÷¡£\r\nµÚ¶þÊ®Ìõ  ÖÐ¹Ø´å¹ÜÎ¯»á²ÆÎñ´¦¡¢¼à²ì´¦¶Ô²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ðµÄÊ¹ÓÃÇé¿ö½øÐÐ¼ì²éºÍ¼à¶½¡£Ô­ÔòÉÏÖ§³Ö×Ê½ðÔÚ100ÍòÔªÒÔÉÏµÄÏîÄ¿£¬°´ÕÕ¡¶ÖÐ¹Ø´å¹ÜÎ¯»áÁªºÏÒøÐÐ¼ÓÇ¿¶Ô·¢Õ¹×Ê½ðÖ§³ÖÏîÄ¿¼à¹ÜÊÔµãµÄ¹¤×÷·½°¸¡·£¨ÖÐ¿ÆÔ°·¢¡²2007¡³19ºÅ£©ÁªºÏÒøÐÐ½øÐÐ¼à¹Ü¡£\r\nµÚ¶þÊ®Ò»Ìõ  ¶ÔÓÚÈ±·¦¹«ÐÅÁ¦¡¢Ê§È¥´ú±íÐÔ¡¢ÔËÓªÄÜÁ¦±¡Èõ¡¢ÊÜµ½³ÉÔ±µ¥Î»¶à´ÎÍ¶ËßµÄÁªÃË£¬ÖÐ¹Ø´å¹ÜÎ¯»áÓÐÈ¨È¡ÏûÆäÉê±¨ºÍÍÆ¼öµÄ×Ê¸ñ¡£\r\nµÚ¶þÊ®¶þÌõ  ·£Ôò°üÀ¨ÒÔÏÂÄÚÈÝ£º\r\n    £¨Ò»£©¶Ô·¢Õ¹×¨Ïî×Ê½ðÊ¹ÓÃÖÐµÄÎ¥·´·¨ÂÉ·¨¹æµÄÐÐÎª£¬ÒÀ¾ÝÏà¹Ø·¨ÂÉ¹æ¶¨½øÐÐ´¦Àí¡£\r\n    £¨¶þ£©¶ÔÓÚÅªÐé×÷¼Ù¡¢Æ­È¡²ÆÕþ×Ê½ðµÄÁªÃË»ò³ÉÔ±µ¥Î»£¬³ý°´£¨Ò»£©Ïî´¦·£Íâ£¬ÖÐ¹Ø´å¹ÜÎ¯»á½«ÔÚÖÐ¹Ø´åÊ¾·¶ÇøÍøÕ¾ÓèÒÔÍ¨±¨£¬²¢×·»ØÒÑ²¦¸¶×Ê½ð£¬½ñºó²»ÔÙÊÜÀíÆäÏà¹Ø¹«¹²Õþ²ßÖ§³Ö×Ê½ðµÄÉêÇë¡£\r\n\r\nµÚÁùÕÂ  ¸½Ôò\r\nµÚ¶þÊ®ÈýÌõ  ±¾°ì·¨ÓÉÖÐ¹Ø´å¹ÜÎ¯»á¸ºÔð½âÊÍ£¬×Ô·¢²¼Ö®ÈÕÆðÊ©ÐÐ¡£±¾°ì·¨ÊµÊ©ºó£¬¡¶´Ù½øÖÐ¹Ø´å¿Æ¼¼Ô°Çø²úÒµ¼¼ÊõÁªÃË·¢Õ¹µÄÊµÊ©°ì·¨¡·£¨ÖÐ¿ÆÔ°·¢¡²2006¡³30ºÅ£©Í¬Ê±·ÏÖ¹¡£','2013-01-02',NULL,NULL,NULL);
/*!40000 ALTER TABLE `policyfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicesdetails`
--

DROP TABLE IF EXISTS `servicesdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `servicesdetails` (
  `Id` int(11) NOT NULL auto_increment,
  `introduce` varchar(255) default NULL COMMENT 'æœºæž„ç®€ä»‹',
  `business` varchar(255) default NULL COMMENT 'ä¸»è¥ä¸šåŠ¡ä»‹ç»',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `servicesdetails`
--

LOCK TABLES `servicesdetails` WRITE;
/*!40000 ALTER TABLE `servicesdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicesdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technologyfile`
--

DROP TABLE IF EXISTS `technologyfile`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `technologyfile` (
  `Id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) character set utf8 default NULL,
  `content` blob,
  `lastupddate` date default NULL,
  `attachment` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `attachmentpath` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `technologyfile`
--

LOCK TABLES `technologyfile` WRITE;
/*!40000 ALTER TABLE `technologyfile` DISABLE KEYS */;
INSERT INTO `technologyfile` VALUES (1,'åŒ—äº¬ç»æµŽæŠ€æœ¯å¼€å‘åŒºæµ·å¤–é«˜å±‚æ¬¡äººæ‰åˆ›åŠžä¼ä¸šæˆ¿ç§Ÿè¡¥è´´å®žæ–½åŠžæ³•ï¼ˆè¯•è¡Œï¼‰','\r\n                    À´Ô´£º±±¾©º£ÍâÑ§ÈËÖÐÐÄ¿ª·¢Çø·ÖÖÐÐÄ      ·¢²¼Ê±¼ä£º2011-04-13\r\n\r\nµÚÒ»Ìõ ÎªÂäÊµ±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çø£¨ÒÔÏÂ¼ò³Æ¿ª·¢Çø£©¡¶¹ØÓÚ¹ÄÀøºÍÎüÒýº£Íâ¸ß²ã´ÎÈË²ÅÀ´±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çø´´ÒµºÍ¹¤×÷µÄÒâ¼û£¨ÊÔÐÐ£©¡·£¨ÒÔÏÂ¼ò³Æ¡¶Òâ¼û¡·£©µÚÎåÌõµÚÎå¿î¡°º£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµÔÚ¾­¹ýÈÏ¶¨µÄ·õ»¯ÇøÓò×âÁÞ°ì¹«³¡ËùºÍÉú²ú³¡µØ£¬¿ÉÏíÊÜ·¿×â²¹Ìù£¬²¹Ìù¶î¶ÈÏàµ±ÓÚÆóÒµ´ÓÆð×âÈÕÆðÒ»ÄêÊµ¼ÊÖ§¸¶×â½ðµÄ50%£»µ¥¸öÆóÒµ²¹ÌùÊ±¼äÎªÁ½Äê£¬×Ü¶î¶È²»³¬¹ý200ÍòÔª¡£¡±µÄÕþ²ß¹æ¶¨£¬¹ÄÀøº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ½«ÏÈ½øµÄ¼¼ÊõºÍ¿Æ¼¼³É¹ûÔÚ´óÐËÇø¡¢¿ª·¢Çø½øÐÐ²úÒµ»¯£¬Ö§³Öº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ·¢Õ¹×³´ó£¬ÖÆ¶¨±¾ÊµÊ©°ì·¨¡£\r\n   \r\nµÚ¶þÌõ ±¾°ì·¨Ëù³Æº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ£¬ÊÇÒÀÕÕ¡¶±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çøº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµÈÏ¶¨°ì·¨£¨ÊÔÐÐ£©¡·ÈÏ¶¨µÄº£Íâ¸ß²ã´ÎÈË²Å´´°ìµÄÆóÒµ£¨ÒÔÏÂ¼ò³ÆÆóÒµ£©¡£\r\n   \r\nµÚÈýÌõ ÆóÒµ·¿×â²¹ÌùµÄÈÕÆÚ´ÓÆóÒµ±»ÈÏ¶¨Îªº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµ£¬²¢½ÉÄÉ·¿×âÖ®ÈÕ¿ªÊ¼¼ÆËã¡£\r\n   \r\nµÚËÄÌõ ÆóÒµ×¢²áµØÖ·¡¢Ë°ÎñµÇ¼Ç¡¢Í³¼ÆµÇ¼Ç¡¢ÆóÒµ°ì¹«³¡Ëù»òÉú²ú³¡µØÓ¦ÔÚ¿ª·¢Çø»ò´óÐËÇø·¶Î§ÄÚ¡£\r\n   \r\nµÚÎåÌõ ±»ÈÏ¶¨Îªº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµÒÔÀ´£¬¸ÃÆóÒµÓ¦ÎÞÒòÎ¥·¨Î¥¹æ±»ÐÐÕþÖ´·¨²¿ÃÅ´¦·£µÄ¼ÇÂ¼¡£\r\n   \r\nµÚÁùÌõ ÆóÒµÉêÇë·¿×â²¹ÌùÐèÌá½»ÒÔÏÂ²ÄÁÏ£º\r\n    1¡¢¡¶±±¾©¾­¼Ã¼¼Êõ¿ª·¢Çøº£Íâ¸ß²ã´ÎÈË²Å´´°ìÆóÒµ·¿×â²¹ÌùÉêÇë±í¡·£» \r\n    2¡¢ÆóÒµÓªÒµÖ´ÕÕ¡¢Ë°ÎñµÇ¼ÇÖ¤£»\r\n    3¡¢ÆóÒµ°ì¹«³¡Ëù»òÉú²ú³¡µØ·¿ÎÝ×âÁÞÐ­Òé£»\r\n    4¡¢ÆóÒµ½ÉÄÉ·¿×âÆ¾Ö¤µÄ¸´Ó¡¼þ£»\r\n    5¡¢¼Ó¸Ç¹¤ÉÌÐÐÕþ²¿ÃÅµµ°¸²éÑ¯×¨ÓÃÕÂµÄ¡°ÆóÒµÕÂ³Ì»òÕÂ³ÌÐÞÕý°¸¡±µÄ¸´Ó¡¼þ¡£\r\n   \r\nµÚÆßÌõ ±±¾©º£ÍâÑ§ÈËÖÐÐÄ¿ª·¢Çø·ÖÖÐÐÄ¸ºÔðÊÜÀíÉêÇë£¬³õÉóºó±¨ËÍ¿ª·¢Çøº£ÍâÑ§ÈË¹¤×÷ÁªÏ¯»á°ì¹«ÊÒ¡£¿ª·¢Çøº£ÍâÑ§ÈË¹¤×÷ÁªÏ¯»á°ì¹«ÊÒÉóºË²¢Õ÷ÇóÓÐ¹ØÐÐÕþÖ´·¨²¿ÃÅµÄÒâ¼ûºó£¬±¨¿ª·¢ÇøÖ÷¹Üº£ÍâÑ§ÈË¹¤×÷µÄÁìµ¼ÉóÅú¡£\r\n   \r\nµÚ°ËÌõ ±¾°ì·¨ÓÉ¿ª·¢Çøº£ÍâÑ§ÈË¹¤×÷ÁªÏ¯»á°ì¹«ÊÒ¸ºÔð½âÊÍ¡£\r\n   \r\nµÚ¾ÅÌõ ±¾°ì·¨×Ô·¢²¼Ö®ÈÕÆðÊµÊ©¡£\r\n','2013-01-01',NULL,NULL,NULL),(2,'ä¸­ç§‘å›­å‘[2012]39å·å…³äºŽå°å‘ã€Šä¸­å…³æ‘å›½å®¶è‡ªä¸»åˆ›æ–°ç¤ºèŒƒåŒºäº§ä¸šæŠ€æœ¯è”ç›Ÿä¸“é¡¹èµ„é‡‘ç®¡ç†åŠžæ³•ã€‹','\r\n                                    ÖÐ¿ÆÔ°·¢¡²2012¡³39ºÅ\r\n\r\nµÚÒ»ÕÂ  ×ÜÔò\r\nµÚÒ»Ìõ  ¸ù¾Ý¡¶¹ØÓÚÍÆ¶¯²úÒµ¼¼Êõ´´ÐÂÕ½ÂÔÁªÃË¹¹½¨µÄÖ¸µ¼Òâ¼û¡·£¨¹ú¿Æ·¢Õþ¡²2008¡³770ºÅ£©¡¢¡¶¹ØÓÚ´Ù½ø²úÒµ¼¼Êõ´´ÐÂÕ½ÂÔÁªÃË¼Ó¿ì·¢Õ¹µÄÒâ¼û¡·£¨¾©¿Æ·¢¡²2011¡³303ºÅ£©¡¢¡¶ÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø·¢Õ¹×¨Ïî×Ê½ð¹ÜÀí°ì·¨¡·£¨¾©²ÆÎÄ¡²2011¡³2858ºÅ£©ºÍ¡¶ÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø·¢Õ¹×¨Ïî×Ê½ð£¨ÊÐ¼¶Í³³ï²¿·Ö£©Ê¹ÓÃ¹ÜÀí°ì·¨¡·£¨ÖÐ¿ÆÔ°·¢¡²2011¡³26ºÅ£©µÈÎÄ¼þ¾«Éñ£¬Îª½øÒ»²½´Ù½øÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø£¨ÒÔÏÂ¼ò³ÆÖÐ¹Ø´åÊ¾·¶Çø£©²úÒµ¼¼ÊõÁªÃË·¢Õ¹£¬ÍÆ¶¯´´ÐÂ×ÊÔ´ÕûºÏ£¬Éî»¯²úÑ§ÑÐÓÃºÏ×÷£¬ÍÆ½ø´´ÐÂÌåÏµ½¨Éè£¬ÌáÉýÊ¾·¶ÇøÄÚÖØµã·¢Õ¹²úÒµµÄ¾ºÕùÁ¦£¬ÍÆ¶¯ÐÎ³É²úÒµ¼¯Èº£¬ÖÐ¹Ø´å¿Æ¼¼Ô°Çø¹ÜÀíÎ¯Ô±»á(ÒÔÏÂ¼ò³ÆÖÐ¹Ø´å¹ÜÎ¯»á)ÉèÁ¢²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ð¡£Îª¹æ·¶¶Ô¸Ã×Ê½ðµÄ¹ÜÀí£¬ÌØÖÆ¶¨±¾°ì·¨¡£\r\nµÚ¶þÌõ  ²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ð´ÓÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø·¢Õ¹×¨Ïî×Ê½ðÖÐÁÐÖ§£¬²¢°´ÕÕÄê¶ÈÔ¤Ëã½øÐÐ°²ÅÅ¡£\r\n\r\nµÚ¶þÕÂ  Ö§³Ö·¶Î§\r\nµÚÈýÌõ  ±¾°ì·¨ËùÖ§³ÖµÄ²úÒµ¼¼ÊõÁªÃË£¨ÒÔÏÂ¼ò³ÆÁªÃË£©ÊÇÖ¸ÒÔÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø¸ßÐÂ¼¼ÊõÆóÒµÎªÖ÷Ìå£¬Õþ²úÑ§ÑÐÓÃµ¥Î»²ÎÓë£¬ÒÔÌáÉýÆóÒµ´´ÐÂÄÜÁ¦ºÍ²úÒµ¾ºÕùÁ¦ÎªÄ¿±ê£¬ÒÔÆõÔ¼¹ØÏµÎª±£ÕÏ£¬ÐÎ³ÉÃ÷È·µÄ×ÊÔ´ÕûºÏ¡¢ºÏ×÷ÔËÓª¡¢ÀûÒæ·ÖÏí»úÖÆµÄ´´ÐÂºÏ×÷×éÖ¯¡£\r\nµÚËÄÌõ  ÉêÇë×Ê½ðÖ§³ÖµÄÁªÃËÓ¦·ûºÏÒÔÏÂÌõ¼þ£º\r\n    £¨Ò»£©·ûºÏÖÐ¹Ø´åÊ¾·¶ÇøÖØµãÅàÓýºÍ·¢Õ¹µÄÕ½ÂÔÐÔÐÂÐË²úÒµ·¢Õ¹·½Ïò£¬×ÊÔ´ÕûºÏÄÜÁ¦Í»³ö¡¢ÔËÓª¹ÜÀí»úÖÆÍêÉÆ¡¢Áì¾üÆóÒµ¾Û¼¯¶È¸ß¡¢ÐÐÒµÓ°ÏìÁ¦´óµÄÁªÃË£»\r\n    £¨¶þ£©ÀíÊÂ³¤µ¥Î»»òÃØÊé³¤µ¥Î»Îª×¢²áÔÚÖÐ¹Ø´åÊ¾·¶ÇøµÄ·¨ÈËµ¥Î»£¬»òÕßÁªÃËºËÐÄ³ÉÔ±µ¥Î»×¢²áÔÚÖÐ¹Ø´åµÄ±ÈÀý²»µÍÓÚ50%¡£\r\nµÚÎåÌõ  ÉêÇë×Ê½ðÖ§³ÖµÄÁªÃË³ÉÔ±µ¥Î»Ó¦Îª×¢²áÔÚÖÐ¹Ø´åÊ¾·¶ÇøÄÚµÄ¸ßÐÂ¼¼ÊõÆóÒµ¡£\r\nµÚÁùÌõ  ÖÐ¹Ø´åÊ¾·¶Çø²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ðÖ÷ÒªÓÃÓÚÖ§³ÖÁªÃË³ÉÔ±¿ªÕ¹²úÑ§ÑÐÓÃºÏ×÷¡¢²úÒµÁ´Ð­Í¬´´ÐÂ¡¢Î§ÈÆÖØ´óÐèÇóÌá¹©ÏµÍ³½â¾ö·½°¸£¬½¨Éè¹«¹²¼¼ÊõÆ½Ì¨ºÍ²úÒµ·þÎñÆ½Ì¨£¬¿ªÕ¹½»Á÷ºÏ×÷£¬ÔöÇ¿ÐÐÒµÓ°ÏìÁ¦ºÍÄý¾ÛÁ¦µÈ¹¤×÷¡£\r\n\r\nµÚÈýÕÂ  Ö§³ÖÌõ¼þºÍ¶î¶È\r\nµÚÆßÌõ  Ö§³ÖÁªÃË³ÉÔ±ÆóÒµ²ÎÓë¹ú¼ÒÖØ´ó¿Æ¼¼¼Æ»®£¬Î§ÈÆ¹ú¼ÒÕ½ÂÔ¡¢Éç»á¹ÜÀí¡¢¸ÄÉÆÃñÉúµÈ·½ÃæµÄÖØ´ó¿Æ¼¼ÐèÇó£¬ÑÐ·¢Ç°ÑØ¼¼Êõ»ò¹Ø¼üºËÐÄ¼¼Êõ£¬¿ªÕ¹¼¯³É´´ÐÂºÍÓ¦ÓÃÊ¾·¶¡£\r\n    £¨Ò»£©¶ÔÁªÃË³ÉÔ±ÆóÒµÇ£Í·³Ðµ£µÄÉÏÒ»Äê¶È¹ú¼Ò¿Æ¼¼»ù´¡ÉèÊ©ÏîÄ¿£¬ÇÒÔÚ¾©ÂäµØµÄ£¬°´ÕÕ¹ú¼ÒÖ§³Ö½ð¶îµÄ20%¸øÓèÅäÌ××Ê½ðÖ§³Ö£¬Ã¿¼ÒÆóÒµÃ¿¸öÏîÄ¿×î¸ß²»³¬¹ý300ÍòÔª¡£\r\n    £¨¶þ£©¶ÔÁªÃË³ÉÔ±ÆóÒµÇ£Í·³Ðµ£µÄÉÏÒ»Äê¶È¹ú¼ÒÓÐ¹Ø²¿ÃÅµÄÖØµãÁìÓò²úÒµ»¯×¨Ïî£¬°´ÕÕ¹ú¼ÒÖ§³Ö½ð¶îµÄ20%¸øÓèÅäÌ××Ê½ðÖ§³Ö£¬Ã¿¼ÒÆóÒµÃ¿¸öÏîÄ¿×î¸ß²»³¬¹ý300ÍòÔª¡£\r\n    ±¾ÌõËùÖ¸µÄÏîÄ¿²»°üÀ¨¡¶¹ú¼ÒÖÐ³¤ÆÚ¿ÆÑ§¼¼Êõ·¢Õ¹¹æ»®¸ÙÒª£¨2006-2020Äê£©¡·È·¶¨µÄ¹ú¼Ò¿Æ¼¼ÖØ´ó×¨ÏîÏîÄ¿¡£\r\nµÚ°ËÌõ  Ö§³Ö²úÒµÁªÃË½¨Á¢½¡È«¹²ÐÔ¼¼Êõ·þÎñÆ½Ì¨£¬ÏòÁªÃË³ÉÔ±¿ª·Å¹²Ïí£¬Ìá¹©ÓÐ¹ØÑÐ·¢¡¢²âÊÔ¡¢ÑéÖ¤¡¢ÅàÑµµÈ·þÎñ¡£\r\n    £¨Ò»£©¶ÔÁªÃË¸ù¾Ý³ÉÔ±¹²ÐÔ¼¼ÊõÐèÇó£¬ÔÚÏÖÓÐ¿Æ¼¼Ö§³ÅÆ½Ì¨´æÔÚ¿Õ°×µÄÁìÓò£¬ÕûºÏ×ÊÔ´£¬×ÔÖ÷´´ÐÂÐÎ³ÉµÄÐÂµÄÑÐ·¢¡¢²âÊÔ¡¢ÑéÖ¤µÈÏµÍ³Èí¼þºÍÉè±¸£¬¸øÓè²»³¬¹ý100ÍòÔªµÄ×Ê½ð²¹Ìù¡£\r\n    £¨¶þ£©¶ÔÁªÃË»òÆä³ÉÔ±µ¥Î»Ç£Í·³ï½¨¹ú¼Ò¹¤³ÌÑÐ¾¿ÖÐÐÄ¡¢¹ú¼Ò¹¤³Ì¼¼ÊõÑÐ¾¿ÖÐÐÄ¡¢¹ú¼ÒÖØµãÊµÑéÊÒµÈÉèÊ©£¬ÔÚ»ñµÃ¹ú¼ÒÓÐ¹Ø²¿ÃÅÊÜÀíºó£¬¸øÓè200ÍòÔª³ï½¨¾­·ÑÖ§³Ö¡£\r\nµÚ¾ÅÌõ  Ö§³Ö²úÒµÁªÃËÇ£Í·£¬¶Ô½Ó³ÇÊÐ½¨Éè¡¢ÔËÐÐ¹ÜÀí¡¢ÃñÉú¡¢ÐÂÅ©´å½¨Éè¡¢ÖØ´ó»î¶¯µÈ·½ÃæµÄÖØ´ó¿Æ¼¼ÐèÇó£¬×éÖ¯²úÒµÁ´¸÷»·½Ú´´ÐÂ×ÊÔ´£¬¿ªÕ¹ÖØ´óÏîÄ¿¶¥²ãÉè¼Æ£¬ÊµÊ©ÐÐÒµ»òÇøÓòÓ¦ÓÃÊ¾·¶¡£\r\n¶ÔÓÚÓÉÖÐ¹Ø´åÆóÒµÇ£Í·£¬ÁªºÏ2¼ÒÒÔÉÏ²úÒµÁ´ÉÏÏÂÓÎµ¥Î»¹²Í¬²ÎÓëÊµÊ©µÄ¡¢ÇÒÒÑÓëÓÃ»§µ¥Î»Ç©¶©ºÏ×÷Ð­ÒéµÄÏîÄ¿£¬°´ÕÕ²»³¬¹ýÏîÄ¿ºÏÍ¬¶îµÄ20%¸øÓè×Ê½ðÖ§³Ö£¬µ¥¸öÏîÄ¿²¹Öú×Ê½ð×î¸ß²»³¬¹ý500ÍòÔª¡£\r\nµÚÊ®Ìõ  Ö§³Ö²úÒµÁªÃË³ÉÔ±ÆóÒµÎ§ÈÆÖØµãÅàÓýºÍ·¢Õ¹µÄÕ½ÂÔÐÔÐÂÐË²úÒµ¹Ø¼üÆ¿¾±¼¼Êõ¡¢Ç°ÑØ¼¼Êõ¡¢¹²ÐÔ¼¼Êõ¡¢Æ½Ì¨¼¼ÊõµÈ¿ªÕ¹¿Æ¼¼¹¥¹Ø£¬¶Ô×ÔÖ÷ÑÐ·¢È¡µÃÖØ´ó½øÕ¹µÄÐÂ¼¼ÊõºÍÐÂ²úÆ·µÄÊ×´ÎÊÔÉÌÓÃ£¬¸øÓè²»³¬¹ý300ÍòÔªµÄ×Ê½ðÖ§³Ö¡£\r\nµÚÊ®Ò»Ìõ  Ö§³Ö²úÒµÁªÃËÔÚ²úÒµ¹¹½¨¡¢ÐÐÒµ½»Á÷¡¢ÊÐ³¡ÍÆ¹ã¡¢Æ·ÅÆÅàÓýµÈ·½Ãæ·¢»ÓÍ³³ïºÍÅ¦´ø×÷ÓÃ£¬ÎªÁªÃË³ÉÔ±¼°ÐÐÒµÆóÒµÌá¹©ÓÐ¹ØÐÅÏ¢¡¢ÇþµÀºÍ·þÎñ¡£\r\n    £¨Ò»£©Ö§³Ö²úÒµÁªÃËÇ£Í·½¨ÉèÐÐÒµÐÂ¼¼Êõ¡¢ÐÂ²úÆ·µÄ¼¯ÖÐÕ¹Ê¾ºÍÌåÑéÖÐÐÄ£¬¶ÔÓÚÕ¹Ê¾Ãæ»ý²»ÉÙÓÚ100Æ½·½Ã×£¬²ÎÕ¹ÆóÒµÊýÁ¿²»ÉÙÓÚ15¼Ò£¬ÇÒÃæÏòÉç»á¿ª·Å²¢½¨Á¢ÁË¶¨ÆÚÂÖÕ¹»úÖÆ£¬Á¼ºÃ³ÊÏÖ²úÒµÁ´»òÏµÍ³·½°¸ÕûÌåÐ§¹ûµÄ£¬°´Äê¶È¸øÓè²úÒµÁªÃË20ÍòÔª×Ê½ðÖ§³Ö¡£\r\n    £¨¶þ£©Ö§³Ö²úÒµÁªÃËÖ÷°ì»ò³Ð°ì¾ßÓÐÆ·ÅÆÐ§Ó¦¡¢È«¹úÐÔ»òÈ«Çò¾ßÓÐÓ°ÏìÁ¦µÄ²úÒµÄê»á»òÂÛÌ³»î¶¯£¬ÌáÉý»°ÓïÈ¨ºÍÀ©´óÐÐÒµÓ°ÏìÁ¦¡£¶ÔÓÚÈ«¹úÐÔµÄ¡¢¹ú¼ÒÐÐÒµÖ÷¹Ü²¿ÃÅ²ÎÓë¡¢»áÒé¹æÄ£²»ÉÙÓÚ150ÈËµÄ»î¶¯£¬¸øÓè20ÍòÔª×Ê½ðÖ§³Ö£»¶ÔÓÚ¹ú¼ÊÐÔµÄ¡¢¹ú¼ÊÈ¨Íþ²úÒµ×éÖ¯²ÎÓë¡¢»áÒé¹æÄ£²»ÉÙÓÚ200ÈËµÄ»î¶¯£¬¸øÓè30ÍòÔª×Ê½ðÖ§³Ö¡£\r\n    £¨Èý£©¹ÄÀø²úÒµÁªÃË½¨Á¢ÐÐÒµÐÂ¼¼ÊõÐÂ²úÆ·ÐÅÏ¢¿â£¬Ïò¹ú¼ÒºÍ±¾ÊÐÓÐ¹Ø²¿ÃÅ»ý¼«ÍÆ¼ö½øÈëÏà¹ØÄ¿Â¼£¬Í¨¹ýÖÐ¹Ø´åÍøÕ¾ºÍÆäËûÃ½ÌåÏòÉç»á·¢²¼Ðû´«£¬×éÖ¯ÁªÃË³ÉÔ±²ÎÓë¹úÄÚÍâÓÐÓ°ÏìÁ¦µÄÕ¹ÀÀÕ¹»á£¬¶ÔÍÆ½éÈ¡µÃÃ÷ÏÔ³ÉÐ§µÄ£¬°´ÕÕÓÐ¹Ø×Ê½ð¹ÜÀí°ì·¨¸øÓèÖ§³Ö¡£\r\n    £¨ËÄ£©¹ÄÀø²úÒµÁªÃË´øÁì³ÉÔ±ÆóÒµ»ý¼«¿ªÍØ¹úÄÚÍâÊÐ³¡£¬¶Ô½ÓÓÐ¹ØÐÐÒµÖ÷¹Ü²¿ÃÅºÍÓÃ»§µ¥Î»£¬Éè¼ÆÕûÌå½â¾ö·½°¸£¬¶ÔÓÚÈ¡µÃÊµÖÊÐÔ½øÕ¹µÄ£¬°´ÕÕÓÐ¹Ø×Ê½ð¹ÜÀí°ì·¨¸øÓèÖ§³Ö¡£\r\nµÚÊ®¶þÌõ  Ö§³ÖÁªÃË¿ªÕ¹ÒÔÏÂ¹¤×÷£¬ÔöÇ¿²úÒµÄý¾ÛÁ¦¡¢»°ÓïÈ¨¡¢Ó°ÏìÁ¦ºÍ¹«ÐÅÁ¦£¬ÔÚ×ÊÔ´ÕûºÏ¡¢Ð­Í¬´´ÐÂ¡¢ÊÐ³¡ÍÆ¹ã¡¢Õþ²ß¶Ô½ÓºÍ·þÎñÐÐÒµµÈ·½Ãæ·¢»ÓÓÐÐ§×÷ÓÃ¡£\r\n    £¨Ò»£©×é½¨×¨Ö°¹¤×÷ÍÅ¶Ó£¬ÖªÊ¶²úÈ¨¡¢¾­·Ñ¹ÜÀí¡¢ÀûÒæ·ÖÅä¡¢ÄÚ²¿¼à¶½¹ÜÀíµÈÏà¹ØÖÆ¶È½¡È«£¬ÄÜ¹»¸ßÐ§¡¢³£Ì¬»¯ÔËÐÐ£¨20·Ö£©£»\r\n    £¨¶þ£©±àÖÆÄê¶È²úÒµ·¢Õ¹°×Æ¤ÊéºÍ¼¼ÊõÇ÷ÊÆÀ¶Æ¤Êé£¬¶Ô³ÉÔ±ÆóÒµÌá¹©¿Æ¼¼Çé±¨ºÍÐÅÏ¢·þÎñ£¬¶ÔÕþ¸®²¿ÃÅÌá¹©²ÎÄ±¾ö²ß·þÎñ£¨20·Ö£©£»\r\n    £¨Èý£©»ý¼«ÍÆ¼ö±±¾©ÊÐÖØ´ó¿Æ¼¼³É¹û×ª»¯ºÍ²úÒµÍ³³ïÏîÄ¿¡¢ÖÐ¹Ø´åÏÖ´ú·þÎñÒµÊÔµãÏîÄ¿¡¢²¿ÊÐ»áÉÌÏîÄ¿¡¢ÖØ´óÊ¾·¶¹¤³ÌµÈÖØ´óÏîÄ¿£¬Äê¶È»ñµÃ±¾ÊÐÁ¢Ïî»òÉÏ±¨²¿Î¯µÄÏîÄ¿²»ÉÙÓÚ5Ïî£¨20·Ö£©£»\r\n    £¨ËÄ£©¶ÔÖÐ¹Ø´åÊ¾·¶ÇøÕþ²ßÏÈÐÐÏÈÊÔ¡¢ÈË²ÅÌØÇø½¨Éè¡¢Õþ¸®²É¹º¡¢Æ·ÅÆÐû´«¡¢¿Æ¼¼½ðÈÚ¡¢¹ú¼Ê»¯·¢Õ¹¡¢Õ¹ÀÀÕ¹Ê¾¡¢ÇøÓòºÏ×÷µÈÖØµã¹¤×÷£¬·¢»ÓÁËÍÆ¼ö¡¢×éÖ¯µÈÖ§³Å×÷ÓÃ£¨25·Ö£©£»\r\n    £¨Îå£©½¨Á¢ÁË¹²ÐÔ¼¼ÊõÑÐ·¢»òÓ¦ÓÃÆ½Ì¨£¬»òÈË²Å¡¢ÐÅÏ¢¡¢ÈÚ×Ê¡¢Õþ²ßÐû¹á¡¢Õ¹ÀÀÕ¹Ê¾µÈ²úÒµ·þÎñÆ½Ì¨£¨10·Ö£©£»\r\n    £¨Áù£©´î½¨ÁËÕþ¸®¡¢ÆóÒµ¡¢ÖÐ½é×éÖ¯Ö®¼äµÄ¹µÍ¨ÇþµÀ£¬ÐÎ³ÉÁËÉ³Áú¡¢ÍøÕ¾¡¢¼ò±¨µÈ³£Ì¬»¯µÄ½»Á÷»úÖÆ£¨5·Ö£©¡£\r\n    ¶ÔÔËÐÐ»úÖÆ½¡È«£¬Î§ÈÆÉÏÊöÊÂÏî¿ªÕ¹ÁËÓÐÐ§¹¤×÷£¬¶ÔÖÐ¹Ø´åÊ¾·¶Çø²úÒµ´Ù½ø¹¤×÷·¢»ÓÁËÖØÒªÖ§³Å×÷ÓÃµÄ²úÒµÁªÃË£¬°´ÕÕÍê³ÉÐ§¹û·Ö±ð¸øÓè²»Í¬¶î¶ÈµÄÖ§³Ö¡£¶ÔÉÏÒ»Äê¶È¿ªÕ¹ÁËÁùÏîÈ«²¿¹¤×÷£¬¸ù¾ÝÍê³ÉÐ§¹ûºÍÆÀ¹À´ò·ÖÇé¿ö£¬¸øÓè²»³¬¹ý100ÍòÔªµÄÔËÓª¾­·ÑÖ§³Ö£»¶ÔÉÏÒ»Äê¶È¿ªÕ¹ÁË²»ÉÙÓÚÎåÏî¹¤×÷£¬¸ù¾ÝÍê³ÉÐ§¹ûºÍÆÀ¹À´ò·ÖÇé¿ö£¬¸øÓè²»³¬¹ý80ÍòÔªµÄÔËÓª¾­·ÑÖ§³Ö£»¶ÔÉÏÒ»Äê¶È¿ªÕ¹ÁË²»ÉÙÓÚËÄÏî¹¤×÷£¬¸ù¾ÝÍê³ÉÐ§¹ûºÍÆÀ¹À´ò·ÖÇé¿ö£¬¸øÓè²»³¬¹ý50ÍòÔªµÄÔËÓª¾­·ÑÖ§³Ö¡£\r\nµÚÊ®ÈýÌõ  ÆäËûÊÂÒËÈçÏÂ£º\r\n    £¨Ò»£©¶Ô²úÒµÁªÃË»ò³ÉÔ±µ¥Î»ÓÐ¹ØµÄ×¨Àû±ê×¼´´ÖÆ¡¢¹ú¼Ê»¯ÍØÕ¹¡¢·õ»¯Æ÷½¨Éè¡¢ÈÚ×ÊµÈÖØ´ó½øÕ¹£¬°´ÕÕ¡¶ÖÐ¹Ø´å×¨Àû´Ù½ø×Ê½ð¹ÜÀí°ì·¨¡·¡¢¡¶ÖÐ¹Ø´å¼¼Êõ±ê×¼×ÊÖú×Ê½ð¹ÜÀí°ì·¨¡·¡¢¡¶ÖÐ¹Ø´å¹ú¼Ò×ÔÖ÷´´ÐÂÊ¾·¶Çø´óÑ§¿Æ¼¼Ô°¼°¿Æ¼¼ÆóÒµ·õ»¯Æ÷·¢Õ¹Ö§³Ö×Ê½ð¹ÜÀí°ì·¨¡·µÈÏà¹Ø×Ê½ð¹ÜÀí°ì·¨µÄ¹æ¶¨Ö´ÐÐ¡£\r\n    £¨¶þ£©¶Ô²úÒµÁªÃËÇ£Í·½¨Éè×¨Òµ¼¯¾ÛÇø¡¢·¢ÆðÉèÁ¢²úÒµÍ¶×Ê»ù½ðµÈÊÂ¹ØÁªÃËÕûÌå·¢Õ¹¡¢´Ù½ø²úÒµ¼¯ÈºÐÎ³É¡¢²¢ÓÐÀûÓÚÊµÏÖÖÐ¹Ø´åÊ¾·¶Çø·¢Õ¹Ä¿±êµÄÆäËû¹¤×÷£¬¸ù¾Ý¹¤×÷¿ªÕ¹Çé¿ö¸øÓèÖ§³Ö¡£\r\n\r\nµÚËÄÕÂ  ÉêÇëºÍÉóºË\r\nµÚÊ®ËÄÌõ  ÖÐ¹Ø´å¹ÜÎ¯»á¸ù¾ÝÄê¶È×¨Ïî×Ê½ðÔ¤ËãÇé¿ö£¬±àÖÆÄê¶È¹¤×÷·½°¸£¬Í¨¹ýÖÐ¹Ø´å¹ÜÎ¯»áÍøÕ¾£¨www.zgc.gov.cn£©¹«²¼ÊÜÀíÊ±¼ä¡¢ÊÜÀíÁ÷³ÌºÍÆäËûÊÂÏî¡£\r\nµÚÊ®ÎåÌõ  ÖÐ¹Ø´å¹ÜÎ¯»áÎ¯ÍÐÖÐ¹Ø´åÁªÃËÁªÏ¯»á»òÏà¹Ø»ú¹¹°´ÕÕÍ¨ÖªÒªÇó£¬¸ºÔðÊÜÀíÁªÃË»òÆä³ÉÔ±µ¥Î»ÓÐ¹Ø×Ê½ðºÍÏîÄ¿µÄÉêÇë£¬²¢×éÖ¯¿ªÕ¹ÓÐ¹ØÆÀÉóºÍÉê±¨²ÄÁÏºËÑé¹¤×÷¡£\r\nµÚÊ®ÁùÌõ  ¶ÔÓÚ²ÉÈ¡ºó²¹ÖúÖ§³Ö·½Ê½µÄÏîÄ¿£¬ÓÉÖÐ¹Ø´å¹ÜÎ¯»á¼à²ì´¦¡¢²ÆÎñ´¦¡¢²úÒµ·¢Õ¹´Ù½ø´¦µÈÏà¹Ø´¦ÊÒºÍ×¨¼Ò½øÐÐÁªºÏÆÀ¹À£¬×¨¼ÒÓ¦×ñÊØÓÐ¹Ø»Ø±ÜÖÆ¶È²¢Ç©Êð±£ÃÜÐ­Òé£»¶ÔÓÚ²ÉÈ¡Ç°²¹ÖúÖ§³Ö·½Ê½µÄÏîÄ¿£¬ÓÉÖÐ¹Ø´å¹ÜÎ¯»áÎ¯ÍÐÏà¹Ø»ú¹¹×éÖ¯ÆÀÉó¡£\r\nµÚÊ®ÆßÌõ  ¾­Ö÷ÈÎ×¨Ìâ»áÉóÒéºó£¬È·¶¨Äê¶ÈÖ§³ÖµÄÁªÃËÃûµ¥¡¢ÏîÄ¿Ãûµ¥¼°Ö§³Ö½ð¶î¡£ÖÐ¹Ø´å¹ÜÎ¯»áÎ¯ÍÐÖÐ¹Ø´å²úÒµ¼¼ÊõÁªÃËÁªÏ¯»áÏò²úÒµÁªÃËÍ¨±¨Á¢ÏîÖ§³ÖÇé¿ö¡£\r\nµÚÊ®°ËÌõ  ÖÐ¹Ø´å¹ÜÎ¯»á°´ÕÕ²»³¬¹ý±¾°ì·¨Ëù¹æ¶¨ÉÏÏÞµÄÔ­Ôò£¬¸ù¾Ý·ÖÄê¶ÈÔ¤Ëã×Ü¶îÈ·¶¨Ã¿ÄêÖ§³Ö±ÈÀýºÍ¶î¶È¡£\r\n\r\nµÚÎåÕÂ  ¼à¶½¹ÜÀí\r\nµÚÊ®¾ÅÌõ  ×Ê½ðÊ¹ÓÃµ¥Î»ºÍÊÜÍÐ¹¤×÷µ¥Î»ÓÐÒåÎñ½ÓÊÜÖÐ¹Ø´å¹ÜÎ¯»á¡¢ÊÐÉó¼Æ¾Ö¡¢ÊÐ²ÆÕþ¾ÖµÄÉó¼ÆºÍ²ÆÕþ¼à¶½£¬²¢ÅäºÏ¿ªÕ¹¼¨Ð§ÆÀ¼Û¡¢Ðû´«¡¢µ÷ÑÐµÈ¹¤×÷¡£\r\nµÚ¶þÊ®Ìõ  ÖÐ¹Ø´å¹ÜÎ¯»á²ÆÎñ´¦¡¢¼à²ì´¦¶Ô²úÒµ¼¼ÊõÁªÃË×¨Ïî×Ê½ðµÄÊ¹ÓÃÇé¿ö½øÐÐ¼ì²éºÍ¼à¶½¡£Ô­ÔòÉÏÖ§³Ö×Ê½ðÔÚ100ÍòÔªÒÔÉÏµÄÏîÄ¿£¬°´ÕÕ¡¶ÖÐ¹Ø´å¹ÜÎ¯»áÁªºÏÒøÐÐ¼ÓÇ¿¶Ô·¢Õ¹×Ê½ðÖ§³ÖÏîÄ¿¼à¹ÜÊÔµãµÄ¹¤×÷·½°¸¡·£¨ÖÐ¿ÆÔ°·¢¡²2007¡³19ºÅ£©ÁªºÏÒøÐÐ½øÐÐ¼à¹Ü¡£\r\nµÚ¶þÊ®Ò»Ìõ  ¶ÔÓÚÈ±·¦¹«ÐÅÁ¦¡¢Ê§È¥´ú±íÐÔ¡¢ÔËÓªÄÜÁ¦±¡Èõ¡¢ÊÜµ½³ÉÔ±µ¥Î»¶à´ÎÍ¶ËßµÄÁªÃË£¬ÖÐ¹Ø´å¹ÜÎ¯»áÓÐÈ¨È¡ÏûÆäÉê±¨ºÍÍÆ¼öµÄ×Ê¸ñ¡£\r\nµÚ¶þÊ®¶þÌõ  ·£Ôò°üÀ¨ÒÔÏÂÄÚÈÝ£º\r\n    £¨Ò»£©¶Ô·¢Õ¹×¨Ïî×Ê½ðÊ¹ÓÃÖÐµÄÎ¥·´·¨ÂÉ·¨¹æµÄÐÐÎª£¬ÒÀ¾ÝÏà¹Ø·¨ÂÉ¹æ¶¨½øÐÐ´¦Àí¡£\r\n    £¨¶þ£©¶ÔÓÚÅªÐé×÷¼Ù¡¢Æ­È¡²ÆÕþ×Ê½ðµÄÁªÃË»ò³ÉÔ±µ¥Î»£¬³ý°´£¨Ò»£©Ïî´¦·£Íâ£¬ÖÐ¹Ø´å¹ÜÎ¯»á½«ÔÚÖÐ¹Ø´åÊ¾·¶ÇøÍøÕ¾ÓèÒÔÍ¨±¨£¬²¢×·»ØÒÑ²¦¸¶×Ê½ð£¬½ñºó²»ÔÙÊÜÀíÆäÏà¹Ø¹«¹²Õþ²ßÖ§³Ö×Ê½ðµÄÉêÇë¡£\r\n\r\nµÚÁùÕÂ  ¸½Ôò\r\nµÚ¶þÊ®ÈýÌõ  ±¾°ì·¨ÓÉÖÐ¹Ø´å¹ÜÎ¯»á¸ºÔð½âÊÍ£¬×Ô·¢²¼Ö®ÈÕÆðÊ©ÐÐ¡£±¾°ì·¨ÊµÊ©ºó£¬¡¶´Ù½øÖÐ¹Ø´å¿Æ¼¼Ô°Çø²úÒµ¼¼ÊõÁªÃË·¢Õ¹µÄÊµÊ©°ì·¨¡·£¨ÖÐ¿ÆÔ°·¢¡²2006¡³30ºÅ£©Í¬Ê±·ÏÖ¹¡£','2013-01-02',NULL,NULL,NULL);
/*!40000 ALTER TABLE `technologyfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `id` varchar(200) NOT NULL,
  `title` varchar(255) default NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `kind` varchar(200) NOT NULL,
  `shortTitle` varchar(200) default NULL COMMENT 'è¥ä¸šèŒƒå›´',
  `specialService` varchar(200) default NULL COMMENT 'ç‰¹è‰²æœåŠ¡',
  `author` varchar(200) NOT NULL default '0' COMMENT 'æ³¨å†Œèµ„æœ¬é‡‘(ä¸‡å…ƒ)',
  `origin` varchar(200) default NULL COMMENT 'ç»„ç»‡æœºæž„ä»£ç ',
  `companyAddress` varchar(200) default NULL COMMENT 'å…¬å¸æ³¨å†Œåœ°',
  `officeCompany` varchar(200) default NULL COMMENT 'å…¬å¸åŠžå…¬åœ°',
  `companyNumber` int(11) NOT NULL default '0' COMMENT 'å…¬å¸äººæ•°',
  `servicesType` varchar(200) default NULL COMMENT 'æœåŠ¡ç±»åž‹',
  `respectiveIndustries` varchar(200) default NULL COMMENT 'æ‰€å±žäº§ä¸š',
  `companyLeader` varchar(200) default NULL COMMENT 'å…¬å¸æ³•äººä»£è¡¨'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1e154e4265764948b49890ac90873820','tongge','tongge','123456','person','','','0.0','','','',0,'','',''),('6d5cff22bf0b4832943c629b494d9060','????','qyyh','123456','compnay','Ã¨?Â¥Ã¤Â¸?Ã¨??Ã¥?Â´','','0.0','Ã§Â»?Ã§Â»?Ã¦?ÂºÃ¦??Ã¤Â»Â£Ã§Â ?','Ã¥?Â¬Ã¥?Â¸Ã¦Â³Â¨Ã¥??Ã¥?Â°','Ã¥?Â¬Ã¥?Â¸Ã¥??Ã¥?Â¬Ã¥?Â°',10,'','Ã§?ÂµÃ¥Â­?Ã¤Â¿Â¡Ã¦?Â¯Ã¤ÂºÂ§Ã¤Â¸?','Ã¥?Â¬Ã¥?Â¸Ã¦Â³?Ã¤ÂºÂºÃ¤Â»Â£Ã¨Â¡Â¨'),('5938ed6b20174ef8895fa92b8902340c','Ã¦??Ã¥?Â¡Ã¦?ÂºÃ¦??Ã¯Â¼?Ã¥?Â¨Ã§Â§Â°Ã¯Â¼?','fwjg','123456','services','Ã¨?Â¥Ã¤Â¸?Ã¨??Ã¥?Â´','Ã§?Â¹Ã¨?Â²Ã¦??Ã¥?Â¡','0.0','Ã§Â»?Ã§Â»?Ã¦?ÂºÃ¦??Ã¤Â»Â£Ã§Â ?','Ã¥?Â¬Ã¥?Â¸Ã¦Â³Â¨Ã¥??Ã¥?Â°','Ã¥?Â¬Ã¥?Â¸Ã¥??Ã¥?Â¬Ã¥?Â°',12,'Ã¦?Â¿Ã§Â­?Ã¦??Ã¥?Â¡','','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-10 15:32:50
