-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 12:09 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` bigint(20) NOT NULL,
  `text` text NOT NULL,
  `id_str` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `text`, `id_str`) VALUES
(743673861175020032, 'RT @KRKBoxOffice: #DoLafzonKiKahani collected 3.10Cr in week1. Super flop.', 0),
(743674533043859968, 'So last week released film #TE3N has done business 100% according to my review only n not fake reviews of 4-5* of fake critics.', 743674533043855361),
(743685752228199936, 'Film #UdtaPunjab has got better opening than #Housefull3 in entire north region. So producers can smile.', 743685752228196352),
(743689874687949952, 'Hahahaha lol! So true madam Ji. @bhawanasomaaya https://t.co/0GHliRCMiR', 743689874687950848),
(743691443114380032, 'RT @KRKBoxOffice: #TE3N collected 15Cr in first week hence super flop.', 743691443114377216),
(743694954619239936, 'I would love to see @asliyoyo making film on @anuragkashyap72 like he has insulted him. By God Ki Kasam, that will be sure shot blockbuster.', 743694954619240451),
(743695914598969984, 'I love those critics who keep giving 4-5* to each flop film n don''t feel ashamed at all. But Haan Jab Koi Jaanta Hi Nahi Toh Sharam Bhi Kya!', 743695914598969345),
(743696402761420032, 'If Hindi film makers have made fun of punjabi superstar @asliyoyo so tomorrow punjabi film makers will do Maa Bahan of some Hindi stars also', 743696402761420802),
(743698292958080000, 'Don''t try to insult no.1 critic. I am not jobless. @ronnsmith22 @kamaalrkhan pls review dhanak movie by nagesh kukoonoor releasing today', 743698292958081024),
(743698682646690048, 'Hahahahaha too good sir! @one_by_two https://t.co/vZ2NT6bTuj', 743698682646691840),
(743708570143719936, 'I salute&amp;respect #TOI reviewer who has given 4* to #Fan 3.5* to #Teen n 4* to #UdtaPunjab! Isse Bada Reviewer Naa Hi Huwa Hai n Naa hi Hoga.', 743708570143719424),
(743709350200380032, 'So the great Bhushan Sahab is starting film #Noor with @sonakshisinha n hero @KananGill n @Purab_Kohli! Poor Sonakshi Ka Ye Time Aa Gaya?', 743709350200381440),
(743711106741369984, 'Tum Ho Toh Lagta Hai Video Song | Amaal Mallik Feat. Shaan | Taapsee Pan... https://t.co/MCMxTfke7t', 743711106741370880),
(743713665845590016, 'They are only my 2 lifeline in the world. https://t.co/VaZDnj71vB', 743713665845592066),
(743716464645970048, 'RT @kamaalrkhan: Join me for 30 minutes long live review of #UdtaPunjab only on @LiveOnfame today evening at 6pm. I will review #GreatGrand…', 743716464645967873),
(743724321479100032, 'RT @LiveOnfame: Catch @kamaalrkhan''s review of the much talked about #UdtaPunjab first on #fame LIVE at 6 PM\nhttps://t.co/DbdDHxmCeY https:…', 743724321479098368),
(743725444659219968, 'Our film makers are so big fake that they just love to hear fake reviews, fake praise, fake collections but always talk about honesty. Waah????', 743725444659216385),
(743733841555170048, 'So according to @Bollyhungama @iamsrk refused to give statement after watching #UdtaPunjab! Lol! https://t.co/wc7O9RAMQo', 743733841555165184),
(743734569556290048, 'Katrina kaif called #UdtaPunjab a brilliant film. My God! She also knows about good n bad film who has done #Fitoor #Phantom n #JuggaJasoos', 743734569556287488),
(743741267889129984, 'RT @KRKBoxOffice: Salman recommended Katrina Kaif for Veera Ki Shaadi ? https://t.co/BfvrnBuMzL', 743741267889131520),
(743741281436739968, 'RT @KRKBoxOffice: Aamir Khan resumes ''Dangal'' shoot in young avatar  https://t.co/1KAewV0OTp @aamir_khan', 743741281436737536),
(743741293956760064, 'RT @KRKBoxOffice: Vivek Agnihotri''s next film on the lines of ''12 Angry Men'' https://t.co/8GKDnMXQnw', 743741293956759552);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
 ADD UNIQUE KEY `id` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
