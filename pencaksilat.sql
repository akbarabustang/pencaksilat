/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : pencaksilat

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-11-27 09:31:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`),
  FULLTEXT KEY `nama` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', 'Admin Full Control', 'admin');
INSERT INTO `admin` VALUES ('2', 'user', 'user', 'User Frontdesk', 'user');
INSERT INTO `admin` VALUES ('3', 'drower', 'drower', 'Drower Pertandingan', 'drower');

-- ----------------------------
-- Table structure for drowing
-- ----------------------------
DROP TABLE IF EXISTS `drowing`;
CREATE TABLE `drowing` (
  `id_drowing` int(5) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(50) NOT NULL,
  `pool` varchar(5) NOT NULL,
  `list_peserta` text NOT NULL,
  PRIMARY KEY (`id_drowing`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of drowing
-- ----------------------------
INSERT INTO `drowing` VALUES ('4', '1', '', 'a:1:{s:2:\"A-\";a:10:{i:1;a:2:{s:10:\"id_peserta\";s:2:\"29\";s:12:\"id_kontingen\";s:2:\"11\";}i:2;a:2:{s:10:\"id_peserta\";s:1:\"4\";s:12:\"id_kontingen\";s:1:\"3\";}i:3;a:2:{s:10:\"id_peserta\";s:2:\"27\";s:12:\"id_kontingen\";s:2:\"16\";}i:4;a:2:{s:10:\"id_peserta\";s:2:\"25\";s:12:\"id_kontingen\";s:1:\"6\";}i:5;a:2:{s:10:\"id_peserta\";s:1:\"1\";s:12:\"id_kontingen\";s:1:\"1\";}i:6;a:2:{s:10:\"id_peserta\";s:1:\"6\";s:12:\"id_kontingen\";s:1:\"5\";}i:7;a:2:{s:10:\"id_peserta\";s:2:\"26\";s:12:\"id_kontingen\";s:2:\"30\";}i:8;a:2:{s:10:\"id_peserta\";s:2:\"28\";s:12:\"id_kontingen\";s:2:\"27\";}i:9;a:2:{s:10:\"id_peserta\";s:1:\"5\";s:12:\"id_kontingen\";s:1:\"4\";}i:10;a:2:{s:10:\"id_peserta\";s:1:\"2\";s:12:\"id_kontingen\";s:1:\"2\";}}}');

-- ----------------------------
-- Table structure for kelas_all
-- ----------------------------
DROP TABLE IF EXISTS `kelas_all`;
CREATE TABLE `kelas_all` (
  `id_kelas` int(5) NOT NULL AUTO_INCREMENT,
  `isi_kelas` text NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kelas_all
-- ----------------------------
INSERT INTO `kelas_all` VALUES ('1', 'Kelas A ( 45 - 50 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('2', 'Kelas B ( 50 - 55 Kg )  Putra Kumite');
INSERT INTO `kelas_all` VALUES ('3', 'Kelas C ( 55 - 60 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('4', 'Kelas D ( 60 - 65 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('5', 'Kelas E ( 65 - 70 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('6', 'Kelas F ( 70 - 75 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('7', 'Kelas G ( 75 - 80 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('8', 'Kelas H ( 80 - 85 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('9', 'Kelas I ( 85 - 90 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('10', 'Kelas J ( 90 - 95 Kg ) Putra Kumite');
INSERT INTO `kelas_all` VALUES ('11', 'Kelas A ( 45 - 50 Kg ) Putri');
INSERT INTO `kelas_all` VALUES ('12', 'Kelas B ( 50 - 55 Kg ) Putri');
INSERT INTO `kelas_all` VALUES ('13', 'Kelas C ( 55 - 60 Kg ) Putri');
INSERT INTO `kelas_all` VALUES ('14', 'Kelas D ( 60 - 65 Kg ) Putri');
INSERT INTO `kelas_all` VALUES ('15', 'Kelas E ( 65 - 70 Kg ) Putri');
INSERT INTO `kelas_all` VALUES ('16', 'Kelas F ( 70 - 75 Kg ) Putri');
INSERT INTO `kelas_all` VALUES ('17', 'Beregu Putra Kata');
INSERT INTO `kelas_all` VALUES ('18', 'Kelas F ( 45KG - 50KG ) Putri');

-- ----------------------------
-- Table structure for kontingen_all
-- ----------------------------
DROP TABLE IF EXISTS `kontingen_all`;
CREATE TABLE `kontingen_all` (
  `id_kontingen` int(11) NOT NULL AUTO_INCREMENT,
  `isi_kontingen` varchar(100) NOT NULL,
  `nama_official` varchar(50) NOT NULL,
  `kontak_official` varchar(13) NOT NULL,
  PRIMARY KEY (`id_kontingen`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kontingen_all
-- ----------------------------
INSERT INTO `kontingen_all` VALUES ('1', 'Jawa Timur', 'Agus', '0828128931344');
INSERT INTO `kontingen_all` VALUES ('2', 'Jawa Barat', 'Diki', '08231837437');
INSERT INTO `kontingen_all` VALUES ('3', 'Jawa Tengah', 'Basuki', '08213899379');
INSERT INTO `kontingen_all` VALUES ('4', 'Sulawesi Selatan', 'Dian', '08213982993');
INSERT INTO `kontingen_all` VALUES ('5', 'Sulawesi Tengah', 'Putra', '08197119838');
INSERT INTO `kontingen_all` VALUES ('6', 'Aceh', 'Sumardi', '082292313271');
INSERT INTO `kontingen_all` VALUES ('7', 'Sumatera Utara', 'Sulastri', '082292313271');
INSERT INTO `kontingen_all` VALUES ('8', 'Sumatera Barat', '-', '-');
INSERT INTO `kontingen_all` VALUES ('9', 'Riau', '-', '-');
INSERT INTO `kontingen_all` VALUES ('10', 'Kepulauan Riau', '-', '-');
INSERT INTO `kontingen_all` VALUES ('11', 'Jambi', '-', '-');
INSERT INTO `kontingen_all` VALUES ('12', 'Bengkulu', '-', '-');
INSERT INTO `kontingen_all` VALUES ('13', 'Sumatera Selatan', '-', '-');
INSERT INTO `kontingen_all` VALUES ('14', 'Kepulauan Bangka Belitung', '-', '-');
INSERT INTO `kontingen_all` VALUES ('15', 'Lampung', '-', '-');
INSERT INTO `kontingen_all` VALUES ('16', 'Banten', '-', '-');
INSERT INTO `kontingen_all` VALUES ('17', 'DKI Jakarta', '-', '-');
INSERT INTO `kontingen_all` VALUES ('18', 'DI Yogyakarta', '-', '-');
INSERT INTO `kontingen_all` VALUES ('19', 'Bali', '-', '-');
INSERT INTO `kontingen_all` VALUES ('20', 'Nusa Tenggara Barat', '-', '-');
INSERT INTO `kontingen_all` VALUES ('21', 'Nusa Tenggara Timur', '-', '-');
INSERT INTO `kontingen_all` VALUES ('22', 'Kalimantan Utara', '-', '-');
INSERT INTO `kontingen_all` VALUES ('23', 'Kalimantan Barat', '-', '-');
INSERT INTO `kontingen_all` VALUES ('24', 'Kalimantan Tengah', '-', '-');
INSERT INTO `kontingen_all` VALUES ('25', 'Kalimantan Selatan', '-', '-');
INSERT INTO `kontingen_all` VALUES ('26', 'Kalimantan Timur', '-', '-');
INSERT INTO `kontingen_all` VALUES ('27', 'Gorontalo', '-', '-');
INSERT INTO `kontingen_all` VALUES ('28', 'Sulawesi Utara', '-', '-');
INSERT INTO `kontingen_all` VALUES ('29', 'Sulawesi Barat', '-', '-');
INSERT INTO `kontingen_all` VALUES ('30', 'Sulawesi Tenggara', '-', '-');
INSERT INTO `kontingen_all` VALUES ('31', 'Maluku Utara', '-', '-');
INSERT INTO `kontingen_all` VALUES ('32', 'Maluku', '-', '-');
INSERT INTO `kontingen_all` VALUES ('33', 'Papua Barat', '-', '-');
INSERT INTO `kontingen_all` VALUES ('34', 'Papua', '-', '-');

-- ----------------------------
-- Table structure for perguruan_all
-- ----------------------------
DROP TABLE IF EXISTS `perguruan_all`;
CREATE TABLE `perguruan_all` (
  `id_perguruan` int(5) NOT NULL AUTO_INCREMENT,
  `isi_perguruan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_perguruan`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perguruan_all
-- ----------------------------
INSERT INTO `perguruan_all` VALUES ('1', 'PSHT');
INSERT INTO `perguruan_all` VALUES ('2', 'Tapak Suci');
INSERT INTO `perguruan_all` VALUES ('3', 'Pagar Nusa');
INSERT INTO `perguruan_all` VALUES ('4', 'PSH');
INSERT INTO `perguruan_all` VALUES ('5', 'Perisai Diri');
INSERT INTO `perguruan_all` VALUES ('6', 'Perisai Putih');
INSERT INTO `perguruan_all` VALUES ('7', 'Phashadja Mataram');
INSERT INTO `perguruan_all` VALUES ('8', 'Perguruan Pencak Indonesia Harimurti');
INSERT INTO `perguruan_all` VALUES ('9', 'Persatuan Pencak Silat Indonesia');
INSERT INTO `perguruan_all` VALUES ('10', 'Persatuan Pencak Silat Putra Betawi');
INSERT INTO `perguruan_all` VALUES ('11', 'Keluarga Pencak Silat Nusantara');
INSERT INTO `perguruan_all` VALUES ('12', 'Merpati Putih');
INSERT INTO `perguruan_all` VALUES ('13', 'Satria Muda Indonesia');
INSERT INTO `perguruan_all` VALUES ('14', 'ASAD');
INSERT INTO `perguruan_all` VALUES ('15', 'Pencak Silat Tenaga Dasar Indonesia');

-- ----------------------------
-- Table structure for peserta
-- ----------------------------
DROP TABLE IF EXISTS `peserta`;
CREATE TABLE `peserta` (
  `id_peserta` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `id_kontingen` varchar(50) NOT NULL,
  `berat_badan` int(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `waktu_input` datetime NOT NULL,
  `perguruan` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `id_kelas` varchar(100) NOT NULL,
  `info_beregu` text NOT NULL,
  `input_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id_peserta`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of peserta
-- ----------------------------
INSERT INTO `peserta` VALUES ('1', 'Diki', '1', '47', '2018-11-22', '2018-11-21 12:11:50', '1', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('2', 'Supri', '2', '46', '2018-11-23', '2018-11-21 12:11:56', '2', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'User Frontdesk');
INSERT INTO `peserta` VALUES ('4', 'Afid', '3', '47', '2018-11-22', '2018-11-21 01:11:51', '1', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'User Frontdesk');
INSERT INTO `peserta` VALUES ('5', 'Novrijal', '4', '47', '2018-11-20', '2018-11-21 01:11:03', '1', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'User Frontdesk');
INSERT INTO `peserta` VALUES ('6', 'Haidir', '5', '48', '2018-11-22', '2018-11-21 01:11:42', '3', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'User Frontdesk');
INSERT INTO `peserta` VALUES ('8', 'Nur', '2', '52', '2018-11-27', '2018-11-21 04:11:44', '2', 'Putra', '2', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('9', 'Hadi', '3', '51', '2018-11-07', '2018-11-21 04:11:16', '3', 'Putra', '2', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('10', 'Sugeng', '4', '54', '2018-11-14', '2018-11-21 04:11:51', '1', 'Putra', '2', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('18', 'Aji,Bangkit,Pamungkas', '1', '60', '2018-11-04', '2018-11-23 03:11:49', '1', 'Putra', '17', 'a:3:{i:1;a:2:{s:4:\"nama\";s:8:\"Aji Seto\";s:9:\"tgl_lahir\";s:10:\"2018-11-22\";}i:2;a:2:{s:4:\"nama\";s:8:\"Bangkit \";s:9:\"tgl_lahir\";s:10:\"2018-11-23\";}i:3;a:2:{s:4:\"nama\";s:11:\"Pamungkas s\";s:9:\"tgl_lahir\";s:10:\"2018-11-24\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('19', 'Hanifan,Yudani,Kusumah', '2', '65', '2018-11-23', '2018-11-23 03:11:35', '2', 'Putra', '17', 'a:3:{i:1;a:2:{s:4:\"nama\";s:7:\"Hanifan\";s:9:\"tgl_lahir\";s:10:\"2018-11-23\";}i:2;a:2:{s:4:\"nama\";s:6:\"Yudani\";s:9:\"tgl_lahir\";s:10:\"2018-11-23\";}i:3;a:2:{s:4:\"nama\";s:7:\"Kusumah\";s:9:\"tgl_lahir\";s:10:\"2018-11-23\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('20', 'Desta', '1', '56', '2018-11-27', '2018-11-26 07:11:45', '1', 'Putra', '3', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('21', 'Dani', '2', '57', '2018-11-12', '2018-11-26 07:11:42', '2', 'Putra', '3', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('22', 'Yuda', '3', '58', '2018-11-12', '2018-11-26 07:11:21', '1', 'Putra', '3', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('24', 'diki irawan', '1', '68', '2018-11-12', '2018-11-26 08:11:05', '1', 'Putra', '5', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'User Frontdesk');
INSERT INTO `peserta` VALUES ('25', 'Sabri', '6', '46', '2018-11-12', '2018-11-26 09:11:55', '6', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('26', 'Agus', '30', '48', '2018-11-22', '2018-11-26 09:11:22', '15', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('27', 'Suge', '16', '48', '2018-11-20', '2018-11-26 09:11:54', '3', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('28', 'Santo', '27', '47', '2018-11-28', '2018-11-26 09:11:35', '4', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');
INSERT INTO `peserta` VALUES ('29', 'Doni', '11', '49', '2018-11-13', '2018-11-26 09:11:14', '2', 'Putra', '1', 'a:3:{i:1;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:2;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}i:3;a:2:{s:4:\"nama\";s:0:\"\";s:9:\"tgl_lahir\";s:0:\"\";}}', 'Admin Full Control');

-- ----------------------------
-- Table structure for syst_info
-- ----------------------------
DROP TABLE IF EXISTS `syst_info`;
CREATE TABLE `syst_info` (
  `syst_id` int(11) NOT NULL AUTO_INCREMENT,
  `syst_name` text NOT NULL,
  `syst_help` text,
  `event_name` text NOT NULL,
  `event_date` text NOT NULL,
  `event_notes` text,
  PRIMARY KEY (`syst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of syst_info
