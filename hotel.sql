
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `manager` (
  `uid` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uemail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `manager` (`uid`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(1, 'admin', '1234', 'admin', 'admin@admin.com');

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL,
  `room_cat` text NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `rooms` (`room_id`, `room_cat`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(123, 'Luxury Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(124, 'Luxury Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(125, 'Luxury Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(126, 'Luxury Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(127, 'Luxury Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(128, 'Family Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(129, 'Family Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(130, 'Family Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(131, 'Family Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(132, 'Family Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(133, 'Single Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(134, 'Single Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(135, 'Single Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(136, 'Single Suite', '0000-00-00', '0000-00-00', '', 0, 'false'),
(137, 'Single Suite', '0000-00-00', '0000-00-00', '', 0, 'false');



CREATE TABLE `room_category` (
  `roomname` text NOT NULL,
  `room_qnty` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `no_bed` int(11) NOT NULL,
  `bedtype` text NOT NULL,
  `facility` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `room_category` (`roomname`, `room_qnty`, `available`, `booked`, `no_bed`, `bedtype`, `facility`, `price`) VALUES
('Single Suite', 5, 5, 0, 2, 'single', 'AC, TV, Wifi', 1500),
('Luxury Suite', 5, 5, 0, 2, 'double', 'Sofa, TV, WIFI, Balcony, AC.', 3500),
('Family Suite', 5, 5, 0, 1, 'double', 'AC, TV, WIFI', 2200);


ALTER TABLE `manager`
  ADD PRIMARY KEY (`uid`);

ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

ALTER TABLE `room_category`
  ADD PRIMARY KEY (`roomname`(100));

ALTER TABLE `manager`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

