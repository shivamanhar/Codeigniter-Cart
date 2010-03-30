-- phpMyAdmin SQL Dump
-- version 2.9.2-Debian-1.one.com1
-- http://www.phpmyadmin.net
-- 
-- V�rd: MySQL Server
-- Skapad: 30 mars 2010 kl 17:27
-- Serverversion: 5.0.32
-- PHP-version: 5.2.0-8+etch16
-- 
-- Databas: `smartprodukt_se`
-- 

-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `blog`
-- 

CREATE TABLE `blog` (
  `id` int(11) NOT NULL auto_increment,
  `header` varchar(55) NOT NULL,
  `datetime` datetime NOT NULL,
  `text` text NOT NULL,
  `show_date` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Data i tabell `blog`
-- 

INSERT INTO `blog` VALUES (1, '�ppnar portarna!', '2010-03-20 13:54:08', 'S�d�r, nu lanseras Smartprodukt.se! Allt p� webbutiken �r inte riktigt klart �nnu men alla grundfunktioner ska fungera i alla fall. V�lkommen!\r\n<br /><br />\r\n<img src="/assets/graphics/blog/lanseringPrt.gif" style="border: 1px solid #ccc; text-align: center;" alt="" />', 'Mars 20, 2010');
INSERT INTO `blog` VALUES (3, 'Kortbetalning!', '2010-03-22 05:17:03', 'Hej! Nu har jag fixat s� alla kunder kan betala sina best�llningar med betalkort (VISA, MasterCard, etc) via PayPal betalsystem.<br /><br />\r\n<img src="/assets/graphics/blog/paypal.gif" style="border: 1px solid #ccc; text-align: center;" alt="" />', 'Mars 22, 2010');

-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `blog_comments`
-- 

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL auto_increment,
  `entry_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `website` varchar(55) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Data i tabell `blog_comments`
-- 


-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `ci_sessions`
-- 

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(16) NOT NULL default '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Data i tabell `ci_sessions`
-- 

-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `customers`
-- 

CREATE TABLE `customers` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` varchar(55) NOT NULL,
  `city` varchar(100) NOT NULL,
  `number_advice` varchar(55) NOT NULL,
  `company` varchar(55) NOT NULL,
  `order_id` int(11) NOT NULL,
  `ip` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Data i tabell `customers`
-- 
-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `newsletter`
-- 

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(55) NOT NULL,
  `ip` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Data i tabell `newsletter`
-- 


-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `order_products`
-- 

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Data i tabell `order_products`
-- 


-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `orders`
-- 

CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `complete` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Data i tabell `orders`
-- 

-- --------------------------------------------------------

-- 
-- Struktur f�r tabell `products`
-- 

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `price` decimal(10,2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `short_description` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- 
-- Data i tabell `products`
-- 

INSERT INTO `products` VALUES (6, '490.00', 'Tr�dl�s multifunktionell mus', 'En tr�dl�s multifunktionell mus som ger dig m�jligheten att b�de h�lla musen i handen och enkelt styra musen via laserklotet eller l�gga den flata sidan mot skrivbordet och anv�nda den som en vanlig lasermus. Fungerar p� ett avst�nd p� upp till 10 meter med 2.4GHz inbyggt.Batteritiden �r upp till 20 timmar, bara stoppa in i USB uttag och k�ra!', 'En tr�dl�s multifunktionell mus som kan anv�ndas som en vanlig mus eller som en handmus.', 'handMus.gif');
INSERT INTO `products` VALUES (2, '145.00', 'Ergonomisk finger mus', 'En smidig finger mus som du enkelt bara stoppar in i USB uttaget och anv�nder. V�ger cirka 75% l�ttare �n en vanlig mus. Finger musen ger dig m�jligheten att kontrollera din mus samtidigt som du skriver. Perfekt mus i tr�nga utrymmen, s�som flygplan och t�g.', 'Smidig mus f�r tr�nga utrymmen, ger dit kontroll att styra musen samtidigt som du skriver.', 'fingerMus.gif');
INSERT INTO `products` VALUES (7, '245.00', 'USB-minne med fingeravtryck', 'Ett USB-minne som skyddar dina filer med ditt fingeravtryck. Operativsystem som st�ds: Windows 98SE/ME/2000/XP. Bara att stoppa in i USB-ing�ng. Detta USB-minne har en lagringskapacitet p� 1 GB. Perfekt f�r att skydda dina dokument och filer!', 'USB-minne som h�ller dina filer s�kra med hj�lp av ditt fingeravtryck', 'usbFinger.gif');
INSERT INTO `products` VALUES (8, '1290.00', 'GPS sp�rare', 'Med hj�lp av v�ran GPS sp�rare kan du alltid �vervaka dina b�tar, bilar, djur eller andra personliga tillbeh�r.\r\n\r\nDenna GPS sp�rare skickar ett SMS till valda nummer s� fort den t.ex beger sig utanf�r angivet omr�de. Du f�r en v�ldigt exakt koordination som g�r att du ocks� kan f�lja den p� en karta via t.ex Google Maps.\r\n\r\nDu kan �ven ringa upp enheten f�r att h�ra vad som s�gs runt om kring. Med magneten som ing�r kan du enkelt f�sta enheten p� st�llen som inte syns.\r\n\r\nMedf�ljer:\r\nGPS-enheten med magnetisk baksida\r\nVattent�tt plastfodral\r\n2st uppladdningsbarabatterier\r\n220V V�ggladdare\r\nDockningsenhet f�r batteri\r\nCD-skiva med programvara f�r att se sp�rning live i datorn\r\nInstruktionsbok p� Engelska', 'GPS sp�rare som g�r att du alltid kan h�lla koll p� dina personliga tillbeh�r.', 'gpsTracker.gif');
INSERT INTO `products` VALUES (9, '590.00', 'Digitalt upprullningsbart piano', 'Ett extremt smidigt upprullningsbart piano med 64 tangenter, 128 olika ton funktioner, 100 olika rytmen inst�llningar och 40 olika demo s�nger och musik inspelning. Ljudet uppspelas i MIDI. USB, vanliga AA batterier och laddare g�r att anv�nda f�r att ge str�m till enheten.', 'Smidigt piano som du enkelt kan b�ra med dig.', 'rollPiano.gif');
INSERT INTO `products` VALUES (10, '90.00', 'USB batteriladdare', 'En USB batteriladdare som anv�nds f�r att ladda upp dina AA/AAA batterier.', 'Ladda upp dina AA/AAA batterier.', 'usbBatteri.gif');
INSERT INTO `products` VALUES (11, '125.00', 'Kl�ds renare', 'Med v�ran kl�ds renare kan du snabbt och smidigt ta bort ditt ludd fr�n kl�derna. Kl�ds renaren drivas av tv� stycken AA batterier.', 'Kl�ds renare som hj�lper dig h�lla kl�derna rena.', 'kladRenare.gif');
INSERT INTO `products` VALUES (12, '55.00', 'Nyckelthittare', 'Nyckelhittaren hj�lper att alltid h�lla koll p� dina nycklar. Genom att vissla h�gt s� b�rjar nyckelhittaren blinka och tjuta.', 'Med v�ran nyckelhittare kan du nu alltid h�lla koll p� dina nycklar.', 'nyckelHittare.gif');
INSERT INTO `products` VALUES (13, '55.00', 'Smart kabelsamlare', 'Med denna kabelsamlare slipper du all �verfl�des kablar och kan enkelt justera hur l�ngt du vill dra ut sladden. Kabelsamlaren �r gjord av �tervinningsbar gummi.', 'Med v�ran kabelsamlare kan du nu gl�mma dina �verfl�des kablar.', 'cableCollector.gif');
INSERT INTO `products` VALUES (14, '95.00', 'Svart tr�dl�s lasermus', 'Liten och enkel tr�dl�s mus. Drivs av 2 stycken vanliga AAA batterier som medf�ljer. 2.4GHz radio tr�dl�s radiofrekvens. inbygd 800DPI optisk sp�rning motor. Engelsk anv�ndarmanual och cd medf�ljer.', 'En enkel och billig tr�dl�s mus, perfekt f�r mindre utrymmen.', 'tradlosMus.gif');
INSERT INTO `products` VALUES (15, '95.00', 'USB driven dammsugare', 'Tangentbordet brukar dra till sig mycket skr�p som g�r att knapparna blir s�mre. Med v�ran USB drivna mini dammsugare kan du suga upp allt skr�p som finns och h�lla en l�ngre livstid p� dina tangenter!', 'L�t dina tangenter f� en l�ngre livstid med v�ran USB dammsugare!', 'usbDammsugare.gif');
INSERT INTO `products` VALUES (16, '1250.00', 'PS2 Keylogger', 'Beh�ver du h�lla koll p� dina anst�llda?\r\nBeh�ver du spara backup p� dina anteckningar?\r\nEller kanske h�lla koll p� dina barns n�taktivitet? \r\n\r\nMed v�ran PS2 Keylogger sparar du varenda tangentryck som g�rs p� datorn. Med minnet p� 2 MB kan du spara �ver 1000 sidor av text (ca 6 m�nader av skrivning). PS2 Keyloggern blir inte uppt�ckt av n�got antivirusprogram eller av datorn. Kr�ver ingen installation, bara att enkelt plugga in mellan tangentbordet och datorn. F�r att ta del av all sparad information tycker du bara in en hemlig tangentkombination och f�r skriva in l�senordet som medf�ljer. Enheten �r kompatibel med Windows, Linux och MacOS. ', 'Spara alla tangenttryck, plugga bara in enheten mellan tangentbordet och datorn!', 'ps2Keylogger.gif');
INSERT INTO `products` VALUES (17, '1450.00', 'USB Keylogger', 'Beh�ver du h�lla koll p� dina anst�llda?\r\nBeh�ver du spara backup p� dina anteckningar?\r\nEller kanske h�lla koll p� dina barns n�taktivitet? \r\n\r\nMed v�ran USB Keylogger sparar du varenda tangentryck som g�rs p� datorn. Med minnet p� 2 MB kan du spara �ver 1000 sidor av text (ca 6 m�nader av skrivning). USB Keyloggern blir inte uppt�ckt av n�got antivirusprogram eller av datorn. Kr�ver ingen installation, bara att enkelt plugga in mellan tangentbordet och datorn. F�r att ta del av all sparad information tycker du bara in en hemlig tangentkombination och f�r skriva in l�senordet som medf�ljer. Enheten �r kompatibel med Windows, Linux och MacOS.', 'Spara alla tangenttryck, plugga bara in enheten mellan tangentbordet och datorn!', 'usbKeylogger.gif');
INSERT INTO `products` VALUES (19, '105.00', 'USB Hub', 'Beh�ver du fler USB uttag? Med v�ran USB 2.0 Hub f�r du fler USB ing�ngar och slipper allt kr�ngel med att koppla in och ut. Enheten har fyra stycken ing�ngar och kan f�ra �ver data med en hastighet upp till 480 Mbps. ', 'F� plats f�r fler USB ing�ngar och slipp kr�ngel med att koppla in och ut.', 'usbHub.gif');
INSERT INTO `products` VALUES (20, '445.00', 'Spionkamera i nyckelring 4 GB', 'Extremt liten HD-kamera med grym bildkvalitet. Kan �ven spela in ljud och ta stillbilder. Med hela 4 GB s� kan du �ven anv�nda enheten som USB minne. Ingen installation kr�vs, bara Plug and Play.\r\n\r\nVideouppl�sning: 640x480\r\nBilduppl�sning: 1280x960\r\nInspelningsformat: AVI\r\nBildsformat: JPEG\r\nBildfrekvens: 30/sekund\r\nInspelningstid max (batteri): ca 1 timma\r\nBatteri: uppladdningsbartbatteri 3.7V 280mAh, laddas via USB-kabeln (ca 2 timmar)\r\nAnslutning: USB\r\nMedf�ljer:\r\n* USB kabel\r\n* Nyckelring\r\n* Manual', 'Spela snabbt in trafiksituationer eller i skidbacken, bara din fantasi s�tter stopp.', 'nyckelringKamera.gif');
