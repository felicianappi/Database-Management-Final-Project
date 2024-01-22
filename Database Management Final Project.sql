CREATE DATABASE IF NOT EXISTS `letterboxed` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `letterboxed`;
-- MySQL dump 10.13 Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1 Database: letterboxed
-- ------------------------------------------------------
-- Server version 5.7.24
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS,
FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO'
*/;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `advertiser`


DROP TABLE IF EXISTS `advertiser`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertiser` (
`user_ID` int(11) NOT NULL,
`analytics_mode` tinyint(1) NOT NULL,
`revenue` bigint(20) DEFAULT NULL,
`ad_click` int(11) DEFAULT NULL,
PRIMARY KEY (`user_ID`),
CONSTRAINT `advertiser_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `advertiser`
--
LOCK TABLES `advertiser` WRITE;
/*!40000 ALTER TABLE `advertiser` DISABLE KEYS */;
INSERT INTO `advertiser` VALUES
(11111,0,6789012345,7890),(12345,0,12345678901,5432),(13579,0,8901234567,3465),(24680,
1,23456789012,9812),(54321,1,45678901234,6754),(67890,1,987654321,1289),(77777,1,9876543210,
4567),(86420,0,34567890123,5123),(98765,1,56789012345,2378),(99999,0,1122334455,
3241);
/*!40000 ALTER TABLE `advertiser` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `free_member`
--
DROP TABLE IF EXISTS `free_member`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `free_member` (
`user_ID` int(11) NOT NULL,
`following_count` int(11) DEFAULT NULL,
`followers_count` int(11) DEFAULT NULL,
PRIMARY KEY (`user_ID`),
CONSTRAINT `free_member_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `free_member`
--
LOCK TABLES `free_member` WRITE;
/*!40000 ALTER TABLE `free_member` DISABLE KEYS */;
INSERT INTO `free_member` VALUES
(11111,203,756),(45645,178,893),(54321,125,524),(55555,49,187),(65432,63,308),(66666,156,
621),(77700,215,942),(98700,101,572),(98765,87,389),(99900,92,447);
/*!40000 ALTER TABLE `free_member` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
`movie_ID` int(11) NOT NULL,
`title` varchar(45) NOT NULL,
`release_year` varchar(45) DEFAULT NULL,
`director` varchar(45) DEFAULT NULL,
`genre` varchar(45) DEFAULT NULL,
`language` varchar(45) DEFAULT NULL,
`plot_summary` varchar(250) DEFAULT NULL,
`average_rating` int(11) DEFAULT NULL,
`num_likes` int(11) DEFAULT NULL,
`num_list_added` int(11) DEFAULT NULL,
`num_views` int(11) DEFAULT NULL,
PRIMARY KEY (`movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-
-- Dumping data for table `movie`
--
LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (15892,'The Lord of the Rings: The Return of the King','2003','Peter
Jackson','Adventure','English','The epic conclusion to the Lord of the Rings trilogy, as the
Fellowship of the Ring seeks to destroy the One Ring and save Middle-earth.',7,534844,56,125744650),(16598,'Toy Story ','1995','John
Lasseter','Animation','English','Woody, a pull-string cowboy doll, and Buzz Lightyear, a spaceman
action figure, come to life when their owner is not around, embarking on
adventures.',8,515248,63,366194847),(25389,'Avatar ','2009','James
Cameron','Action','English','In the distant future, a paraplegic former Marine becomes involved
in a mission on the alien world of Pandora, leading to a profound
transformation.',9,733098,19,342092803),(28514,'La La Land','2016','Damien
Chazelle','Comedy','English','A modern musical romance between a struggling jazz musician and
an aspiring actress in Los Angeles.',8,542145,20,218646936),(29547,'Gladiator ','2009','Ridley
Scott','Action','English','Maximus, a former Roman general, seeks vengeance against the corrupt
emperor who murdered his family and sent him into slavery as a
gladiator.',9,877951,17,312751877),(31976,'Pulp Fiction ','1994','Quentin
Tarantino','Crime','English','This film weaves interconnected stories of mobsters, hitmen, and
lowlifes in a non-linear narrative, featuring iconic characters and memorable
dialogue.',8,832676,56,242940221),(37294,'E.T. the Extra-Terrestrial ','1982','Steven
Spielberg','Family','English','A young boy befriends a stranded extraterrestrial and helps him
evade government agents, forming a unique and heartwarming
bond.',8,643272,79,258784220),(38475,'The Avengers ','2012','Joss
Whedon','Action','English','Earth\'s mightiest heroes, including Iron Man, Captain America, Thor,
and the Hulk, team up to stop the villainous Loki and save the
world.',8,915146,57,406992146),(41658,'Braveheart ','1995','Mel
Gibson','Biography','English','The story of William Wallace, a 13th-century Scottish warrior who
leads a rebellion against the oppressive English rule.',7,585636,31,251763053),(43769,'Titanic
','1997','James Cameron','Drama','English','A passionate love story unfolds between a young
aristocrat and a penniless artist aboard the ill-fated RMS Titanic during its maiden
voyage.',8,821863,56,272180413),(48236,'Black Panther ','2018','Ryan
Coogler','Action','English','T\'Challa, the newly crowned king of Wakanda and the Black Panther,
must defend his kingdom and legacy against formidable
adversaries.',8,144532,45,183651314),(48327,'The Shawshank Redemption ','1994','Frank
Darabont','Drama','English','A man is wrongly convicted of murder and spends decades in
Shawshank State Penitentiary. He forms friendships and plans an audacious escape while
maintaining hope and dignity.',8,445852,44,154021259),(54176,'The Silence of the Lambs
','1991','Jonathan Demme','Crime','English','An FBI trainee seeks the help of Dr. Hannibal Lecter,
a brilliant but insane serial killer, to catch another serial killer on the
loose.',10,357936,84,435416095),(56713,'The Departed','2006','Martin
Scorsese','Crime','English','An undercover cop and a mole in the police force try to identify each
other while infiltrating an Irish gang in Boston.',7,101850,20,262847996),(57284,'The Dark
Knight ','2008','Christopher Nolan','Action','English','Batman faces his most menacing adversary,
the Joker, in this dark, psychological thriller. The vigilante grapples with moral dilemmas in
Gotham City.',8,944832,83,340424888),(62849,'Schindler\'s List ','1993','Steven
Spielberg','Biography','English','Based on a true story, a German businessman saves the lives of
over a thousand Polish-Jewish refugees during the Holocaust by employing them in his
factories.',8,997204,58,299753099),(62983,'Inception','2010','Christopher
Nolan','Action','English','Dom Cobb, a skilled thief, enters people\'s dreams to steal their
secrets. He is given a final mission, planting an idea in someone\'s mind, a task with dire
consequences.',9,347768,76,199068388),(64327,'The Green Mile ','1999','Frank
Darabont','Crime','English','A death row supervisor at a Southern prison develops a unique bond
with a giant inmate with supernatural abilities.',7,328877,21,471790311),(69457,'The Revenant
','2015','Alejandro GonzÃ¡lez IÃ±Ã¡rritu','Action','English','A frontiersman survives a brutal bear
attack and seeks revenge on those who left him for dead in the
wilderness.',7,848335,12,487227297),(72694,'The Matrix ','1999','The Wachowskis (Lana and
Lilly Wachowski)','Action','English','Neo, a computer hacker, discovers the reality of the Matrix, a
simulated world controlled by machines. He joins a rebellion to free humanity from this virtual
prison.',9,796863,36,328972546),(73926,'The Lion King ','1994','Roger Allers and Rob
Minkoff','Animation','English','A young lion named Simba must reclaim his throne as king and
restore balance to the Circle of Life in the African
savanna.',10,211158,59,347769969),(73954,'The Grand Budapest Hotel ','2014','Wes
Anderson','Adventure','English','A quirky comedy about the escapades of a hotel concierge and
his protÃ©gÃ© in a fictional European country between the World
Wars.',8,550889,21,283603342),(76423,'Forrest Gump ','1994','Robert
Zemeckis','Drama','English','Forrest Gump, a simple-minded man, narrates his extraordinary life
story, influencing historical events without fully understanding his
impact.',7,734715,44,295547620),(82146,'The Social Network ','2010','David
Fincher','Biography','English','A dramatic portrayal of the founding of Facebook and the legal
battles and personal conflicts that ensued among its
creators.',9,259215,55,203705646),(86431,'Star Wars: Episode IV - A New Hope ','1977','George
Lucas','Action','English','Luke Skywalker embarks on a heroic journey, joining forces with
Princess Leia and Han Solo to thwart the evil plans of the Galactic
Empire.',7,508909,86,409398067),(91726,'Jurassic Park ','1993','Steven
Spielberg','Adventure','English','A billionaire invites experts to tour his dinosaur theme park.
However, things go awry when the cloned dinosaurs escape and threaten the
visitors.',8,378544,70,457987453),(94615,'The Godfather ','1972','Francis Ford
Coppola','Crime','English','The patriarch of a powerful mafia family transfers control to his
reluctant son, leading to a complex, gripping tale of power, loyalty, and
betrayal.',10,592965,26,285339302),(97481,'Oppenheimer ','2023','Christopher
Nolan','Drama','English','Chronicles the life and moral complexities of J. Robert Oppenheimer, the scientist behind the atomic bomb, from his Manhattan Project involvement to the
devastating bombings of Hiroshima and Nagasaki.',8,984275,25,333144560),(98562,'Fight Club
','1999','David Fincher','Drama','English','An insomniac office worker forms an underground
fight club as a form of therapy, but things take a dark and chaotic
turn.',8,384402,19,338409003);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;


-
-- Table structure for table `movie_sharelist`
--
DROP TABLE IF EXISTS `movie_sharelist`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_sharelist` (
`movie_ID` int(11) NOT NULL,
`sharelist_ID` int(11) NOT NULL,
`num_movie` int(11) NOT NULL,
`num_likes` int(11) NOT NULL,
PRIMARY KEY (`movie_ID`,`sharelist_ID`),
KEY `sharelist_ID` (`sharelist_ID`),
CONSTRAINT `movie_sharelist_ibfk_1` FOREIGN KEY (`movie_ID`) REFERENCES `movie`
(`movie_ID`),
CONSTRAINT `movie_sharelist_ibfk_2` FOREIGN KEY (`sharelist_ID`) REFERENCES `sharelist`
(`sharelist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dumping data for table `movie_sharelist`
--
LOCK TABLES `movie_sharelist` WRITE;
/*!40000 ALTER TABLE `movie_sharelist` DISABLE KEYS */;
INSERT INTO `movie_sharelist` VALUES
(15892,35782,11,43),(16598,81973,12,87),(25389,24973,3,34),(28514,68234,8,63),(29547,82634,
3,58),(31976,81356,7,75),(37294,58246,14,40),(38475,31589,13,58),(41658,86537,4,40),(43769,
49167,5,27),(48236,37218,1,22),(48327,73845,8,90),(54176,42876,8,7),(56713,62895,15,89)
,(57284,94627,13,19),(62849,27984,11,22),(62983,96723,5,73),(64327,12973,6,36),(69457,54689,
12,25),(72694,59372,2,87),(73926,37412,2,37),(73954,45726,11,53),(76423,64519,3,64),(82146,
93756,10,92),(86431,17498,7,79),(91726,68247,14,84),(94615,56291,4,31),(97481,37468,15,
59),(98562,19468,10,70);
/*!40000 ALTER TABLE `movie_sharelist` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `movie_watchlist`
--
DROP TABLE IF EXISTS `movie_watchlist`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_watchlist` (
`movie_ID` int(11) NOT NULL,
`watchlist_ID` int(11) NOT NULL,
`num_movie` int(11) NOT NULL,
PRIMARY KEY (`movie_ID`,`watchlist_ID`),
KEY `watchlist_ID` (`watchlist_ID`),
CONSTRAINT `movie_watchlist_ibfk_1` FOREIGN KEY (`movie_ID`) REFERENCES `movie`
(`movie_ID`),
CONSTRAINT `movie_watchlist_ibfk_2` FOREIGN KEY (`watchlist_ID`) REFERENCES `watchlist`
(`watchlist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Dumping data for table `movie_watchlist`
--
LOCK TABLES `movie_watchlist` WRITE;
/*!40000 ALTER TABLE `movie_watchlist` DISABLE KEYS */;
INSERT INTO `movie_watchlist` VALUES
(15892,10007,67),(16598,10026,48),(25389,10016,51),(28514,10028,21),(29547,10009,87),(31976,
10004,89),(37294,10018,36),(38475,10014,92),(41658,10020,44),(43769,10008,19),(48236,
10025,30),(48327,10001,73),(54176,10012,28),(56713,10022,57),(57284,10003,49),(62849,10005,
56),(62983,10013,60),(64327,10029,61),(69457,10024,67),(72694,10011,75),(73926,10021,18),
(73954,10027,76),(76423,10006,30),(82146,10023,94),(86431,10010,43),(91726,10015,14),(
94615,10002,12),(97481,10030,87),(98562,10019,82);
/*!40000 ALTER TABLE `movie_watchlist` ENABLE KEYS */;
UNLOCK TABLES;