-- ----------------------------
INSERT INTO `syst_info` VALUES ('1', 'Kejuaraan Pencak Silat', '<div id=\"penting\">\n<p class=\"lead page-header text-center\">\n # Penggunaan Sistem <br>\n <strong>! PENTING</strong> : Pastikan Data awal terisi <br>\n <ul type=\"square\">\n   <li>Perguruan</li>\n   <li>Kontingen</li>\n   <li>Kelas</li>\n </ul>\n <strong>! ERROR</strong> : Jika data awal belum terisi mungkin akan terjadi error sistem \n</p>\n</div>\n<hr>\n\n<div id=\"export-excel\">\n<p class=\"lead page-header text-center\">\n # Cara Export Semua Data ke Excel\n</p>\n<br>\n<ol type=\"1\">\n  <li>Buka <code>http://localhost/phpmyadmin</code> dari Server</li>\n  <li>Pilih database event (misal: skc_solocup)</li>\n <li>Klik tab SQL</li>\n <li>Paste Code dibawah ini: <br>\n  <pre>\n <code>  \n  SELECT peserta.nama AS \"Nama Peserta\", \n kontingen_all.isi_kontingen AS \"Kontingen\", \n  peserta.tgl_lahir AS \"Tgl Lahir\", \n  peserta.berat_badan AS \"Berat (Kg)\", \n perguruan_all.isi_perguruan AS \"Perguruan\", \n  kelas_all.isi_kelas AS \"Kelas\", \n  peserta.jk AS \"Jenis Kelamin\"     \n  FROM peserta \n INNER JOIN kelas_all\n  ON kelas_all.id_kelas=peserta.id_kelas\n  INNER JOIN kontingen_all\n  ON kontingen_all.id_kontingen=peserta.id_kontingen\n  INNER JOIN perguruan_all\n  ON perguruan_all.id_perguruan=peserta.perguruan\n </code>\n </pre>    \n  Lalu klik <kbd>Go</kbd>\n <br>\n  </li>\n <li>Setelah keluar hasilnya, pada bagian Query Result Operation (Operasi hasil kueri) -> Klik Export</li>\n <li>Pilihan Export :\n  <pre>\n <code>  \n  Export Method   : Custom - display all possible options\n Rows      : Dump all rows\n Output      : Save output to a file\n Format      : OpenDocument Spreadsheet\n  Format Specifix Options : Replace Null with = Null\n            Put Columns Name in the first Row (Beri Ceklist)\n  </code>\n </pre>                        \n  Lalu Klik <kbd>Go</kbd>\n <br>\n  </li>\n <li>Akan Ter-download sebuah dokumen .ods, buka dengan MS Excel 2013</li>\n</ol>\n</div>', 'Kejuaraan Nasional', '12 - 15 November 2018', null);
