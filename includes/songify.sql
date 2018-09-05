-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 02:43 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `songify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Thriller', 1, 2, 'assets/images/artwork/MichaelJackson_Thriller.png'),
(2, 'XSCAPE', 1, 2, 'assets/images/artwork/MichaelJackson_XSCAPE.jpg'),
(3, 'Abbey Road', 2, 1, 'assets/images/artwork/TheBeatles_AbbeyRoad.jpg'),
(4, 'Help!', 2, 17, 'assets/images/artwork/TheBeatles_Help.jpg'),
(5, 'Let It Be', 2, 1, 'assets/images/artwork/TheBeatles_LetItBe.jpg'),
(6, 'Bad', 1, 1, 'assets/images/artwork/MichaelJackson_Bad.png'),
(7, 'The Game', 5, 18, 'assets/images/artwork/Queen_TheGame.png'),
(8, 'Hot Space', 5, 18, 'assets/images/artwork/Queen_HotSpace.jpg'),
(9, 'Rubber Soul', 2, 1, 'assets/images/artwork/TheBeatles_RubberSoul.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `profilePic`) VALUES
(1, 'Michael Jackson', 'assets/images/profile-pics/MichaelJackson-Profile.jpg'),
(2, 'The Beatles', 'assets/images/profile-pics/TheBeatles-Profile.jpg'),
(3, 'Elton John', 'assets/images/profile-pics/EltonJohn-Profile.jpg'),
(4, 'Elvis Presley', 'assets\\images\\profile-pics/ElvisPresley-Profile.jpg'),
(5, 'Queen', 'assets/images/profile-pics/Queen-Profile.jpg'),
(6, 'Bruno Mars', 'assets\\images\\profile-pics\\BrunoMars-Profile.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Focus'),
(4, 'Jazz'),
(5, 'R & B'),
(6, 'Hip-Hop'),
(7, 'Rap'),
(8, 'Funk'),
(9, 'Country Music'),
(10, 'Blues'),
(11, 'Electronic'),
(12, 'Reggae'),
(13, 'Instrumental'),
(14, 'Ambient Music'),
(15, 'Alternative Rock'),
(16, 'Disco'),
(17, 'Pop Rock'),
(18, 'Classic Rock');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(2, 'MyFirstPlaylist', 'Ademir', '2018-08-23 00:00:00'),
(3, 'MySecondPlaylist', 'Ademir', '2018-08-24 00:00:00'),
(4, 'Playlist 1', 'Andre', '2018-08-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL,
  `artistName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `artistName`) VALUES
