-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 31, 2016 at 06:16 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liteblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `ArticleID` int(8) NOT NULL,
  `Title` text NOT NULL,
  `PubTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CategoryID` int(8) NOT NULL,
  `Preview` text NOT NULL,
  `Content` longtext NOT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Title`, `PubTime`, `CategoryID`, `Preview`, `Content`, `Latitude`, `Longitude`) VALUES
(6, 'Test Article 1', '2016-05-26 03:43:52', 1, 'It''s just a test article. Nothing special here.', '<h2>This is an article title</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis arcu, accumsan vitae vulputate vel, fringilla eget tortor. Pellentesque justo turpis, venenatis vel purus eu, rhoncus imperdiet metus. Nullam venenatis dictum varius. Quisque laoreet elementum metus ac pulvinar. Integer sit amet egestas quam, faucibus egestas ligula. Sed eleifend facilisis sapien, quis varius purus. Aenean non neque urna. Donec quis vehicula sapien. Fusce ut arcu ac velit sagittis lobortis.</p>\r\n<p>Vestibulum elementum auctor egestas. Donec sed iaculis mauris, et pretium mauris. Aenean eu mauris in neque suscipit maximus. Cras maximus efficitur sapien, eu aliquam mauris hendrerit vitae. Donec maximus sit amet augue vitae eleifend. Morbi est nisl, facilisis vel tempus ac, mattis vel lacus. Sed vulputate accumsan augue, ac varius lorem lobortis eget. Integer fringilla erat ac vehicula cursus. Pellentesque sem velit, sollicitudin eget bibendum ut, malesuada vitae dui. Maecenas varius ante ligula, vel sagittis sem commodo sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n<p>Nullam ut urna pulvinar metus venenatis tincidunt id nec felis. Nulla condimentum est in elit rutrum, eu convallis nibh hendrerit. Donec commodo lobortis venenatis. Donec ornare rutrum ipsum, eget cursus augue pulvinar at. Aenean pulvinar libero id enim ultrices pulvinar. Sed ultrices sapien elit, in tincidunt velit egestas quis. Pellentesque gravida sapien vel sapien aliquam, vel gravida tellus iaculis. Nulla egestas maximus eros, et accumsan ligula accumsan sit amet. Praesent in erat in erat posuere luctus. Pellentesque facilisis dapibus urna, sed bibendum neque luctus vel. Integer placerat vestibulum turpis ac egestas. Aliquam porttitor mauris ante, posuere efficitur tortor tincidunt fermentum. Suspendisse posuere tempor diam a aliquet. Donec dapibus nisi vel hendrerit condimentum. Nunc auctor a turpis sed scelerisque. Duis dignissim rhoncus nunc, in auctor diam mattis dignissim.</p>', -27.5613255, 153.0149049),
(7, 'Test Article 2', '2016-05-27 00:00:00', 2, 'Let''s try something else...', '<h5>This is a heading 5</h5>\r\n<p>good....</p>', NULL, NULL),
(8, 'Test Article 3', '2016-04-13 14:00:00', 10, 'WOWOWOWOWOW', 'Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text ', NULL, NULL),
(9, 'Test Article 4', '2016-05-27 05:17:27', 12, 'Nothing...', '<h1>a large heading</h1>', NULL, NULL),
(11, 'Test Article 6', '2016-05-27 18:26:57', 8, 'Real posted article', '<p>111</p>', -27.564715099999997, 153.0894176),
(12, 'Test Article 7', '2016-05-27 18:30:16', 11, 'Another post', '<h3><em>It is a heading</em></h3>\n<p>&nbsp;</p>\n<p><em>With</em> some <strong>Style</strong></p>', NULL, NULL),
(13, 'itâ€˜s a test article', '2016-05-27 18:49:06', 11, 'itâ€˜s a test article', '<p>it&lsquo;s a test article</p>', NULL, NULL),
(14, 'letâ€™s try again', '2016-05-27 18:51:40', 6, 'letâ€™s try again', '<h2>let&rsquo;s try again</h2>\n<p>let&rsquo;s try again.&nbsp;<span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span><span style="font-size: 11px;">let&rsquo;s try again.&nbsp;</span></p>\n<p>&nbsp;</p>\n<p style="text-align: center;"><strong><em><span style="font-size: 11px;">with some "quote"</span></em></strong></p>', -27.564716599999997, 153.0893808),
(22, 'Some more tests', '2016-05-29 04:46:08', 11, 'wowowojkjcdslcjdkc', '<h1><strong>a heading</strong></h1>\n<p>&nbsp;</p>\n<p><strong>some tests....</strong></p>\n<p>&nbsp;</p>\n<p><strong>I&lsquo;m good</strong></p>\n<p>&nbsp;</p>\n<p><strong>"quote"</strong></p>', -27.4998906, 153.01475209999998),
(28, 'If it''s working', '2016-05-31 14:33:29', 4, '"If it''s â€˜workingâ€™"', '<p>"If it''s &lsquo;<strong>working</strong>&rsquo;"</p>\n<p>&nbsp;</p>\n<h2>"If it''s &lsquo;<strong>working</strong>&rsquo;!!"</h2>', NULL, NULL),
(31, '<script type="text/javascript">alert("haha")</script>', '2016-05-31 15:05:51', 4, '<script type="text/javascript">alert("haha")</script>', '<p>&lt;script type="text/javascript"&gt;alert("haha")&lt;/script&gt;</p>', NULL, NULL),
(33, 'Lupin III 2015', '2016-05-31 17:54:21', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis arcu, accumsan vitae vulputate vel, fringilla eget tortor. Pellentesque justo turpis, venenatis vel purus eu, rhoncus imperdiet metus.', '<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Nullam ut urna pulvinar metus venenatis tincidunt id nec felis. Nulla condimentum est in elit rutrum, eu convallis nibh hendrerit. Donec commodo lobortis venenatis. Donec ornare rutrum ipsum, eget cursus augue pulvinar at. Aenean pulvinar libero id enim ultrices pulvinar. Sed ultrices sapien elit, in tincidunt velit egestas quis. Pellentesque gravida sapien vel sapien aliquam, vel gravida tellus iaculis. Nulla egestas maximus eros, et accumsan ligula accumsan sit amet. Praesent in erat in erat posuere luctus. Pellentesque facilisis dapibus urna, sed bibendum neque luctus vel. Integer placerat vestibulum turpis ac egestas. Aliquam porttitor mauris ante, posuere efficitur tortor tincidunt fermentum. Suspendisse posuere tempor diam a aliquet. Donec dapibus nisi vel hendrerit condimentum. Nunc auctor a turpis sed scelerisque. Duis dignissim rhoncus nunc, in auctor diam mattis dignissim.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Nam volutpat metus in dolor tempus congue. Curabitur suscipit ipsum lorem, ut vestibulum est porta ut. Sed eleifend at diam quis dignissim. Nunc sit amet consequat ipsum. Mauris interdum eros elementum est viverra lobortis. Sed ultrices elit et sem pharetra porttitor. Cras ac lectus ut nisl convallis imperdiet vitae ut ante. Donec ut lacus sed massa consectetur volutpat ac sed tortor. In vehicula mattis libero, non dignissim elit viverra nec.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Vestibulum scelerisque, nulla in ornare rutrum, justo lacus facilisis orci, ac egestas felis est eget sem. Duis sed malesuada sapien, in tincidunt massa. Donec ut orci ut massa interdum posuere. Quisque consequat quam purus, quis vulputate dolor faucibus ac. Aenean volutpat urna nisi, ac fermentum ante venenatis quis. Etiam imperdiet dolor neque, dapibus sagittis erat egestas eget. Nulla id magna a ante ornare facilisis id sit amet nisi. Aliquam erat volutpat. Suspendisse potenti. Morbi pulvinar nec massa eu gravida. Sed placerat sapien sed orci pulvinar porttitor.</p>', -27.564716699999998, 153.08945),
(34, 'Movie Review: Zootopia', '2016-05-31 17:58:01', 11, 'Vestibulum elementum auctor egestas. Donec sed iaculis mauris, et pretium mauris. Aenean eu mauris in neque suscipit maximus. Cras maximus efficitur sapien, eu aliquam mauris hendrerit vitae. Donec maximus sit amet augue vitae eleifend.', '<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Vestibulum elementum auctor egestas. Donec sed iaculis mauris, et pretium mauris. Aenean eu mauris in neque suscipit maximus. Cras maximus efficitur sapien, eu aliquam mauris hendrerit vitae. Donec maximus sit amet augue vitae eleifend. Morbi est nisl, facilisis vel tempus ac, mattis vel lacus. Sed vulputate accumsan augue, ac varius lorem lobortis eget. Integer fringilla erat ac vehicula cursus. Pellentesque sem velit, sollicitudin eget bibendum ut, malesuada vitae dui. Maecenas varius ante ligula, vel sagittis sem commodo sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Nullam ut urna pulvinar metus venenatis tincidunt id nec felis. Nulla condimentum est in elit rutrum, eu convallis nibh hendrerit. Donec commodo lobortis venenatis. Donec ornare rutrum ipsum, eget cursus augue pulvinar at. Aenean pulvinar libero id enim ultrices pulvinar. Sed ultrices sapien elit, in tincidunt velit egestas quis. Pellentesque gravida sapien vel sapien aliquam, vel gravida tellus iaculis. Nulla egestas maximus eros, et accumsan ligula accumsan sit amet. Praesent in erat in erat posuere luctus. Pellentesque facilisis dapibus urna, sed bibendum neque luctus vel. Integer placerat vestibulum turpis ac egestas. Aliquam porttitor mauris ante, posuere efficitur tortor tincidunt fermentum. Suspendisse posuere tempor diam a aliquet. Donec dapibus nisi vel hendrerit condimentum. Nunc auctor a turpis sed scelerisque. Duis dignissim rhoncus nunc, in auctor diam mattis dignissim.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Nam volutpat metus in dolor tempus congue. Curabitur suscipit ipsum lorem, ut vestibulum est porta ut. Sed eleifend at diam quis dignissim. Nunc sit amet consequat ipsum. Mauris interdum eros elementum est viverra lobortis. Sed ultrices elit et sem pharetra porttitor. Cras ac lectus ut nisl convallis imperdiet vitae ut ante. Donec ut lacus sed massa consectetur volutpat ac sed tortor. In vehicula mattis libero, non dignissim elit viverra nec.</p>', NULL, NULL),
(35, 'Game Preview: Ys VIII Lacrimosa of Dana', '2016-05-31 18:00:17', 7, 'Nullam ut urna pulvinar metus venenatis tincidunt id nec felis. Nulla condimentum est in elit rutrum, eu convallis nibh hendrerit. Donec commodo lobortis venenatis. Donec ornare rutrum ipsum, eget cursus augue pulvinar at. Aenean pulvinar libero id enim ultrices pulvinar. Sed ultrices sapien elit, in tincidunt velit egestas quis. ', '<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis arcu, accumsan vitae vulputate vel, fringilla eget tortor. Pellentesque justo turpis, venenatis vel purus eu, rhoncus imperdiet metus. Nullam venenatis dictum varius. Quisque laoreet elementum metus ac pulvinar. Integer sit amet egestas quam, faucibus egestas ligula. Sed eleifend facilisis sapien, quis varius purus. Aenean non neque urna. Donec quis vehicula sapien. Fusce ut arcu ac velit sagittis lobortis.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Vestibulum elementum auctor egestas. Donec sed iaculis mauris, et pretium mauris. Aenean eu mauris in neque suscipit maximus. Cras maximus efficitur sapien, eu aliquam mauris hendrerit vitae. Donec maximus sit amet augue vitae eleifend. Morbi est nisl, facilisis vel tempus ac, mattis vel lacus. Sed vulputate accumsan augue, ac varius lorem lobortis eget. Integer fringilla erat ac vehicula cursus. Pellentesque sem velit, sollicitudin eget bibendum ut, malesuada vitae dui. Maecenas varius ante ligula, vel sagittis sem commodo sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Nullam ut urna pulvinar metus venenatis tincidunt id nec felis. Nulla condimentum est in elit rutrum, eu convallis nibh hendrerit. Donec commodo lobortis venenatis. Donec ornare rutrum ipsum, eget cursus augue pulvinar at. Aenean pulvinar libero id enim ultrices pulvinar. Sed ultrices sapien elit, in tincidunt velit egestas quis. Pellentesque gravida sapien vel sapien aliquam, vel gravida tellus iaculis. Nulla egestas maximus eros, et accumsan ligula accumsan sit amet. Praesent in erat in erat posuere luctus. Pellentesque facilisis dapibus urna, sed bibendum neque luctus vel. Integer placerat vestibulum turpis ac egestas. Aliquam porttitor mauris ante, posuere efficitur tortor tincidunt fermentum. Suspendisse posuere tempor diam a aliquet. Donec dapibus nisi vel hendrerit condimentum. Nunc auctor a turpis sed scelerisque. Duis dignissim rhoncus nunc, in auctor diam mattis dignissim.</p>', -27.5647415, 153.08946749999998),
(36, 'Finale of Lupin III 2015', '2016-05-31 18:01:41', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis arcu, accumsan vitae vulputate vel, fringilla eget tortor.', '<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur felis arcu, accumsan vitae vulputate vel, fringilla eget tortor. Pellentesque justo turpis, venenatis vel purus eu, rhoncus imperdiet metus. Nullam venenatis dictum varius. Quisque laoreet elementum metus ac pulvinar. Integer sit amet egestas quam, faucibus egestas ligula. Sed eleifend facilisis sapien, quis varius purus. Aenean non neque urna. Donec quis vehicula sapien. Fusce ut arcu ac velit sagittis lobortis.</p>\n<p style="margin: 0px 0px 16px; padding: 0px; border: 0px; font-stretch: inherit; font-size: medium; line-height: 20px; font-family: Roboto, sans-serif; vertical-align: baseline; color: #323232; text-align: justify;">Vestibulum elementum auctor egestas. Donec sed iaculis mauris, et pretium mauris. Aenean eu mauris in neque suscipit maximus. Cras maximus efficitur sapien, eu aliquam mauris hendrerit vitae. Donec maximus sit amet augue vitae eleifend. Morbi est nisl, facilisis vel tempus ac, mattis vel lacus. Sed vulputate accumsan augue, ac varius lorem lobortis eget. Integer fringilla erat ac vehicula cursus. Pellentesque sem velit, sollicitudin eget bibendum ut, malesuada vitae dui. Maecenas varius ante ligula, vel sagittis sem commodo sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int(8) NOT NULL,
  `CategoryName` char(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(10, 'Animation'),
(3, 'Coding - C'),
(4, 'Coding - JAVA'),
(2, 'Coding - Python'),
(1, 'Coding - RMMV Plugin'),
(5, 'Coding - Web Design'),
(6, 'Coding - Web Server'),
(8, 'Game - ACT'),
(9, 'Game - AVG'),
(7, 'Game - RPG'),
(11, 'Movie'),
(12, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `PictureID` int(8) NOT NULL,
  `ArticleID` int(8) DEFAULT NULL,
  `Filename` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`PictureID`, `ArticleID`, `Filename`) VALUES
(1, 6, '1.jpg'),
(2, 6, '2.jpg'),
(3, 33, 'img_88683_4.jpg'),
(4, 33, 'img_88683_5.jpg'),
(5, 33, 'img_88683_2.jpg'),
(6, 33, 'img_88683_3.jpg'),
(7, 33, 'img_88683_6.jpg'),
(8, 34, 'zootopia.jpg'),
(9, 35, 'ys8_01v.jpg'),
(10, 35, 'ys8_02v.jpg'),
(11, 35, 'ys8_03v.jpg'),
(12, 35, 'ys8_04v.jpg'),
(13, 35, 'ys8_05v.jpg'),
(14, 36, 'LupinIII-1.jpg'),
(15, 36, 'LupinIII-2.jpg'),
(16, 36, 'LupinIII-3.jpg'),
(17, 36, 'LupinIII-4.jpg'),
(18, 36, 'LupinIII-5.jpg'),
(19, 36, 'LupinIII-6.jpg'),
(20, 36, 'LupinIII-7.jpg'),
(21, 36, 'LupinIII-8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `SlideID` int(8) NOT NULL,
  `FileName` text NOT NULL,
  `ArticleID` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`SlideID`, `FileName`, `ArticleID`) VALUES
(1, 'gallery01.jpg', 33),
(2, 'gallery02.jpg', 34),
(3, 'gallery03.jpg', 35),
(4, 'gallery04.jpg', 36);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(8) NOT NULL,
  `UserName` varchar(128) NOT NULL,
  `Salt` varchar(128) NOT NULL,
  `EncryptedPassword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Salt`, `EncryptedPassword`) VALUES
(1, 'infs', '4b3403665fea6', 'e6d912a3c355d18b140ab729d0160101157f2bdc968ac79a4bc76721db4e8338');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ArticleID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`PictureID`),
  ADD KEY `ArticleID` (`ArticleID`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`SlideID`),
  ADD KEY `ArticleID` (`ArticleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ArticleID` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `PictureID` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `SlideID` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `Article_in_Category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `Picture_of_Article` FOREIGN KEY (`ArticleID`) REFERENCES `article` (`ArticleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `Silde_of_Article` FOREIGN KEY (`ArticleID`) REFERENCES `article` (`ArticleID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