-- Table structure for table `pro_member`
--
DROP TABLE IF EXISTS `pro_member`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pro_member` (
`user_ID` int(11) NOT NULL,
`following_count` int(11) DEFAULT NULL,
`followers_count` int(11) DEFAULT NULL,
`analytics_mode` tinyint(1) NOT NULL,
`ads_mode` tinyint(1) NOT NULL,
PRIMARY KEY (`user_ID`),
CONSTRAINT `pro_member_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dumping data for table `pro_member`
--
LOCK TABLES `pro_member` WRITE;
/*!40000 ALTER TABLE `pro_member` DISABLE KEYS */;
INSERT INTO `pro_member` VALUES
(12300,112,725,1,1),(12345,74,412,1,1),(13513,56,963,1,1),(24680,132,679,1,1),(33333,67,698,
1,1),(77777,185,516,1,1),(78978,143,148,1,1),(88800,194,289,1,1),(88888,120,235,1,1),(99999,
98,326,1,1);
/*!40000 ALTER TABLE `pro_member` ENABLE KEYS */;
UNLOCK TABLES;



-- Table structure for table `profile`
--
DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
`profile_ID` int(11) NOT NULL,
`user_ID` int(11) NOT NULL,
`bio` varchar(200) DEFAULT NULL,
`pronouns` varchar(45) DEFAULT NULL,
`country_of_region` varchar(45) DEFAULT NULL,
PRIMARY KEY (`profile_ID`),
KEY `user_ID` (`user_ID`),
CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `profile`
--
LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES
(130847,98789,'','They/them','Italy'),(183967,99900,'','He/him',''),(195837,13579,'','She/her','U
nited Kingdom'),(215694,88800,'','','Sweden'),(284615,11111,'Nature lover and aspiring
photographer, finding beauty in every corner of the
world.','','Germany'),(298476,22222,'','They/them','Brazil'),(341587,78978,'','She/her',''),(356198,
77777,'Traveling the globe, one city at a time, and sharing the joy of new
experiences.','She/her',''),(361947,65400,'','She/her','Russia'),(407516,12300,'','','Argentina'),(407652,
98765,'Coffee enthusiast and book lover, always on the lookout for the next great
read.','','Australia'),(469825,88888,'','She/her',''),(517934,66666,'','','Mexico'),(521768,67890,'E
xploring the world, capturing moments, and embracing the beauty of
diversity.','He/him','Canada'),(574619,24624,'Musician exploring new sounds and genres,
expressing creativity through
melodies.','He/him',''),(582193,24680,'','',''),(630981,86420,'','He/him',''),(643719,44444,'Fitnes
s freak and nutrition advocate, on a journey to achieve a healthier 
lifestyle.','He/him',''),(683251,77700,'Gamer with a passion for esports, navigating virtual
worlds and honing skills.','He/him',''),(694281,12312,'Foodie on a mission to try every cuisine
and discover the world through flavors.','They/them','Japan'),(752143,33333,'Yoga practitioner
and mindfulness advocate, seeking balance and inner
peace.','','China'),(769124,99999,'','They/them','India'),(798124,98700,'Aspiring artist and
sketching enthusiast, creating art that speaks from the
heart.','He/him',''),(810372,55555,'','','France'),(835126,45645,'','','South
Africa'),(874329,12345,'A software engineer passionate about coding and building innovative
solutions. ','She/her','United States'),(890415,65432,'Environmentalist working towards a
greener planet, one eco-friendly choice at a
time.','She/her',''),(926731,13513,'','','Spain'),(936214,54321,'','They/them',''),(952368,45600,'F
ashionista with an eye for trends, blending style and individuality effortlessly.','They/them','');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;


-- Table structure for table `review`
--
DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
`user_ID` int(11) NOT NULL,
`movie_ID` int(11) NOT NULL,
`rating` int(11) NOT NULL,
`review_text` varchar(200) DEFAULT NULL,
`review_date` varchar(10) NOT NULL,
`latest_review` varchar(10) NOT NULL,
`num_likes` int(11) NOT NULL,
PRIMARY KEY (`user_ID`,`movie_ID`),
KEY `movie_ID` (`movie_ID`),
CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`),
CONSTRAINT `review_ibfk_2` FOREIGN KEY (`movie_ID`) REFERENCES `movie` (`movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dumping data for table `review`
--
LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (11111,43769,5,'\"A timeless romance with breathtaking visuals.
DiCaprio and Winslet\'s chemistry is
unforgettable.\"','2023-02-05','2023-02-10',19),(12300,73954,5,'\"Wes Anderson\'s whimsical
storytelling and visual
brilliance.\"','2023-07-15','2023-08-01',76),(12312,37294,5,'\"Heartwarming and timeless.
Spielberg captures the magic of childhood and
friendship.\"','2023-05-01','2023-05-08',36),(12345,48327,5,'\"An emotional journey with a
powerful message. A classic that never gets
old.\"','2023-01-15','2023-01-20',73),(13513,73926,4,'\"A Disney masterpiece with
unforgettable characters and a powerful soundtrack. Timeless and
heartwarming.\"','2023-06-15','2023-06-22',18),(13579,76423,3,'\"Tom Hanks delivers an
outstanding performance. A feel-good
classic.\"','2023-06-02','2023-06-10',30),(22222,62983,5,'\"Mind-bending masterpiece! Nolan\'s
brilliance shines through every layer.\"','2023-01-15','2023-01-20',60),(24624,56713,3,'\"Intense
and gripping. Scorsese at his best. DiCaprio and Nicholson
shine.\"','2023-11-18','2023-11-25',57),(24680,62849,5,'\"A heartbreaking depiction of the
Holocaust. Spielberg\'s masterpiece.\"','2023-07-01','2023-07-10',56),(33333,25389,5,'\"A
visually stunning journey into Pandora. Cameron\'s world-building is
awe-inspiring.\"','2023-04-15','2023-04-20',51),(44444,54176,5,'\"Chilling and suspenseful.
Anthony Hopkins as Hannibal Lecter is
unforgettable.\"','2023-08-20','2023-09-01',28),(45600,28514,5,'\"A visually stunning musical
with a bittersweet love story.\"','2023-03-10','2023-03-18',21),(45645,98562,4,'\"Mind-blowing
plot twists. A cult classic that stays with
you.\"','2023-05-15','2023-06-01',82),(54321,57284,4,'\"Heath Ledger\'s Joker steals the show.
A superhero masterpiece.\"','2023-03-25','2023-04-02',49),(55555,72694,4,'\"Revolutionary in
both style and substance. Keanu Reeves is
iconic.\"','2023-06-18','2023-07-01',75),(65400,64327,3,'\"A deeply moving and
thought-provoking film. Tom Hanks and Michael Clarke Duncan give stellar
performances.\"','2023-08-01','2023-08-08',61),(65432,69457,3,'\"Visually stunning and
intense. DiCaprio\'s Oscar-worthy
performance.\"','2023-12-15','2023-12-20',67),(66666,38475,3,'\"A groundbreaking superhero
ensemble. Action-packed with humor and great character
dynamics.\"','2023-03-20','2023-03-25',92),(67890,94615,4,'\"A cinematic triumph. Brando\'s 
performance is iconic.\"','2023-04-18','2023-05-01',12),(77700,16598,5,'\"Pixar\'s animated
masterpiece. A heartwarming and imaginative adventure for all
ages.\"','2023-07-15','2023-07-22',48),(77777,86431,3,'\"The film that started it all! A space
opera classic with iconic characters and an epic
adventure.\"','2023-03-05','2023-03-10',43),(78978,41658,5,'\"A visceral and epic tale of
freedom. Mel Gibson\'s performance and direction are
captivating.\"','2023-05-15','2023-05-22',44),(86420,15892,4,'\"Epic conclusion to the trilogy!
Spectacular battles, emotional depth, and a fitting
end.\"','2023-01-20','2023-01-25',67),(88800,48236,5,'\"A groundbreaking superhero film with
a rich cultural tapestry. Wakanda forever!\"','2023-07-01','2023-07-08',30),(88888,91726,5,'A
thrilling adventure with groundbreaking special effects. Spielberg\'s dino
masterpiece.\"','2023-04-02','2023-04-08',14),(98700,97481,4,'\"A compelling biographical
drama. Thought-provoking and
well-acted.\"','2023-08-15','2023-08-22',87),(98765,31976,4,'\"Tarantino\'s non-linear
storytelling at its finest. A cult classic.\"','2023-02-20','2023-03-01',89),(98789,82146,5,'\"Aaron
Sorkin\'s sharp writing and Jesse Eisenberg\'s brilliant
portrayal.\"','2023-10-15','2023-10-20',94),(99999,29547,5,'\"A thrilling and intense journey of
vengeance. Russell Crowe delivers a powerful performance.\"','2023-02-18','2023-02-25',87);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;


-- Table structure for table `sharelist`
--
DROP TABLE IF EXISTS `sharelist`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sharelist` (
`sharelist_ID` int(11) NOT NULL,
`user_ID` int(11) NOT NULL,
`name` varchar(45) DEFAULT NULL,
`description` varchar(200) DEFAULT NULL,
PRIMARY KEY (`sharelist_ID`),
KEY `user_ID` (`user_ID`),
CONSTRAINT `sharelist_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--


-- Dumping data for table `sharelist`
--
LOCK TABLES `sharelist` WRITE;
/*!40000 ALTER TABLE `sharelist` DISABLE KEYS */;
INSERT INTO `sharelist` VALUES (12973,65400,'Classic Film Noir Essentials','Immerse yourself in
the shadowy world of classic film noir. Intrigue, mystery, and femme fatales await in this curated
list.'),(17498,77777,'Timeless Romance','Indulge in the magic of love with these timeless
romance films. From classic love stories to modern rom-coms, there\'s something for every
romantic at heart.'),(19468,45645,'Political Thrillers','Dive into the world of intrigue and power
with these gripping political thrillers. Plot twists, conspiracies, and high-stakes drama
await.'),(24973,33333,'Heartfelt Coming-of-Age Stories','Experience the trials and triumphs of
adolescence with these heartfelt coming-of-age stories. Nostalgia, humor, and poignant
moments await.'),(27984,24680,'Cinematic Masterpieces','A collection of films widely regarded
as cinematic masterpieces. These movies have left an indelible mark on the history of
cinema.'),(31589,66666,'Golden Globe Winners Showcase','Catch up on films that have earned
prestigious Golden Globe Awards. Recognizing excellence in both drama and musical or comedy
categories.'),(35782,86420,'Feel-Good Comedies','Need a good laugh? This sharelist is filled
with feel-good comedies that will lift your spirits and leave you smiling.'),(37218,88800,'Classic
Musicals','Travel back in time with these classic musicals. From Fred Astaire to Judy Garland,
experience the golden era of song and dance.'),(37412,13513,'Neo-Noir Essentials','Experience
the shadows and mysteries of neo-noir with this curated list. Moody atmospheres, morally
ambiguous characters, and stylish cinematography.'),(37468,98700,'Christopher Nolan\'s
Mind-Benders','Dive into the intricate and mind-bending films crafted by Christopher Nolan.
From dream heists to time manipulation, Nolan\'s genius on
display.'),(42876,44444,'Thought-Provoking Documentaries','Explore the real world with
thought-provoking documentaries. From social issues to nature\'s wonders, these films will
inform and inspire.'),(45726,12300,'Miyazaki\'s Magical Worlds','Journey through the
enchanting and magical worlds crafted by Hayao Miyazaki. Studio Ghibli\'s masterpieces for
animation lovers.'),(49167,11111,'International Delights','Embark on a global cinematic journey
with these international films. Experience different cultures and perspectives through the lens
of cinema.'),(54689,65432,'Dark Comedy Delights','For those who appreciate humor with a dark
twist. This sharelist features dark comedies that explore the absurdity of
life.'),(56291,67890,'Mind-Bending Sci-Fi','Dive into the world of mind-bending science fiction.
From time travel to alternate realities, these films will challenge your perception of
reality.'),(58246,12312,'Mind-Blowing Special Effects','Witness the evolution of special effects in
cinema with this sharelist. From practical effects to CGI marvels, these films showcase the magic
of movie-making.'),(59372,55555,'Epic Fantasy Sagas','Step into fantastical worlds with these
epic fantasy sagas. Magic, mythical creatures, and epic battles await in this captivating
collection.'),(62895,24624,'Quentin Tarantino\'s Filmography','A journey through the cinematic
world of Quentin Tarantino. From his debut to the latest, explore the unique style and
storytelling of this acclaimed director.'),(64519,13579,'Gritty Crime Dramas','Explore the dark
underbelly of crime with these gritty and intense crime dramas. Suspense, mystery, and
gripping storytelling await.'),(68234,45600,'David Fincher\'s Cinematic Universe','Explore the
dark and compelling universe created by David Fincher. From psychological thrillers to crime
dramas, witness the art of storytelling.'),(68247,88888,'Auteur Filmmaker Spotlight','Explore the
unique vision of renowned auteurs. From their debut works to their most recent creations, this
list celebrates the artistry of filmmaking.'),(73615,99900,'Cult Classics Revival','Rediscover or
explore for the first time these cult classics that have garnered a devoted fan following. Quirky,
unconventional, and unforgettable.'),(73845,12345,'Classic Hollywood Gems','Explore timeless
movies from the golden era of Hollywood. From iconic performances to legendary directors, this
list celebrates cinema\'s golden age.'),(81356,98765,'Indie Darlings','Discover hidden gems and
indie darlings that showcase the diversity and creativity of independent filmmaking. Support
the underdogs of cinema!'),(81973,77700,'Mind-Bending Animations','Challenge your
perception of reality with these mind-bending animated films. Creative storytelling and unique
animation styles await.'),(82634,99999,'Spine-Tingling Horror Classics','For horror enthusiasts,
this sharelist features spine-tingling classics that have haunted audiences for generations. A
scream-worthy collection.'),(86537,78978,'Female-Driven Stories','Celebrate strong, complex,
and empowering female characters with this sharelist. These films highlight the diversity and
strength of women in cinema.'),(93756,98789,'Inspirational True Stories','Be inspired by true
stories of courage, resilience, and triumph. These films showcase the indomitable spirit of
real-life heroes.'),(94627,54321,'Charming Animated Adventures','For the young and young at
heart, this list features heartwarming and adventurous animated films. Perfect for family movie
nights.'),(96723,22222,'Musical Extravaganza','Get ready to tap your feet and sing along with
this sharelist of musical extravaganzas. From Broadway hits to rock and roll legends, it\'s a
musical journey.');
/*!40000 ALTER TABLE `sharelist` ENABLE KEYS */;
UNLOCK TABLES;
--

-- Table structure for table `user`
--
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
`user_ID` int(11) NOT NULL,
`username` varchar(45) NOT NULL,
`email` varchar(45) NOT NULL,
`password` varchar(45) NOT NULL,
`payment_method` varchar(45) DEFAULT NULL,
`status` tinyint(4) DEFAULT NULL,
PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--

--
-- Dumping data for table `user`
--
LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(11111,'QuantumReelJunkie','quantum.reel.junkie@example.com','R^2kT6dC','8702394651287
340',1),(12300,'QuantumQinemaQueen','quantum.qinema.queen@example.com','P(1cW9aV','
8745610932876540',2),(12312,'MosaicFlickHound','mosaic.flick.hound@example.com','L(1vO9k
T','7460123892745610',3),(12345,'SilverScreenSage','silver.screen.sage@example.com','P#7mR
6tK','4938712067192380',2),(13513,'NeonNoirNavigator','neon.noir.navigator@example.com','
U$8nV6mC','8745620938174020',2),(13579,'SilverLiningFlicks','silverlining.flicks@example.com'
,'M!9lS5wF','3627180945287390',3),(22222,'MidnightMarquee','midnight.marquee@example.c
om','D*6rH1oW','9283465017329840',3),(24624,'AuteurAdventurer','auteur.adventurer@exam
ple.com','X*6xG1jW','9856743210783490',3),(24680,'FrameFusionist','frame.fusionist@exampl
e.com','B&4pV7xJ','9283475610927380',2),(33333,'SpectralCinewalker','spectral.cinewalker@ex
ample.com','G%3wM8vU','2983745610928340',2),(44444,'PixelPoet','pixel.poet@example.com'
,'S$8uZ6vB','6298347150274860',3),(45600,'AudioAlchemyArtist','audio.alchemy.artist@exampl
e.com','Q#7bZ4tU','1987435209874610',3),(45645,'RainbowReelRider','rainbow.reel.rider@exa
mple.com','O#7yX4bS','3278456190384720',1),(54321,'CelluloidMaestro','celluloid.maestro@ex
ample.com','A$8sW3zN','1765438902798640',1),(55555,'SceneStealer','scene.stealer@example
.com','T@5eQ3sP','4928375601984720',1),(65400,'SilverCanvasSorcerer','silver.canvas.sorcerer
@example.com','A@5gN3oT','3456781209874930',3),(65432,'LuminaryLineSculptor','luminary.l
ine.sculptor@example.com','J!9wR5lP','7610923485720930',1),(66666,'EnigmaticCineaste','enig
matic.cineaste@example.com','F&4tK7pA','1092384756273940',1),(67890,'ReelRomantic','reel.
romantic@example.com','Q@5bX2vL','8274650139287450',3),(77700,'SublimeStorySpinner','su
blime.story.spinner@example.com','Y^2hE6oL','6209473815209870',1),(77777,'DreamWeaverD
irector','dreamweaver.director@example.com','C#7jL4mO','7650123892745360',2),(78978,'Tech
nicolorTalesmith','technicolor.talesmith@example.com','H@5pF3zR','2081937465209870',2),(86420,
'PlotTwistPioneer','plot.twist.pioneer@example.com','N%3iU8qE','2384576190348720',3),
(88800,'ChromaticCinephile','chromatic.cinephile@example.com','K%3mB8iN','4356789120738
490',2),(88888,'VelvetCurtainMystic','velvet.curtain.mystic@example.com','W!9zN5xY','837465
0192384720',2),(98700,'UsernameWizard','username.wizard@example.com','Z$8zH6kM','5098
273461827340',1),(98765,'VelvetCinephile','velvet.cinephile@example.com','Z*6oY1uH','60419
28375460980',1),(98789,'WhimsicalWatcher','whimsical.watcher@example.com','I&4tS7rQ','23
98745601987430',3),(99900,'SableScreenWanderer','sable.screen.wanderer@example.com','E^
2qJ6uI','4789012365278460',1),(99999,'CinemaSculptor','cinema.sculptor@example.com','V(1f
X9hG','5134928760459280',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `watchlist`
--
DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlist` (
`watchlist_ID` int(11) NOT NULL,
`user_ID` int(11) NOT NULL,
PRIMARY KEY (`watchlist_ID`),
KEY `user_ID` (`user_ID`),
CONSTRAINT `watchlist_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--


-- Dumping data for table `watchlist`
--
LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES
(10008,11111),(10027,12300),(10018,12312),(10001,12345),(10021,13513),(10006,13579),(10013,
22222),(10022,24624),(10005,24680),(10016,33333),(10012,44444),(10028,45600),(10019,45645),
(10003,54321),(10011,55555),(10029,65400),(10024,65432),(10014,66666),(10002,67890),
(10026,77700),(10010,77777),(10020,78978),(10007,86420),(10025,88800),(10015,88888),
(10030,98700),(10004,98765),(10023,98789),(10017,99900),(10009,99999);
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 13:14:22


-- 1) Retrieve combinations of two watchlists containing the same movie genre.
SELECT
MW1.watchlist_id AS 'Watchlist_1',
MW2.watchlist_id AS 'Watchlist_2',
M.genre AS 'Shared_Genre'
FROM movie_watchlist MW1
JOIN movie_watchlist MW2 ON MW1.watchlist_id < MW2.watchlist_id
JOIN movie M ON MW1.movie_ID = M.movie_ID
JOIN movie M1 ON MW2.movie_ID = M1.movie_ID
WHERE MW1.watchlist_id != MW2.watchlist_id AND M.genre = M1.genre
ORDER BY 3, 1, 2;


-- 2)Retrieve Movies with the Highest Rating:
SELECT m.title, r.rating
FROM movie m
JOIN review r ON m.movie_ID = r.movie_ID
ORDER BY r.rating DESC, m.title;

-- 3)Calculate Advertising Revenue from Advertisers by Country:
SELECT
P.country_of_region,
CONCAT('$', FORMAT(SUM(A.revenue),0)) AS 'total_revenue'
FROM profile P
JOIN advertiser A ON P.user_ID = A.user_ID
GROUP BY P.country_of_region
ORDER BY SUM(A.revenue) DESC;

-- Retrieve Movies with the Highest Engagement Rate (likes / views):
SELECT
M.title,
CONCAT(FORMAT((M.num_likes * 10 / M.num_views) * 100,2), '%') AS
'engagement_rate'
FROM movie M
WHERE M.num_views > 0
ORDER BY engagement_rate DESC;

-- 5) We are looking to sponsor users to promote the platform and create engaging content, such
-- as movie reviews and sharelists. We will evaluate users based on calculated engagement
-- metrics, considering review likes, sharelist likes, and number of followers. Find the top five
-- prospects we should sponsor.
SELECT
a.user_id AS User,
d.status AS 'Membership Status',
FORMAT((a.followers_count * 0.5 + b.num_likes * 0.25 + c.num_likes * 0.25)/1000, 2) AS
'Custom Metrics'
FROM
(SELECT user_id, followers_count FROM free_member
UNION
SELECT user_id, followers_count FROM pro_member) AS a,
review AS b,
(SELECT s.user_id, ms.num_likes FROM movie_sharelist ms, sharelist s WHERE
s.sharelist_id = ms.sharelist_id) AS c,
user d
WHERE a.user_id = b.user_id AND b.user_id = c.user_id AND c.user_id = d.user_id
ORDER BY 3 DESC
LIMIT 5;


-- 6) List the usernames and revenue of advertisers with ad click counts greater than 4000 and
-- analytics mode disabled:
SELECT U.username, A.revenue
FROM user U
JOIN advertiser A ON U.user_ID = A.user_ID
WHERE A.ad_click > 4000 AND A.analytics_mode = 0