(1, 'Thriller', 1, 1, 2, '5:59', 'assets/music/MichaelJackson-Thriller.mp3', 4, 32, ''),
(2, 'Wanna Be Startin\' Somethin\'', 1, 1, 2, '6:03', 'assets/music/MichaelJackson-WannaBeStartinSomethin.mp3', 1, 27, ''),
(3, 'The Lady In My Life', 1, 1, 2, '4:58', 'assets/music/MichaelJackson-TheLadyInMyLife.mp3', 9, 17, ''),
(4, 'Human Nature', 1, 1, 2, '4:05', 'assets/music/MichaelJackson-HumanNature.mp3', 7, 26, ''),
(5, 'Billie Jean', 1, 1, 2, '4:53', 'assets/music/MichaelJackson-BillieJean.mp3', 6, 28, ''),
(6, 'Beat It', 1, 1, 2, '4:17', 'assets/music/MichaelJackson-BeatIt.mp3', 5, 29, ''),
(7, 'The Girl Is Mine (with Paul McCartney)', 1, 1, 2, '3:42', 'assets/music/MichaelJackson-TheGirlIsMine(with Paul McCartney).mp3', 3, 23, ''),
(8, 'Baby Be Mine', 1, 1, 2, '4:20', 'assets/music/MichalJackson-BabyBeMine.mp3', 2, 39, ''),
(9, 'P.Y.T. (Pretty Young Thing)', 1, 1, 2, '3:58', 'assets/music/MichaelJackson-P.Y.T.(Pretty Young Thing).mp3', 8, 27, ''),
(10, 'Come Together', 2, 3, 1, '4:18', 'assets/music/TheBeatles-ComeTogether.mp3', 1, 24, ''),
(11, 'Something', 2, 3, 1, '3:07', 'assets/music/Something.mp3', 2, 38, ''),
(12, 'Drive My Car', 2, 9, 1, '2:29', 'assets/music/DriveMyCar.mp3', 1, 51, ''),
(13, 'Norwegian Wood (This Bird Has Flown)', 2, 9, 1, '2:07', 'assets/music/Norwegian Wood (This Bird Has Flown).mp3', 2, 39, ''),
(14, 'You Won\'t See Me', 2, 9, 1, '3:31', 'assets/music/You Won\'t See Me.mp3', 3, 39, ''),
(15, 'Nowhere Man', 2, 9, 1, '2:46', 'assets/music/Nowhere Man.mp3', 4, 38, ''),
(16, 'Think for Yourself', 2, 9, 1, '2:22', 'assets/music/Think for Yourself.mp3', 5, 23, ''),
(17, 'The Word', 2, 9, 1, '2:46', 'assets/music/The Word.mp3', 6, 30, ''),
(18, 'Michelle', 2, 9, 1, '2:50', 'assets/music/Michelle.mp3', 7, 39, ''),
(19, 'What Goes On', 2, 9, 1, '2:51', 'assets/music/What Goes On.mp3', 8, 33, ''),
(20, 'Girl', 2, 9, 1, '2:34', 'assets/music/Girl.mp3', 9, 30, ''),
(21, 'I\'m Looking Through You', 2, 9, 1, '2:28', 'assets/music/ImLookingThroughYou.mp3', 10, 29, ''),
(22, 'In My Life', 2, 9, 1, '2:28', 'assets/music/InMyLife.mp3', 11, 26, ''),
(23, 'Wait', 2, 9, 1, '2:17', 'assets/music/Wait.mp3', 12, 35, ''),
(24, 'If I Needed Someone', 2, 9, 1, '2:25', 'assets/music/IfINeededSomeone.mp3', 13, 29, ''),
(25, 'Run For Your Life', 2, 9, 1, '2:21', 'assets/music/RunForYourLife.mp3', 14, 30, ''),
(26, 'Bad', 1, 6, 1, '4:09', 'assets/music/Bad-1stCD/1-01_Bad.mp3', 1, 33, 'Michael Jackson'),
(27, 'The Way You Make Me Feel', 1, 6, 1, '4:58', 'assets/music/Bad-1stCD/1-02_The_Way_You_Make_Me_Feel.mp3', 2, 10, 'Michael Jackson'),
(28, 'Speed Demon', 1, 6, 1, '4:02', 'assets/music/Bad-1stCD/1-03_Speed_Demon.mp3', 3, 8, 'Michael Jackson'),
(29, 'Liberian Girl', 1, 6, 1, '3:52', 'assets/music/Bad-1stCD/1-04_Liberian_Girl.mp3', 4, 6, 'Michael Jackson'),
(30, 'Just Good Friends', 1, 6, 1, '4:07', 'assets/music/Bad-1stCD/1-05_Just_Good_Friends.mp3', 5, 7, 'Michael Jackson'),
(31, 'Another Part Of Me', 1, 6, 1, '3:54', 'assets/music/Bad-1stCD/1-06_Another_Part_of_Me.mp3', 6, 8, ''),
(32, 'Man In The Mirror', 1, 6, 1, '5:18', 'assets/music/Bad-1stCD/1-07_Man_in_the_Mirror.mp3', 7, 5, ''),
(33, 'I Just Can\'t Stop Loving You', 1, 6, 1, '4:13', 'assets/music/Bad-1stCD/1-08_I_Just_Can_39_t_Stop_Loving_You.mp3', 8, 5, ''),
(34, 'Dirty Diana', 1, 6, 1, '4:40', 'assets/music/Bad-1stCD/1-09_Dirty_Diana.mp3', 9, 4, ''),
(35, 'Smooth Criminal', 1, 6, 1, '4:17', 'assets/music/Bad-1stCD/1-10_Smooth_Criminal.mp3', 10, 8, ''),
(36, 'Leave Me Alone', 1, 6, 1, '4:40', 'assets/music/Bad-1stCD/1-11_Leave_Me_Alone.mp3', 11, 4, ''),
(37, 'Maxwell\'s Silver Hammer', 2, 3, 1, '3:38', 'assets/music/AbbeyRoad/03 Maxwell\'s Silver Hammer.mp3', 3, 0, 'The Beatles'),
(38, 'Oh! Darling', 2, 3, 1, '3:28', 'assets/music/AbbeyRoad/04 Oh Darling.mp3', 4, 8, 'The Beatles'),
(39, 'Octopus\'s Garden', 2, 3, 1, '2:53', 'assets/music/AbbeyRoad/05 Octopus\'s Garden.mp3', 5, 1, 'The Beatles'),
(40, 'I Want You (She\'s So Heavy)', 2, 3, 1, '7:49', 'assets/music/AbbeyRoad/06 I Want You (She\'s So Heavy).mp3', 6, 2, 'The Beatles'),
(41, 'Here Comes The Sun', 2, 3, 1, '3:09', 'assets/music/AbbeyRoad/07 Here Comes the Sun.mp3', 7, 3, 'The Beatles'),
(42, 'Come And Get It', 2, 3, 1, '2:30', 'assets/music/AbbeyRoad/08 Come and Get It.mp3', 8, 0, 'The Beatles'),
(43, 'Because', 2, 3, 1, '2:48', 'assets/music/AbbeyRoad/09 Because.mp3', 9, 1, 'The Beatles'),
(44, 'You Never Give Me Your Money', 2, 3, 1, '3:53', 'assets/music/AbbeyRoad/10 You Never Give Me Your Money.mp3', 10, 2, 'The Beatles'),
(45, 'Sun King', 2, 3, 1, '2:32', 'assets/music/AbbeyRoad/11 Sun King.mp3', 11, 1, 'The Beatles'),
(46, 'Mean Mr Mustard', 2, 3, 1, '1:13', 'assets/music/AbbeyRoad/12 Mean Mr Mustard.mp3', 12, 0, 'The Beatles'),
(47, 'Her Majesty', 2, 3, 1, '00:27', 'assets/music/AbbeyRoad/13 Her Majesty.mp3', 13, 1, 'The Beatles'),
(48, 'Polythene Pam', 2, 3, 1, '1:16', 'assets/music/AbbeyRoad/14 Polythene Pam.mp3', 14, 1, 'The Beatles'),
(49, 'She Came in Through the Bathroom Window', 2, 3, 1, '2:01', 'assets/music/AbbeyRoad/15 She Came in Through the Bathroom Window.mp3', 15, 1, 'The Beatles'),
(50, 'Golden Slumbers', 2, 3, 1, '1:40', 'assets/music/AbbeyRoad/16 Golden Slumbers.mp3', 16, 1, 'The Beatles'),
(51, 'Carry That Weight', 2, 3, 1, '1:55', 'assets/music/AbbeyRoad/17 Carry That Weight.mp3', 17, 1, 'The Beatles'),
(52, 'The End', 2, 3, 1, '2:10', 'assets/music/AbbeyRoad/18 The End.mp3', 18, 2, 'The Beatles');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(26) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'mabmorandi', 'Andrã©', 'Morandi', 'Andremorandi321@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', '2018-07-26 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'Admin', 'Admin', 'Admin', 'Admin@example.com', 'f5bb0c8de146c67b44babbf4e6584cc0', '2018-07-26 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'Admins', 'Adminandrã©', 'Admin', 'Admin2@example.com', 'fcea920f7412b5da7be0cf42b8c93759', '2018-07-26 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'Andre', 'Andrã©', 'Morandi', 'Emailexemplo@exemplo.com', '66e70d854f2aa8887dfe13460bc03fdb', '2018-07-27 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'Ademir', 'Ademiro', 'Dasilva', 'Emailfalso1232@gmail.com', '65e92b8acdcae974491b80a89a3640b3', '2018-08-23 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(6, 'morandibr', 'Andrã©', 'Morandi', 'Andreopbmo@gmail.com', '623f2ba2a08cd64e36a21ed616efc66d', '2018-08-30 00:00:00', 'assets/images/profile-pics/head_profile.png'),
(7, 'Teste', 'Andrã©', 'Morandi', 'Teste@gmail.com', 'e09c80c42fda55f9d992e59ca6b3307d', '2018-08-30 00:00:00', 'assets/images/profile-pics/head_profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
