-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 03:59 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `invoice_number` int(11) NOT NULL,
  `event_date` date DEFAULT NULL,
  `num_guests` int(11) DEFAULT NULL,
  `fk_client` int(11) DEFAULT NULL,
  `fk_food` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`invoice_number`, `event_date`, `num_guests`, `fk_client`, `fk_food`) VALUES
(1, '2017-11-30', 30, 3, 1),
(2, '0000-00-00', 5, 3, 3),
(3, '0000-00-00', 5, 3, 1),
(4, '0000-00-00', 5, 3, 1),
(5, '2017-09-12', 20, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `family_name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `fk_suburb` varchar(30) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `first_name`, `family_name`, `address`, `fk_suburb`, `phone`, `comment`) VALUES
(1, 'Sam', 'Kelly', '12 Gregson Road', 'Armadale', '0423568911', 'great food excellent service'),
(2, 'Elba', 'Colyer', '656 Lake Street', 'Leederville', '0435669985', 'Arrived late, OK food'),
(3, 'Rebekah', ' Batiste', '3 Orchard Avenue', 'Leederville', '0432659874', 'Great service'),
(4, 'Tonita', 'Dunson', '299 Hillcrest Drive', 'City Beach', '0485478545', 'Would recommend to my friends'),
(5, 'Roseanne', 'Amos', '821 Briarwood Drive', 'Mount Hawthorn', '0466998855', 'great food excellent service'),
(6, 'Kasey', 'Mckinnie', '100 Aspen Court', 'Hillarys', '0421525148', 'Great service'),
(7, 'Ping', 'Shinn', '284 Jefferson Court', 'Cottesloe', '0432632658', 'great food excellent service'),
(8, 'Raymond', 'Hoefle', '463 Winding Way', 'Claremont', '0498989898', 'Would recommend to my friends'),
(9, 'Inez', 'Kirst', '178 Creek Road', 'Karrinyup', '0423678854', 'Arrived early, very clean, nice food'),
(10, 'Alexis', 'Santee', '999 Elizabeth Street', 'Hamersley', '0411225511', 'great food excellent service'),
(11, 'Myra', 'Royals', '699 Windsor Court', 'Mount Hawthorn', '0423568945', 'Great service'),
(12, 'Kenisha', 'Kennerly', '806 Street Waltham', 'North Beach', '0412457898', 'Nice, friendly, good food'),
(13, 'Pearl', 'Shawver', '992 West Street', 'Hillarys', '0423987488', 'great food excellent service'),
(14, 'Georgene', 'Tindle', '819 Forest Drive', 'Cottesloe', '0455881254', 'Arrived early, very clean, nice food'),
(15, 'Pierre', 'Harless', '889 Chapel Street', 'City Beach', '0405365896', 'Nice, friendly, good food'),
(16, 'Hyman', 'Claywell', '928 Cedar Court', 'Karrinyup', '0406258954', 'Would recommend to my friends'),
(17, 'Gordon', 'Doten', '136 Logansport Rd', 'Wembley Downs', '0407985637', 'Best food ever'),
(18, 'Mohammad', 'Braverman', '17 Villa Rica', 'Claremont', '0407658818', 'Arrived late, OK food'),
(19, 'Douglass', 'Dorman', '304 Summit Avenue', 'Hillarys', '0408874548', 'Nice, friendly, good food'),
(20, 'Millie', 'Repass', '147 Highland Drive', 'North Beach', '0401522346', 'Best food ever'),
(21, 'Shena', 'Studdard', '472 Park Place', 'Karrinyup', '0401365276', 'Would recommend to my friends'),
(22, 'Olimpia', 'Bartel', '853 Madison Street', 'Wembley Downs', '0402215515', 'Best food ever'),
(23, 'Shawna', 'Cosgrove', '963 Colonial Avenue', 'Cottesloe', '0402558856', 'Nice, friendly, good food'),
(24, 'Classie', 'Frary', '101 Hickory Street', 'Mount Hawthorn', '0409774498', 'Would recommend to my friends'),
(25, 'Toya', 'Helvey', '476 Ridge Street', 'West Perth', '0409445509', 'Arrived early, very clean, nice food'),
(26, 'Janna', 'Coby', '166 Olive Street', 'North Beach', '0406332507', 'Poor service, Late'),
(27, 'Ed', 'Kung', '235 Brown Street', 'East Perth', '0405225403', 'Would recommend to my friends'),
(28, 'Agripina', 'Roth', '81 Beech Street', 'Osborne Park', '0404448507', 'Arrived early, very clean, nice food'),
(29, 'Tammara', 'Suriel', '699 Marshall Street', 'Cottesloe', '0403688506', 'Arrived late, OK food'),
(30, 'Johnson', 'Frailey', '832 6th Street West', 'Hillarys', '0402455803', 'Poor service, Late'),
(31, 'Lenard', 'Eckhardt', '138 Atlantic Avenue', 'Claremont', '0408996504', 'Arrived early, very clean, nice food'),
(32, 'Carol', 'Cardenas', '870 Adams Avenue', 'Wembley Downs', '0406266801', 'Nice presentation'),
(33, 'Carry', 'Laguna', '519 Street North', 'Mount Hawthorn', '0404344502', 'Arrived early, very clean, nice food'),
(34, 'Yuki', 'Cage', '457 York Road', 'West Perth', '0405336509', 'Poor service, Late'),
(35, 'Wilbert', 'Crafford', '272 Oxford Court', 'Hillarys', '0405558790', 'Would recommend to my friends'),
(36, 'Napoleon', 'Crowell', '617 North Street', 'East Perth', '0402455780', 'Nice presentation'),
(37, 'Raven', 'Croke', '131 Holly Drive', 'City Beach', '0401455870', 'Arrived early, very clean, nice food'),
(38, 'Calvin', 'Dingus', '807 West Street', 'Osborne Park', '040919508', 'Arrived late, OK food'),
(39, 'Lewis', 'Steely', '726 Grant Avenue', 'Wembley Downs', '0407166870', 'Nice, friendly, good food'),
(40, 'Jesusa', 'Briggs', '442 Cedar Avenue', 'Cottesloe', '0405144840', 'Arrived early, very clean, nice food'),
(41, 'Emilie', 'Radcliffe', '80 7th Street', 'Hillarys', '0403499210', 'Nice presentation'),
(42, 'Hope', 'Calloway', '395 Belmont Avenue', 'Karrinyup', '0402388520', 'Would recommend to my friends'),
(43, 'Mallory', 'Laws', '287 Amherst Street', 'Belmont', '0404115730', 'great food excellent service'),
(44, 'Truman', 'Bergen', '528 Pin Oak Drive', 'Wembley Downs', '0406933880', 'Arrived early, very clean, nice food'),
(45, 'Yetta', 'Billips', '821 Garfield Avenue', 'West Perth', '0408355780', 'Nice presentation'),
(46, 'Donna', 'Renfrew', '510 Olive Street', 'Mount Hawthorn', '0405433880', 'Would recommend to my friends'),
(47, 'Jin', 'Tisch', '618 Street West', 'City Beach', '0430199460', 'Great service'),
(48, 'Jannette', 'Keep', '680 Crescent Street', 'East Perth', '0460117606', 'Arrived early, very clean, nice food'),
(49, 'Myesha', 'Glascock', '551 Jackson Street', 'Hillarys', '0480993404', 'Nice presentation'),
(50, 'Deshawn', 'Heinemann', '438 5th Street', 'Claremont', '0470344804', 'Best food ever'),
(51, 'aaaa', 'aaa', '1233fdghb', 'Cottesloe', '124324523', 'hahahaha'),
(100, 'Homer', 'Simpson', '123 Fake street', 'Albany', '12345678', 'Haha');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id_food` int(11) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `cost` double(10,2) DEFAULT NULL,
  `size` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id_food`, `description`, `cost`, `size`) VALUES
(1, 'COCKTAIL MENU', 15.95, 'sml'),
(2, 'COCKTAIL MENU', 17.95, 'med'),
(3, 'COCKTAIL MENU', 19.95, 'lrg'),
(4, 'CORPORATE MENU', 16.95, 'sml'),
(5, 'CORPORATE MENU', 18.95, 'med'),
(6, 'CORPORATE MENU', 20.95, 'lrg'),
(7, 'WEDDING MENU', 25.95, 'sml'),
(8, 'WEDDING MENU', 29.95, 'med'),
(9, 'WEDDING MENU', 39.95, 'lrg'),
(10, 'PLATTER MENU', 11.95, 'sml'),
(11, 'PLATTER MENU', 12.95, 'med'),
(12, 'PLATTER MENU', 13.95, 'lrg'),
(13, 'FORMAL DINING MENU', 22.95, 'sml'),
(14, 'FORMAL DINING MENU', 25.95, 'med'),
(15, 'FORMAL DINING MENU', 29.95, 'lrg'),
(16, 'GOURMET BUFFET MENU', 11.95, 'sml'),
(17, 'GOURMET BUFFET MENU', 13.95, 'med'),
(18, 'GOURMET BUFFET MENU', 16.95, 'lrg'),
(19, 'BREAKFAST-MENU', 8.95, 'sml'),
(20, 'BREAKFAST-MENU', 10.95, 'med'),
(21, 'BREAKFAST-MENU', 14.95, 'lrg'),
(22, 'CHRISTMAS MENU', 35.95, 'sml'),
(23, 'CHRISTMAS MENU', 48.95, 'med'),
(24, 'CHRISTMAS MENU', 53.95, 'lrg'),
(25, 'HIGH TEA MENU', 23.95, 'sml'),
(26, 'HIGH TEA MENU', 29.95, 'med'),
(27, 'HIGH TEA MENU', 27.95, 'lrg'),
(28, 'BBQ-PACK MENU', 5.95, 'sml'),
(29, 'BBQ-PACK MENU', 7.95, 'med'),
(30, 'BBQ-PACK MENU', 10.95, 'lrg'),
(31, 'LUNCHBOX MENU', 9.95, 'sml'),
(32, 'LUNCHBOX MENU', 11.95, 'med'),
(33, 'LUNCHBOX MENU', 13.95, 'lrg');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `suburb_name` varchar(30) NOT NULL,
  `postcode` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`suburb_name`, `postcode`) VALUES
('Agnew', '6435'),
('Albany', '6332'),
('Alkimos', '6038'),
('Applecross', '6153'),
('Ardath', '6419'),
('Armadale', '6112'),
('Augusta', '6290'),
('Australind', '6233'),
('Baandee', '6412'),
('Babakin', '6428'),
('Bakers Hill', '6562'),
('Balcatta', '6021'),
('Baldivis', '6171'),
('Balingup', '6253'),
('Ballajura', '6066'),
('Ballidu', '6606'),
('Banksia Grove', '6031'),
('Barrabup', '6275'),
('Barrow Island', '6712'),
('Bassendean', '6054'),
('Bayswater', '6053'),
('Beechboro', '6063'),
('Beedelup', '6260'),
('Beelerup', '6239'),
('Belmont', '6104'),
('Bencubbin', '6477'),
('Benger', '6223'),
('Benjaberring', '6463'),
('Bentley', '6102'),
('Beverley', '6304'),
('Bicton', '6157'),
('Bindi Bindi', '6574'),
('Bindoon', '6502'),
('Bodallin', '6424'),
('Boddington', '6390'),
('Bolgart', '6568'),
('Boolading', '6392'),
('Booragoon', '6154'),
('Boranup', '6286'),
('Borden', '6338'),
('Boyanup', '6237'),
('Boyup Brook', '6244'),
('Bridgetown', '6255'),
('Brigadoon', '6069'),
('Brookton', '6306'),
('Broome', '6725'),
('Broomehill', '6318'),
('Bruce Rock', '6418'),
('Brunswick', '6224'),
('Bull Creek', '6149'),
('Bullaring', '6373'),
('Bullfinch', '6484'),
('Bunbury', '6230'),
('Buntine', '6613'),
('Burakin', '6467'),
('Burekup', '6227'),
('Burns Beach', '6028'),
('Burracoppin', '6421'),
('Burswood', '6100'),
('Busselton', '6280'),
('Butler', '6036'),
('Byford', '6122'),
('Cable Beach', '6726'),
('Cadoux', '6466'),
('Canna', '6627'),
('Canning Vale', '6155'),
('Cannington', '6107'),
('Cape Le Grand', '6450'),
('Capel', '6271'),
('Carabooda', '6033'),
('Carlisle', '6101'),
('Carnarvon', '6701'),
('Carrabin', '6423'),
('Cervantes', '6511'),
('Chidlow', '6556'),
('Christmas Island', '6798'),
('City Beach', '6015'),
('Clackline', '6564'),
('Claremont', '6010'),
('Clarkson', '6030'),
('Cleary', '6472'),
('Cloverdale', '6105'),
('Cockatoo Island', '6731'),
('Collie', '6225'),
('Como', '6152'),
('Coogee', '6166'),
('Coolgardie', '6429'),
('Coolup', '6214'),
('Coomberdale', '6512'),
('Corrigin', '6375'),
('Cottesloe', '6011'),
('Cowcowing', '6485'),
('Cramphorne', '6420'),
('Cranbrook', '6321'),
('Cubbine', '6383'),
('Cue', '6640'),
('Cullacabardee', '6067'),
('Cunderdin', '6407'),
('Dalkeith', '6009'),
('Dampier', '6713'),
('Dandaragan', '6507'),
('Dardanup', '6236'),
('Darlington', '6070'),
('Dawesville', '6210'),
('Denmark', '6333'),
('Derby', '6728'),
('Dianella', '6059'),
('Donnelly River', '6258'),
('Doodlakine', '6411'),
('Dowerin', '6461'),
('Dudinin', '6363'),
('Dukin', '6475'),
('Dumbleyung', '6350'),
('Duncraig', '6023'),
('Dunsborough', '6281'),
('Duranillin', '6393'),
('Dwellingup', '6213'),
('East Fremantle', '6158'),
('East Perth', '6004'),
('Eaton', '6232'),
('Eglinton', '6034'),
('Elabbin', '6490'),
('Emu Point', '6330'),
('Eneabba', '6518'),
('Eucla', '6443'),
('Exmouth', '6707'),
('Fitzroy Crossing', '6765'),
('Forrestfield', '6058'),
('Frankland', '6396'),
('Fremantle', '6160'),
('Gabbin', '6476'),
('Gairdner', '6337'),
('Gascoyne Junction', '6705'),
('Geraldton', '6531'),
('Gibson', '6448'),
('Gingin', '6503'),
('Girrawheen', '6064'),
('Glen Forrest', '6071'),
('Gnangara', '6065'),
('Golden Bay', '6174'),
('Goldsworthy', '6723'),
('Goodlands', '6468'),
('Goomalling', '6460'),
('Gosnells', '6110'),
('Gracetown', '6284'),
('Grass Patch', '6446'),
('Grass Valley', '6403'),
('Green Head', '6514'),
('Greenbushes', '6254'),
('Greenmount', '6056'),
('Guildford', '6055'),
('Gunyidi', '6513'),
('Halls Creek', '6770'),
('Hamersley', '6022'),
('Harrismith', '6361'),
('Harvey', '6220'),
('High Wycombe', '6057'),
('Highbury', '6313'),
('Hill River', '6521'),
('Hillarys', '6025'),
('Hindmarsh', '6462'),
('Hines Hill', '6413'),
('Hoddys Well', '6566'),
('Hopetoun', '6348'),
('Hyden', '6359'),
('Ikewa', '6522'),
('Inglewood', '6052'),
('Israelite Bay', '6452'),
('Jandakot', '6164'),
('Jarrahdale', '6124'),
('Jennacubbine', '6401'),
('Joondalup', '6027'),
('Jurien Bay', '6516'),
('Kadathinni', '6519'),
('Kalamunda', '6076'),
('Kalgoorlie', '6430'),
('Kambalda', '6442'),
('Kardinya', '6163'),
('Karlgarin', '6358'),
('Karnup', '6176'),
('Karratha', '6714'),
('Karridale', '6288'),
('Karrinyup', '6018'),
('Katanning', '6317'),
('Kebaringup', '6335'),
('Kellerberrin', '6410'),
('Kelmscott', '6111'),
('Kendenup', '6323'),
('Keysbrook', '6126'),
('Kingsley', '6026'),
('Kojonup', '6395'),
('Kondinin', '6367'),
('Kondut', '6605'),
('Koojan', '6510'),
('Koolan Island', '6733'),
('Koolyanobbing', '6427'),
('Kulin', '6365'),
('Kulja', '6470'),
('Kununoppin', '6489'),
('Kununurra', '6743'),
('Kwolyin', '6385'),
('Lake Clifton', '6215'),
('Lake Grace', '6353'),
('Lake King', '6356'),
('Lancelin', '6044'),
('Latham', '6616'),
('Laverton', '6440'),
('Ledge Point', '6043'),
('Leederville', '6007'),
('Leinster', '6437'),
('Leonora', '6438'),
('Lowden', '6240'),
('Lynwood', '6147'),
('Maddington', '6109'),
('Mahogany Creek', '6072'),
('Malaga', '6090'),
('Manmanning', '6465'),
('Maranup', '6256'),
('Marble Bar', '6760'),
('Margaret River', '6285'),
('Marne', '6608'),
('Marvel Loch', '6426'),
('Maya', '6614'),
('Maylands', '6051'),
('Meckering', '6405'),
('Medina', '6167'),
('Meekatharra', '6642'),
('Melville', '6156'),
('Menzies', '6436'),
('Merilup', '6352'),
('Merkanooka', '6625'),
('Merredin', '6415'),
('Miling', '6575'),
('Mirrabooka', '6061'),
('Mogumber', '6506'),
('Monkey Mia', '6537'),
('Mooliabeenee', '6504'),
('Moondyne', '6567'),
('Moorine Rock', '6425'),
('Morley', '6062'),
('Mornington', '6221'),
('Mosman Park', '6012'),
('Moulyinning', '6351'),
('Mount Adams', '6525'),
('Mount Barker', '6324'),
('Mount Hawthorn', '6016'),
('Mount Helena', '6082'),
('Mount Lawley', '6050'),
('Mount Magnet', '6638'),
('Mount Ney', '6447'),
('Muchea', '6501'),
('Mukinbudin', '6479'),
('Mullalyup', '6252'),
('Mullewa', '6630'),
('Mundaring', '6073'),
('Mundijong', '6123'),
('Murdoch', '6150'),
('Nangeenan', '6414'),
('Narembeen', '6369'),
('Narrikup', '6326'),
('Narrogin', '6312'),
('Naval Base', '6165'),
('New Norcia', '6509'),
('Newdegate', '6355'),
('Newlands', '6251'),
('Newman', '6753'),
('North Beach', '6020'),
('North Fremantle', '6159'),
('North Perth', '6006'),
('Northampton', '6535'),
('Northbridge', '6003'),
('Northcliffe', '6262'),
('Nowergup', '6032'),
('Nukarni', '6480'),
('Nullagine', '6758'),
('Nyabing', '6341'),
('Oakajee', '6532'),
('Oakford', '6121'),
('Old Plains', '6569'),
('Onslow', '6710'),
('Osborne Park', '6017'),
('Palmdale', '6328'),
('Pannawonica', '6716'),
('Pantapin', '6384'),
('Paraburdoo', '6754'),
('Parkerville', '6081'),
('Parkeston', '6434'),
('Paynes Find', '6612'),
('Perenjori', '6620'),
('Perth', '6000'),
('Piawaning', '6572'),
('Picton', '6229'),
('Pindar', '6631'),
('Pingaring', '6357'),
('Pingelly', '6308'),
('Pingrup', '6343'),
('Pinjarra', '6208'),
('Pintharuka', '6623'),
('Popanyinning', '6309'),
('Port Hedland', '6721'),
('Port Kennedy', '6172'),
('Qualeup', '6394'),
('Quindanning', '6391'),
('Ravensthorpe', '6346'),
('Redmond', '6327'),
('Riverton', '6148'),
('Rivervale', '6103'),
('Rockingham', '6168'),
('Rocky Gully', '6397'),
('Roebourne', '6718'),
('Roelands', '6226'),
('Rottnest Island', '6161'),
('Safety Bay', '6169'),
('Salmon Gums', '6445'),
('Sandstone', '6639'),
('Sawyers Valley', '6074'),
('Seabird', '6042'),
('Secret Harbour', '6173'),
('Serpentine', '6125'),
('Shackleton', '6386'),
('Shay Gap', '6761'),
('Singleton', '6175'),
('South Fremantle', '6162'),
('South Greenough', '6528'),
('South Hedland', '6722'),
('South Kumminin', '6368'),
('South Perth', '6151'),
('Subiaco', '6008'),
('Tambellup', '6320'),
('Tammin', '6409'),
('Tarcoola Beach', '6530'),
('Tardun', '6628'),
('Telfer', '6762'),
('Tenindewa', '6632'),
('Tenterden', '6322'),
('Thevenard Island', '6711'),
('Thornlie', '6108'),
('Toompup', '6336'),
('Trayning', '6488'),
('Trigg', '6029'),
('Tuart Hill', '6060'),
('Two Rocks', '6037'),
('Victory Heights', '6432'),
('Waddy Forest', '6515'),
('Wagin', '6315'),
('Walgoolan', '6422'),
('Walpole', '6398'),
('Wannamal', '6505'),
('Warburton', '6431'),
('Wardering', '6311'),
('Warwick', '6024'),
('Waterloo', '6228'),
('Wellard', '6170'),
('Welshpool', '6106'),
('Wembley Downs', '6019'),
('West Perth', '6005'),
('Westwood', '6316'),
('Whiteman', '6068'),
('Whittaker', '6207'),
('Wialki', '6473'),
('Wickepin', '6370'),
('Wickham', '6720'),
('Wilga', '6243'),
('Wiluna', '6646'),
('Winchester', '6517'),
('Wittenoom', '6751'),
('Wongan Hills', '6603'),
('Woodridge', '6041'),
('Wooroloo', '6558'),
('Wundowie', '6560'),
('Wyndham', '6740'),
('Xantippe', '6609'),
('Yalgoo', '6635'),
('Yallingup', '6282'),
('Yanchep', '6035'),
('Yarloop', '6218'),
('Yealering', '6372'),
('Yelbeni', '6487'),
('Yerecoin', '6571'),
('York', '6302'),
('Zuytdorp', '6536');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`invoice_number`),
  ADD KEY `fk_client` (`fk_client`),
  ADD KEY `fk_food` (`fk_food`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `fk_suburb` (`fk_suburb`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`suburb_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `invoice_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `boo_cli` FOREIGN KEY (`fk_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `boo_foo` FOREIGN KEY (`fk_food`) REFERENCES `foods` (`id_food`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `sub_loc` FOREIGN KEY (`fk_suburb`) REFERENCES `locations` (`suburb_name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
