-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 10:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `uname`, `pwd`) VALUES
(2, 'admin', '$2y$10$fKyUM.8ZVhDAqgqhdF08oeLAVY8lrHatZ9J7iqY97Z2w9sbzrccTK');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `massage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `c_name`, `email`, `massage`) VALUES
(13, 'ada', 'tengis1007@gmail.com', 'adawd');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `post`) VALUES
(1, 'Баримтат', ''),
(2, 'Түүхэн', ''),
(3, 'Хөгжимт', ''),
(4, 'Драма', ''),
(5, 'Шинжлэх ухааны', ''),
(10, 'Аймшгийн', ''),
(11, 'Хайр дурлал', ''),
(12, 'Адал явдалт', ''),
(13, 'Инээдмийн', '');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `mv_name` varchar(255) NOT NULL,
  `mv_link` varchar(255) NOT NULL,
  `mv_trailer` varchar(255) NOT NULL,
  `mv_date` date NOT NULL,
  `mv_director` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `mv_lang` varchar(255) NOT NULL,
  `mv_imdb` tinyint(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `mv_desc` varchar(255) NOT NULL,
  `views` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `mv_name`, `mv_link`, `mv_trailer`, `mv_date`, `mv_director`, `genre_id`, `mv_lang`, `mv_imdb`, `img`, `mv_desc`, `views`) VALUES
(1, 'Creed III', 'https://www.youtube.com/watch?v=AHmCH7iB_IM', 'AHmCH7iB_IM', '2023-04-01', 'michael b jordan', 2, 'Англи', 7, '71wjACliZ0L.jpg', 'Боксын ертөнцийг ноёрхсоныхоо дараа, Адонис Крийдийн карьер болон гэр бүлийн амьд цэцэглэж байв. Түүний хүүхэд насны найз, хуучин боксчин, Дэмиан Андерсон, шоронгоос удаан хугацааны дараа суллагдсаны дараа, тэр өөрийнгөө батлан харуулж боксдоо буцаж ирэхи', 50),
(2, 'Avatar: The Way of Water', 'https://www.youtube.com/watch?v=d9MyW72ELq0', 'd9MyW72ELq0', '2022-02-13', 'james cameron', 12, 'Англи', 10, 'avatar.jpg', 'Эхний киноноос бараг арван жилийн дараа өрнөх ба, Саллигийн гэр бүлийн түүхийг өгүүлэх ба, тэднийг дагах асуудал, тэд бие биенээ аюулгүй байлгаж, амьд үлдэхийн тулд тэмцэх тэмцэл, болон тэдний давах туулах эмгэнэлт явдлын тухай өгүүлнэ.', 72),
(3, 'The Whale', 'https://www.youtube.com/watch?v=nWiQodhMvz4', 'nWiQodhMvz4', '2023-01-26', 'Darren Aronofsky', 12, 'Англи', 2, 'the whale.jpg', 'Хэт таргалалтаасаа болж ганцаардаж шаналж буй ганцаарчилсан англи хэлний багш өөрөөс нь холбоогоо тасалсан өсвөр охиноосоо уучлалт гуйн, түүнтэй эргэн холбоо тогтоож, ойр байхыг хичээнэ.', 7),
(4, ' JUNG_E 2023', 'https://www.youtube.com/watch?v=QQjLp1uvQb8', 'QQjLp1uvQb8', '1970-01-01', 'Ен Сан-хо', 3, 'Солонгос', 6, 'jung.jpg', '22-р зуунд хүн төрөлхтөн дэлхий дээр амьдрах боломжгүй болж зөвхөн өөрсдийн бүтээсэн аварга хоргодох газарт амьдардаг болно. Хүний тархийг хувилж хиймэл оюунт роботод суурилуулж дайныг зогсоох хиймэл оюунт роботуудыг бүтээхээр ажиллана.', 7),
(5, 'Black Panther: Wakanda Forever', 'https://www.youtube.com/watch?v=_Z3QKkl1WyM', 'Z3QKkl1WyM', '2023-03-28', 'ryan coogler', 1, 'Англи', 10, 'black.jpg', 'Хатан хаан Романда, Шури, МБаку болон бусад Вакандачууд ТЧалла Хааныг нас барсны дараа бусад улсуудаас өөрсдийгөө хамгаалах хэрэгтэй болно. Тэдний энэ удаагийн тулаан газарт биш далайд орших нэгний эсрэг.', 5),
(6, ' The Accursed', 'https://www.youtube.com/watch?v=pSsBU8y5BlM', 'pSsBU8y5BlM', '2023-03-30', 'Kevin Lewis', 10, 'Англи', 6, 'acc.jpg', 'Эллиг нэгэн найз нь алслагдсан хөдөө газар байдаг өндөр настай эмэгтэйг хэдэн өдөр харж өгөхийг хүсэв. Тэрээр хэд хоног байгальд байнгаа толгой тархиа сэргээгээд амраад авъя гэж бодон зөвшөөрөв. Удалгүй тэрээр хөгшин эмгэний биед нуугдаж буй муу ёрын сүнс', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
