/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vaytien24h.vn

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-04 15:40:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_album
-- ----------------------------
DROP TABLE IF EXISTS `tbl_album`;
CREATE TABLE `tbl_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `order` tinyint(2) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_album
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_banner
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------
INSERT INTO `tbl_banner` VALUES ('1', 'Banner 1', 'assets/images/banner/large.jpg', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '1');

-- ----------------------------
-- Table structure for tbl_borrow_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_borrow_group`;
CREATE TABLE `tbl_borrow_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_borrow_group
-- ----------------------------
INSERT INTO `tbl_borrow_group` VALUES ('1', 'Vay theo bảng lương', '0', '1');
INSERT INTO `tbl_borrow_group` VALUES ('2', 'Vay theo cavet xe', null, '1');
INSERT INTO `tbl_borrow_group` VALUES ('3', 'Vay theo bảo hiểm nhân thọ', null, '1');
INSERT INTO `tbl_borrow_group` VALUES ('4', 'Vay theo hóa đơn tiền điện', null, '1');
INSERT INTO `tbl_borrow_group` VALUES ('5', 'Vay theo giấy phép kinh doanh', null, '1');
INSERT INTO `tbl_borrow_group` VALUES ('6', 'Vay theo hợp đồng tín dụng bên tổ chức khác', null, '1');

-- ----------------------------
-- Table structure for tbl_catalog
-- ----------------------------
DROP TABLE IF EXISTS `tbl_catalog`;
CREATE TABLE `tbl_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewmenu` int(11) DEFAULT NULL,
  `viewfilter` int(11) DEFAULT NULL,
  `viewblock` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_catalog
-- ----------------------------
INSERT INTO `tbl_catalog` VALUES ('1', '0', 'Đồ Nam', 'do-nam', null, 'assets/uploads/post/do-nam.jpg', '', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('2', '0', 'Đồ Nữ', 'do-nu', null, 'assets/uploads/post/do-nu.jpg', '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('3', '1', 'Áo', 'ao', null, 'assets/uploads/post/6-1-half.jpg', '', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('4', '1', 'Quần', 'quan', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('5', '1', 'Đồng hồ', 'dong-ho', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('6', '1', 'Thắt lưng da', 'that-lung-da', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('7', '3', 'Áo sơ mi', 'ao-so-mi', null, '', '', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('8', '3', 'Áo phông', 'ao-phong', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('9', '4', 'Quần Jeans', 'quan-jeans', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\\\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('10', '5', 'Citizen', 'citizen', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('11', '5', 'Ferderique constant', 'ferderique-constant', null, null, '', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', 'Đồ nam, thời trang nam, men, fashion men\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('12', '2', 'Áo', 'ao', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('13', '2', 'Quần', 'quan', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('14', '2', 'Đồng hồ', 'dong-ho', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('15', '2', 'Túi xách', 'tui-xach', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('16', '12', 'Áo sơ mi', 'ao-so-mi', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('17', '12', 'Áo phông', 'ao-phong', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('18', '13', 'Quần Jeans', 'quan-jeans', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('19', '13', 'Quần short', 'quan-short', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('20', '14', 'Citizen', 'citizen', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');
INSERT INTO `tbl_catalog` VALUES ('21', '14', 'Ferderique constant', 'ferderique-constant', null, null, '', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', 'Đồ nữ, thời trang nữ, nữ, fashion girl\\\'s', null, null, null, null, '1');

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES ('1', 'Quần jean', 'quan-jean', '', '\r\nQuần jean\r\n\r\n', '1', '1');
INSERT INTO `tbl_category` VALUES ('2', 'Áo phông', 'ao-phong', '', '<p>Quần jean</p>\r\n', '0', '1');
INSERT INTO `tbl_category` VALUES ('5', 'Đầm', 'dam', '', '', null, '1');
INSERT INTO `tbl_category` VALUES ('7', 'Dép', 'dep', '', '', null, '1');
INSERT INTO `tbl_category` VALUES ('8', 'Giầy', 'giay', '', '', null, '1');

-- ----------------------------
-- Table structure for tbl_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE `tbl_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_descript` text COLLATE utf8_unicode_ci,
  `contact` text COLLATE utf8_unicode_ci,
  `footer` text COLLATE utf8_unicode_ci NOT NULL,
  `nick_yahoo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_yahoo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_config
-- ----------------------------
INSERT INTO `tbl_config` VALUES ('1', 'Vaynhanh24h', 'Vaynhanh24h', 'Hướng tới tầm nhìn dài hạn, Vaytien24h quyết tâm đẩy mạnh hình ảnh một ngân hàng luôn nỗ lực cao nhất để phục vụ khách hàng với thái độ thân thiện và tốc độ nhanh nhất.', 'Thường Tín - Hà Nội', '096 954 9903', '', 'tranviethiepdz@gmail.com', null, null, null, 'Vay tín chấp, vay nhanh lãi suất thấp, vay tín chấp thủ tục đơn giản', 'Vay tín chấp, vay nhanh lãi suất thấp, vay tín chấp thủ tục đơn giản', 'tranviethiepdz@gmail.com', '', '', '', 'https://www.facebook.com/profile.php?id=100004701755167', 'https://www.youtube.com/', '', null, null, null);

-- ----------------------------
-- Table structure for tbl_feedback
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedback`;
CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_feedback
-- ----------------------------
INSERT INTO `tbl_feedback` VALUES ('1', 'assets/images/tamtit.jpg', 'Tâm Tít', null, 'Giáo viên bộ môn ngữ văn', 'Tôi đi dọc bờ hồ và cảm nhận sự bình yên đến tĩnh lặng của mặt nước xanh ngắt một màu xanh huyền thoại thật đẹp và nên thơ. Tôi dạo một vòng bờ hồ và cảm nhận được vẻ đẹp nên thơ ...', '0', '1');
INSERT INTO `tbl_feedback` VALUES ('2', 'assets/images/tamtit2.jpg', 'Tâm Tít', null, 'Giáo viên bộ môn ngữ văn', 'Vẻ đẹp, sự cổ kính và cả lịch sử lâu đời khiến tôi càng tò mò bước vào. Ngày tôi đến cũng là ngày các bạn sinh viên tốt nghiệp đại học đến nơi đây để chụp hình lưu lại những hình ảnh đẹp trong một thời gian dài ngồi ghế nhà trường...', '1', '1');
INSERT INTO `tbl_feedback` VALUES ('3', 'assets/images/tamtit.jpg', 'Tâm Tít', null, 'Giáo viên bộ môn ngữ văn', 'Tôi đi dọc bờ hồ và cảm nhận sự bình yên đến tĩnh lặng của mặt nước xanh ngắt một màu xanh huyền thoại thật đẹp và nên thơ. Tôi dạo một vòng bờ hồ và cảm nhận được vẻ đẹp nên thơ ...', null, '1');
INSERT INTO `tbl_feedback` VALUES ('4', 'assets/images/tamtit2.jpg', 'Tâm Tít', null, 'Giáo viên bộ môn ngữ văn', 'Ở Hà Nội tôi thích nhất được dạo phố và ngắm nhìn những kiến trúc vừa hiện đại xen lẫn những nét hoài cổ tạo nên một Hà Nội trong tôi đủ màu sắc. Tôi thích dạo trên những làng nghề như Làng Gốm Bát Tràng  , Làng lụa Vạn Phúc tận mắt chứng kiến họ làm ra những sản phẩm mới thấy sự tỉ mỉ...', null, '1');
INSERT INTO `tbl_feedback` VALUES ('5', 'assets/uploads/banner/tamtit21.jpg', 'Chị Huyền', null, 'Nhân viên kinh doanh', 'Vẻ đẹp, sự cổ kính và cả lịch sử lâu đời khiến tôi càng tò mò bước vào. Ngày tôi đến cũng là ngày các bạn sinh viên tốt nghiệp đại học đến nơi đây để chụp hình lưu lại những hình ảnh đẹp trong một thời gian dài ngồi ghế nhà trường...', null, '1');

-- ----------------------------
-- Table structure for tbl_field
-- ----------------------------
DROP TABLE IF EXISTS `tbl_field`;
CREATE TABLE `tbl_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `require` tinyint(4) DEFAULT NULL,
  `field1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_field
-- ----------------------------
INSERT INTO `tbl_field` VALUES ('1', 'Số tiền muốn vay', 'field1', 'Số tiền muốn vay', 'number', '1', null, '0', '1');
INSERT INTO `tbl_field` VALUES ('2', 'Công ty đang công tác', 'field2', 'Công ty đang công tác', 'text', '1', null, '1', '1');
INSERT INTO `tbl_field` VALUES ('3', 'Field3', 'field3', 'Field', 'text', '1', null, null, '0');
INSERT INTO `tbl_field` VALUES ('4', 'Field4', 'field4', 'Field4', 'text', '1', null, null, '0');
INSERT INTO `tbl_field` VALUES ('5', 'Field5', 'field5', 'Field5', 'text', '1', null, null, '0');
INSERT INTO `tbl_field` VALUES ('6', 'Field6', 'field6', 'Field6', 'text', '1', null, null, '0');
INSERT INTO `tbl_field` VALUES ('7', 'Field7', 'field7', 'Field7', 'text', '1', null, null, '0');
INSERT INTO `tbl_field` VALUES ('8', 'Field', 'field8', 'Field', 'text', '1', null, null, '0');

-- ----------------------------
-- Table structure for tbl_gallery
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_gallery
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_loan_registration
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loan_registration`;
CREATE TABLE `tbl_loan_registration` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmtnd` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `number` float DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field7` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `field8` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `cdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isactive` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_loan_registration
-- ----------------------------
INSERT INTO `tbl_loan_registration` VALUES ('1', 'Nguyễn Văn Chung', null, '0123456789', 'Quang Trung', 'Hà Nội', '1', '10000000', 'FPT', '10000000', 'FPT', null, null, null, null, null, null, '1', '2018-03-14 01:11:23', '1');
INSERT INTO `tbl_loan_registration` VALUES ('2', 'Hoàng Hải', null, '0123456789', 'Hải Phòng', 'Hải Phòng', '2', '20000000', 'INET', '20000000', 'INET', null, null, null, null, null, null, '2', '2018-03-14 01:50:42', '1');
INSERT INTO `tbl_loan_registration` VALUES ('3', 'Trần Viết Hiệp', null, '0969549903', 'Thường Tín', 'Hà Nội', '3', null, null, '20000000', 'INET', null, null, null, null, null, null, null, '2018-03-28 19:03:37', '1');
INSERT INTO `tbl_loan_registration` VALUES ('5', 'Trần Viết Hiệp', null, '0969549903', 'Thường Tín', 'Hà Nội', '4', null, null, '20000000', 'INET', null, null, null, null, null, null, null, '2018-03-28 19:29:05', '1');
INSERT INTO `tbl_loan_registration` VALUES ('6', 'Trần Viết Hiệp', null, '0969549903', 'Thường Tín', 'TP Hồ Chí Minh', '2', null, null, '20000000', 'INET', null, null, null, null, null, null, null, '2018-03-28 19:44:02', '1');
INSERT INTO `tbl_loan_registration` VALUES ('9', 'Trần Viết Hiệp', null, '0969549903', 'Thường Tín', 'TP Hồ Chí Minh', '2', null, null, '20000000', 'FPT', null, null, null, null, null, null, null, '2018-03-28 20:14:46', '1');
INSERT INTO `tbl_loan_registration` VALUES ('16', 'Trần Viết Hiệp', null, '0969549903', 'Thường Tín', 'TP Hồ Chí Minh', '2', null, null, '20000000', 'FPT', null, null, null, null, null, null, null, '2018-03-28 20:28:28', '1');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view_type` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `cata_id` int(11) NOT NULL,
  `post_group_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL,
  `isactive` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', '0', 'Trang chủ', 'trang-chu', 'link', '0', '0', '0', 'http://localhost/vaytien24h.vn/', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('2', '0', 'Vay tín chấp', 'vay-tin-chap', 'category', '0', '2', '0', '', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('3', '0', 'Giới thiệu', 'gioi-thieu', 'category', '0', '1', '0', '', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('4', '0', 'Liên hệ', 'lien-he', 'link', '0', '0', '0', 'http://localhost/vaytien24h.vn/lien-he', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('5', '2', 'Vay tín chấp Đồng Nai', 'vay-tin-chap-dong-nai', 'post', '0', '0', '1', '', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('6', '2', 'Vay theo cavet xe', 'vay-theo-cavet-xe', 'post', '0', '0', '3', '', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('7', '2', 'Vay theo hóa đơn tiền điện', 'vay-theo-hoa-don-tien-dien', 'post', '0', '0', '4', '', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('8', '2', 'Vay theo hợp đồng bảo hiểm nhân thọ', 'vay-theo-hop-dong-bao-hiem-nhan-tho', 'post', '0', '0', '7', '', '', '0', '1');
INSERT INTO `tbl_menu` VALUES ('9', '2', 'Vay theo bảng lương - Hợp đồng lao động', 'vay-theo-bang-luong-hop-dong-lao-dong', 'post', '0', '0', '2', '', '', '0', '1');

-- ----------------------------
-- Table structure for tbl_modtype
-- ----------------------------
DROP TABLE IF EXISTS `tbl_modtype`;
CREATE TABLE `tbl_modtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_modtype
-- ----------------------------
INSERT INTO `tbl_modtype` VALUES ('1', 'mainmenu', 'Main menu');
INSERT INTO `tbl_modtype` VALUES ('2', 'html', 'Use HTML');
INSERT INTO `tbl_modtype` VALUES ('3', 'login', 'Login');
INSERT INTO `tbl_modtype` VALUES ('4', 'banner', 'Banner');
INSERT INTO `tbl_modtype` VALUES ('5', 'latestnews', 'Latest News');
INSERT INTO `tbl_modtype` VALUES ('6', 'footer', 'Footer');
INSERT INTO `tbl_modtype` VALUES ('7', 'hotnews', 'Hot news');
INSERT INTO `tbl_modtype` VALUES ('8', 'support', 'Support');
INSERT INTO `tbl_modtype` VALUES ('9', 'comments', 'comments');
INSERT INTO `tbl_modtype` VALUES ('10', 'catalog', 'Catalog');
INSERT INTO `tbl_modtype` VALUES ('11', 'hotproduct', 'Hot Product');
INSERT INTO `tbl_modtype` VALUES ('12', 'visitcounter', 'Visit Counter');
INSERT INTO `tbl_modtype` VALUES ('13', 'document', 'Document');
INSERT INTO `tbl_modtype` VALUES ('14', 'gpost', 'Group Post');

-- ----------------------------
-- Table structure for tbl_module
-- ----------------------------
DROP TABLE IF EXISTS `tbl_module`;
CREATE TABLE `tbl_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cata_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `order` tinyint(4) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_module
-- ----------------------------
INSERT INTO `tbl_module` VALUES ('1', 'Câu hỏi thường gặp', 'category', null, '10', null, 'box5', '', null, '0', '1');
INSERT INTO `tbl_module` VALUES ('2', '4 Bước đơn giản để thanh toán khoản vay', 'category', null, '11', null, 'box2', '', null, '0', '1');
INSERT INTO `tbl_module` VALUES ('3', 'Tin mới', 'category', null, '2', null, 'box3', '', null, '0', '1');
INSERT INTO `tbl_module` VALUES ('4', 'Dịch vụ của chúng tôi', 'category', null, '12', null, 'box1', '', null, '0', '1');

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstname2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `totalmoney` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `type_payment` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('50', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:44:52', '0', '1');
INSERT INTO `tbl_order` VALUES ('49', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:43:19', '0', '0');
INSERT INTO `tbl_order` VALUES ('48', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:42:57', '0', '0');
INSERT INTO `tbl_order` VALUES ('47', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:42:26', '0', '0');
INSERT INTO `tbl_order` VALUES ('46', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:42:22', '0', '0');
INSERT INTO `tbl_order` VALUES ('43', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '                                                            ', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '0', '2016-10-16 20:17:37', '0', '1');
INSERT INTO `tbl_order` VALUES ('42', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '                                                            ', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 20:16:23', '0', '2');
INSERT INTO `tbl_order` VALUES ('41', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '                                                            ', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 20:15:39', '0', '-1');
INSERT INTO `tbl_order` VALUES ('44', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:37:23', '0', '0');
INSERT INTO `tbl_order` VALUES ('40', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '399000', '2016-10-16 20:13:47', '0', '0');
INSERT INTO `tbl_order` VALUES ('39', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '                                                            ', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '0', '2016-10-16 20:09:36', '0', '2');
INSERT INTO `tbl_order` VALUES ('45', 'Hiệp', 'Trần Viết', 'Phạm Văn Đồng', '', 'tranviethiep69@gmail.com', '1648407450', '', '', '', '', '3637000', '2016-10-16 21:38:41', '0', '0');

-- ----------------------------
-- Table structure for tbl_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_detail`;
CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `pro_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` float(11,0) NOT NULL,
  `price` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_detail
-- ----------------------------
INSERT INTO `tbl_order_detail` VALUES ('69', '50', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('68', '49', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('67', '48', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('66', '47', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('65', '46', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('62', '42', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('61', '41', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('60', '40', '13', 'TD050916-07', '1', '399000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('59', '39', '25', 'TD090916-01', '1', '3637000', '', '0');
INSERT INTO `tbl_order_detail` VALUES ('63', '44', '25', 'TD090916-01', '1', '3637000', '', '1');
INSERT INTO `tbl_order_detail` VALUES ('64', '45', '25', 'TD090916-01', '1', '3637000', '', '1');

-- ----------------------------
-- Table structure for tbl_post
-- ----------------------------
DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gpost_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `fulltext` longtext COLLATE utf8_unicode_ci,
  `related_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visited` int(11) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `ishot` tinyint(2) NOT NULL DEFAULT '0',
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `isactive` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_post
-- ----------------------------
INSERT INTO `tbl_post` VALUES ('1', 'vay-tin-chap-dong-nai', '2', 'Vay tín chấp Đồng Nai', 'assets/uploads/post/bank-related-complaints.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"1\"]', '2018-03-11 02:53:30', '2018-03-11 02:53:30', '12', '0', '0', null, '1', 'Vay tín chấp Đồng Nai', 'Vay tín chấp Đồng Nai', 'Vay tín chấp Đồng Nai', '1');
INSERT INTO `tbl_post` VALUES ('2', 'vay-theo-bang-luong-hop-dong-lao-dong', '2', 'Vay theo bảng lương - Hợp đồng lao động', 'assets/uploads/post/bank-related-complaints1.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"1\"]', '2018-03-11 02:53:30', '2018-03-13 00:52:15', '10', '0', '1', null, '1', 'Vay theo bảng lương - Hợp đồng lao động', 'Vay theo bảng lương - Hợp đồng lao động', 'Vay theo bảng lương - Hợp đồng lao động', '1');
INSERT INTO `tbl_post` VALUES ('3', 'vay-theo-cavet-xe', '2', 'Vay theo cavet xe', 'assets/uploads/post/bank-related-complaints2.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"2\",\"1\"]', '2018-03-11 02:53:29', '2018-03-11 02:53:29', '0', '0', '0', null, null, 'Vay theo cavet xe', 'Vay theo cavet xe', 'Vay theo cavet xe', '1');
INSERT INTO `tbl_post` VALUES ('4', 'vay-theo-hoa-don-tien-dien', '2', 'Vay theo hóa đơn tiền điện', 'assets/uploads/post/bank-related-complaints3.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"2\",\"3\",\"1\"]', '2018-03-11 02:53:28', '2018-03-11 02:53:28', '0', '0', '0', null, null, 'Vay theo hóa đơn tiền điện', 'Vay theo hóa đơn tiền điện', 'Vay theo hóa đơn tiền điện', '1');
INSERT INTO `tbl_post` VALUES ('7', 'vay-theo-hop-dong-bao-hien-nhan-tho', '2', 'Vay theo hợp đồng bảo hiển nhân thọ', 'assets/uploads/post/bank-related-complaints4.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"2\",\"3\",\"4\"]', '2018-03-11 02:53:28', '2018-03-11 02:53:28', '0', '0', '0', null, null, 'Vay theo hợp đồng bảo hiển nhân thọ', 'Vay theo hợp đồng bảo hiển nhân thọ', 'Vay theo hợp đồng bảo hiển nhân thọ', '1');
INSERT INTO `tbl_post` VALUES ('8', 'vay-theo-hop-dong-tin-dung-ben-to-chuc-khac', '2', 'Vay theo hợp đồng tín dụng bên tổ chức khác', 'assets/uploads/post/bank-related-complaints5.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-11 02:53:27', '2018-03-11 02:53:27', '0', '0', '0', null, null, 'Vay theo hợp đồng tín dụng bên tổ chức khác', 'Vay theo hợp đồng tín dụng bên tổ chức khác', 'Vay theo hợp đồng tín dụng bên tổ chức khác', '1');
INSERT INTO `tbl_post` VALUES ('10', 'thu-tuc-vay-tin-chap-tieu-dung-hien-nay-nhu-nao', '10', 'Thủ tục vay tín chấp tiêu dùng hiện nay như nào ?', 'assets/uploads/post/bank-related-complaints7.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-11 03:14:02', '2018-03-13 00:52:11', '0', '0', '1', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('11', 'vay-tin-chap-theo-hoa-don-tien-dien-nhu-the-nao', '10', 'Vay tín chấp theo hóa đơn tiền điện như thế nào?', 'assets/uploads/post/bank-related-complaints8.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-11 03:14:03', '2018-03-13 00:52:04', '0', '0', '1', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('12', 'vay-theo-bang-luong-hop-dong-lao-dong-nhu-nao', '10', 'Vay theo bảng lương - Hợp đồng lao động như nào?', 'assets/uploads/post/bank-related-complaints9.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-11 03:14:03', '2018-03-13 00:52:08', '0', '0', '1', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('13', 'lich-su-tin-dung-cua-toi-co-bi-anh-huong-khong-neu-toi-khong-thanh-toan-day-du-khoan-thanh-toan-toi-thieu-khi-den-han', '10', 'Lịch sử tín dụng của tôi có bị ảnh hưởng không nếu tôi không thanh toán đầy đủ khoản thanh toán tối thiểu khi đến hạn?', 'assets/uploads/post/bank-related-complaints10.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-13 00:50:52', '2018-03-13 00:52:00', '0', '0', '1', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('14', 'doi-voi-hinh-thuc-vay-tieu-dung-the-chap-tsdb-toi-co-the-tra-no-truoc-han-duoc-khong', '10', 'Đối với hình thức vay tiêu dùng thế chấp TSĐB, tôi có thể trả nợ trước hạn được không?', 'assets/uploads/post/bank-related-complaints11.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-13 00:50:58', '2018-03-13 00:50:58', '0', '0', '1', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('15', 'ai-co-the-vay-tien-de-mua-o-to-tai-vpbank', '10', 'Ai có thể vay tiền để mua ô tô tại VPBank?', 'assets/uploads/post/bank-related-complaints12.jpg', null, '<p>Đà Nẵng, thành phố của những cây cầu, thành phố xanh sạch đẹp hấp dẫn du khách bởi nhiều địa điểm du lịch và ẩm thực đặc sắc, ngon khó cưỡng. Là tâm điểm của ba di sản thế giới: Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn, Đà Nẵng trở thành nơi du lịch lí tưởng.</p>', '<p>Dự tính xây nhà trong 2 tháng nữa song thiếu hơn 50 triệu đồng, chị Hồng, ở một huyện ngoại thành phía Tây Hà Nội chạy vạy mãi không vay được. Chị kể, nếu như trước kia, trong trường hợp này chị sẽ đi vay lãi tại các mối ở quê, với lãi suất phổ biến khoảng 2%/tháng. “Nhưng từ hồi xảy ra nhiều vụ vỡ nợ, các mối cho vay cũng e dè, không dám tung tiền ra nữa ngay cả khi người đi vay tiền là người quen, chấp nhận trả lãi cao gấp đôi ngân hàng lên tới 2-2,5%/tháng”, chị Hồng chia sẻ.</p>\r\n\r\n<p>Nghe bạn giới thiệu, chị Hồng hỏi vay vốn tại một công ty tài chính liên kết vốn với ngân hàng với lãi suất gần 2%/tháng, tương đương trên 20%/năm. Chị kể, vay kiểu này không cần thế chấp tài sản, chỉ cần photo chứng minh nhân dân, bảng lương, sổ hộ khẩu và một số giấy tờ khác, chỉ đợi 2-3 ngày là được giải ngân. Tính ra mỗi tháng, khách vay 50 triệu đồng phải trả khoảng 1,6 triệu đồng (nếu vay 4 năm) và hơn 2 triệu đồng (nếu vay 3 năm), đã tính cả gốc và lãi. Ngoài ra, không ít người chấp nhận chi thêm 1-2 triệu đồng để nhân viên công ty này “làm đẹp” sổ lương nhằm tăng số tiền vay. Tính ra, với khoản vay khoảng 50 triệu đồng trong vòng 4 năm, tổng số tiền cả gốc cả lãi người vay phải trả là gần 100 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/pando/assets/uploads/images/bank-related-complaints.jpg\" xss=removed></p>\r\n\r\n<p>Canh giac &#39;bay&#39; vay tin chap hinh anh 1 Thủ tục dễ dàng, giải ngân nhanh, song người dân cần cẩn trọng với loại hình vay tín chấp đang ồ ạt nở rộ. Nhiều công ty tài chính đang công khai chào khách vay tín chấp (không cần tài sản) với lãi suất tương đối hấp dẫn. Prudential cho biết hiện lãi suất cho vay là , thời hạn tối đa là 4 năm. Phương thức tính lãi dựa trên dư nợ gốc, chia đều, số tiền giải ngân tối đa 190 triệu đồng. Thời điểm này năm 2011, khi thị trường nóng sốt, lãi suất cho vay của đơn vị này phổ biến 1,9 triệu đồng/tháng.</p>\r\n\r\n<p>Đã từng vay vốn tại công ty này, chị Huyền Anh chia sẻ trên một diễn đàn mạng, lãi suất cho khoản vay hơn 20 triệu là hơn 1 triệu đồng/tháng, tính theo năm lên tới 30%/năm, không được trả trước hạn, chưa kể đến các thủ tục giấy tờ khá phức tạp. Không chỉ công ty tài chính, khó tăng trưởng tín dụng, nhiều ngân hàng cũng ồ ạt chào vay tín chấp. Nhân viên một ngân hàng nước ngoại tại Hà Nội thông tin, lãi suất cho vay không tài sản đảm bảo tại nhà băng này đang là 24%/năm, tương đương 2%/tháng, bằng với các công ty tài chính.</p>\r\n\r\n<p>Dù vậy, phương thức tính lãi suất dựa trên dư nợ giảm dần. “Do đó, mức 24% này tương đương với mức hơn 13%/năm nếu tính trên dư nợ gốc”, chị này cho biết. Cũng theo lời nhân viên nói trên, nhà băng này cho vay song song cả tín chấp và thế chấp với lãi suất vay có tài sản đảm bảo phổ biến 12-13%/năm, giảm 2% trong 3 tháng đầu. So với tín chấp, thủ tục vay thế chấp kéo dài hơn vì còn vướng khâu thẩm định giá trị tài sản. Mức giải ngân đối với vay tín chấp dựa vào tổng thu nhập hàng tháng của khách hàng, thường là gấp 10 lần 1 tháng thu nhập.</p>\r\n\r\n<p>Tuy nhiên, điều kiện được vay vốn ngoài các giấy tờ cần thiết như chứng minh, sổ hộ khẩu, bảng lương… là khách hàng phải có thu nhập hàng tháng tối thiểu 6 triệu đồng trở lên đối với những doanh nghiệp được ngân hàng ưu tiên và trên 12 triệu đồng với doanh nghiệp khác. Khi biết quy định trên, không ít người đã từ bỏ ý định vay tín chấp. Trong khi đó, một số người cần vốn vẫn chấp nhận vay và chọn cách chuyển sang sử dụng dịch vụ trả lương qua thẻ của các ngân hàng cung cấp dịch vụ tín dụng tín chấp.</p>\r\n\r\n<p>Lý do là, nếu có tài khoản của ngân hàng này, định mức về thu nhập sẽ nới hơn, thay vì trên 10 triệu đồng/tháng thì chỉ còn 8-9 triệu đồng/tháng là có thể vay được. Theo phân tích của các chuyên gia tài chính ngân hàng, hình thức vay tín chấp nói trên, về nguyên tắc, là tốt: Ngân hàng sẽ lọc được khách hàng vì đã có sự phân loại rõ ràng, còn khách hàng không cần thế chấp tài sản. Song nếu như ngân hàng cố tình bằng mọi giá đẩy mạnh cho vay tín chấp để kích thích tăng trưởng tín dụng trong bối cảnh khó khăn hiện nay, thì lại là một hoạt động đầy rủi ro.</p>\r\n\r\n<p>Chuyên gia Nguyễn Trí Hiếu chia sẻ, tại Mỹ, người dân và doanh nghiệp cũng được vay tín chấp. Dù thế, cả hai nhóm đối tượng này đều có điểm xếp hạng tín dụng của 3 công ty chuyên chấm điểm và chỉ được vay nếu hệ số điểm tốt. Ngược lại, tại Việt Nam, việc xếp hạng này chưa có, các nhà băng cũng như công ty tài chính, dù “nắm đằng chuôi” khi cho vay chủ yếu cũng chỉ dựa vào sổ lương, sao kê ngân hàng nên khó tránh khỏi rủi ro. Rủi ro có thể thấy với khách hàng cá nhân là sổ lương giả, còn với khách hàng doanh nghiệp là sức khỏe, tình hình tài chính, khả năng trả nợ không đảm bảo dẫn tới tồn đọng nợ xấu.</p>\r\n\r\n<p>Do đó, ngân hàng khi cho vay, thay vì ồ ạt, cần cẩn trọng trong bối cảnh nợ xấu và nhiều vấn đề phát sinh như hiện tại, đặc biệt với các doanh nghiệp có hệ số nợ trên vốn chủ sở hữu lên tới 2/1, 3/1. Theo chuyên gia này: “Thà không có gì ăn còn hơn là ăn thức ăn có độc”. Với người đi vay tiền, ông Hiếu đưa lời khuyên, ngoài việc chuẩn bị hồ sơ, sao kê, giấy tờ đầy đủ, nên chọn nhiều ngân hàng để đối chiếu, so sánh rồi mới quyết định chỗ nào tốt nhất. Thêm vào đó, người đi vay, nếu có sức khỏe tài chính tốt, đủ điều kiện nên ngồi lại với bên cho vay để thương lượng về lãi suất, lệ phí cũng như cấu trúc lại thời gian và lịch trả nợ cho hợp lý. “Tất cả các món vay không nên vượt quá 50% thu nhập trước thuế của người đi vay. Người vay và người cho vay cũng cần tìm tiếng nói chung, lắng nghe nhau”, ông Hiếu đưa lời khuyên. Một chuyên gia khác thì bình luận, thực tế, cho vay tín chấp là một hình thức “nặng lãi”.</p>\r\n\r\n<p>Trong bối cảnh hiện nay, dù sốt sắng tăng trưởng tín dụng, các ngân hàng không dại gì “nắm đằng lưỡi”, nên người đi vay cần cực kỳ cẩn trọng đối với các lời mời chào cho vay kiểu này. Ông nhận xét, với khoản vay phải trả lãi 35%/năm trở lên, khách nên cân nhắc. Ngược lại, mức lãi suất vay tín chấp, nếu chọn được dưới 20%/năm là tốt nhất.</p>\r\n', '[\"3\",\"4\",\"7\"]', '2018-03-11 03:14:04', '2018-03-11 03:14:04', '0', '0', '0', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('16', 'dang-ky-vay', '11', 'Đăng ký vay', 'assets/uploads/post/ic1.png', null, '<p>Hoàn tất điền thông tin trong 3 phút</p>\r\n', '', 'null', '2018-03-12 23:28:36', '2018-03-12 23:28:36', '0', '0', '0', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('17', 'chuan-bi-ho-so', '11', 'Chuẩn bị hồ sơ', 'assets/uploads/post/ic2.png', null, '<p><strong>Sổ hộ khẩu</strong> bản gốc</p>\r\n', '', 'null', '2018-03-12 23:28:58', '2018-03-12 23:28:58', '0', '0', '0', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('18', 'nhan-xet-duyet', '11', 'Nhận xét duyệt', 'assets/uploads/post/ic3.png', null, '<p>Nhận kết quả nhanh chóng sau khi nộp hồ sơ</p>\r\n', '', 'null', '2018-03-12 23:29:13', '2018-03-12 23:29:13', '0', '0', '0', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('19', 'nhan-khoan-vay', '11', 'Nhận khoản vay', 'assets/uploads/post/ic4.png', null, '<p>Nhận tiền vào tài khoản hoặc tại cửa hàng Viettel Post trên toàn quốc</p>\r\n', '', 'null', '2018-03-13 00:50:49', '2018-03-13 00:50:49', '0', '0', '0', null, null, '', '', '', '1');
INSERT INTO `tbl_post` VALUES ('20', 'bang-luong', '12', 'Bảng lương', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:27:41', '2018-03-28 21:27:54', '0', '0', '0', null, null, null, null, null, '1');
INSERT INTO `tbl_post` VALUES ('21', 'hoa-don-tien-dien', '12', 'Hóa đơn tiền điện', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:28:18', '2018-03-28 21:28:21', '0', '0', '0', null, null, null, null, null, '1');
INSERT INTO `tbl_post` VALUES ('22', 'cavet-xe', '12', 'Cavet xe', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:28:24', '2018-03-28 21:29:33', '0', '0', '0', null, null, null, null, null, '1');
INSERT INTO `tbl_post` VALUES ('23', 'bao-hiem-nhan-tho', '12', 'Bảo hiểm nhân thọ', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:28:31', '2018-03-28 21:29:40', '0', '0', '0', null, null, null, null, null, '1');
INSERT INTO `tbl_post` VALUES ('24', 'sim', '12', 'Sim', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:28:33', '2018-03-28 21:29:47', '0', '0', '0', null, null, null, null, null, '1');
INSERT INTO `tbl_post` VALUES ('25', 'tin-dung-khac', '12', 'Tín dụng khác', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:28:34', '2018-03-28 21:29:51', '0', '0', '0', null, null, null, null, null, '1');
INSERT INTO `tbl_post` VALUES ('26', 'giay-phep-kinh-doanh', '12', 'Giấy phép kinh doanh', 'assets/uploads/post/p2.png', null, null, null, null, '2018-03-28 21:28:35', '2018-03-28 21:29:59', '0', '0', '0', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for tbl_post_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_post_group`;
CREATE TABLE `tbl_post_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_post_group
-- ----------------------------
INSERT INTO `tbl_post_group` VALUES ('1', '0', 'Giới thiệu', 'gioi-thieu', 'Giới thiệu về chúng tôi', null, null, null, null, '0', '1');
INSERT INTO `tbl_post_group` VALUES ('2', '0', 'Vay tín chấp', 'vay-tin-chap', '', '', null, null, null, '1', '1');
INSERT INTO `tbl_post_group` VALUES ('10', '0', 'Câu hỏi thường gặp', 'cau-hoi-thuong-gap', '', null, null, null, null, null, '1');
INSERT INTO `tbl_post_group` VALUES ('11', '0', '4 Bước đơn giản để thanh toán khoản vay', '4-buoc-don-gian-de-thanh-toan-khoan-vay', '', null, null, null, null, null, '1');
INSERT INTO `tbl_post_group` VALUES ('12', '0', 'Dịch vụ của chúng tôi', 'dich-vu-cua-chung-toi', '', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for tbl_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cata_id` int(11) NOT NULL,
  `cate_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trademark_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fulltext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_price` int(11) DEFAULT NULL,
  `market_price` int(11) DEFAULT NULL,
  `wholesale_price` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `cdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantity` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_priority` int(11) DEFAULT NULL,
  `ishot` tinyint(2) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `visited` int(11) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', 'TD050816-01', '1', '2', '1', 'robert-rodriguez-draped-silk-top', 'ROBERT RODRIGUEZ DRAPED SILK TOP', 'assets/images/products/WRR26453_1_product.jpg', '', '<p>This item can be returned for credit card refund.<br />\r\n<br />\r\nReturn Authorization requests must be made within 14 days of shipment and the item must be returned within 21 days of original shipment.</p>\r\n\r\n<p>See the&nbsp;<a href=\"https://www.therea', '<span itemprop=\"description\" class=\"glossary-terms-replaceable js-glossary-terms-replaceable\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 22.4px; font-family: Helvetica, Arial; font-siz', null, '150000', '300000', '200000', '250000', null, '2016-08-05 23:09:50', '2016-09-04 22:58:29', '100', 'title', 'description', 'key', 'admin', '1', '0', '0', '1', '1');
INSERT INTO `tbl_product` VALUES ('2', 'TD100816-01', '0', '2', '1', 'rosie-assoulin-oversize-short-sleeve-top', 'ROSIE ASSOULIN OVERSIZE SHORT SLEEVE TOP', 'assets/images/products/IRJ20219_1_product.jpg', '', '<p>White Rosie Assoulin oversize top with short sleeves, scoop neck and concealed zip closure at center back.</p>\r\n\r\n<p>Estimated Retail:&nbsp;$995.00</p>\r\n\r\n<p>Condition:&nbsp;Very Good. Faint spot at sleeve.</p>\r\n\r\n<p>Measurements:&nbsp;Bust 40&rdquo;, ', '', null, '150000', '1500000', '1200000', '1700000', null, '2016-08-10 01:13:42', '2016-09-04 22:54:17', '0', '', '', '', 'admin', '0', '1', '0', '3', '1');
INSERT INTO `tbl_product` VALUES ('3', 'TD100816-01', '0', '2', '1', 'reed-krakoff-leather-dress', 'REED KRAKOFF LEATHER DRESS', 'assets/images/products/REE23898_1_product.jpg', '', '<p>Light blue Reed Krakoff sleeveless leather dress with narrow shoulder straps, V-neck, seam details throughout, dual slit pockets at waist and hidden zip closure at center back featuring hook at top.</p>\r\n\r\n<p>Condition:&nbsp;Very Good. Light wear to fa', 'Nội dung sản phẩm', null, '800000', '1500000', '1000000', '1400000', null, '2016-08-11 17:09:19', '2016-08-27 22:57:54', '10', 'title', 'meta description', 'keyword', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('4', 'TD040916-01', '0', '2', '1', 'msgm-floral-print-button-up-top', 'MSGM FLORAL PRINT BUTTON-UP TOP', 'assets/images/products/W3G21272_1_product.jpg', '', '<p>Pink, green and purple MSGM long sleeve blouse with dual patch pockets at bust, floral prints throughout, tie closure at neckline and button closure at center front.</p>\r\n\r\n<p>Condition:&nbsp;Very Good. Faint wear throughout.</p>\r\n\r\n<p>Measurements:&nb', '', null, '0', '1200000', '1000000', '1500000', null, '2016-09-04 22:47:51', '2016-09-04 00:00:00', '5', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('5', 'TD040916-02', '0', '2', '1', 'prada-patterned-wool-sweater', 'PRADA PATTERNED WOOL SWEATER', 'assets/images/products/PRA100812_1_product.jpg', '', '<p>This item can be returned for credit card refund.<br />\r\n<br />\r\nReturn Authorization requests must be made within 14 days of shipment and the item must be returned within 21 days of original shipment.</p>\r\n\r\n<p>See the&nbsp;<a href=\"https://www.therea', '<span itemprop=\"description\" class=\"glossary-terms-replaceable js-glossary-terms-replaceable\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 22.4px; font-family: Helvetica, Arial; font-siz', null, '0', '900000', '700000', '1000000', null, '2016-09-04 23:01:52', '2016-09-04 00:00:00', '0', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('6', 'TD040916-03', '0', '2', '1', 'boy-by-band-of-outsiders-wool-pullover-sweater', 'BOY. BY BAND OF OUTSIDERS WOOL PULLOVER SWEATER', 'assets/images/products/BOY21020_1_enlarged.jpg', '', '<p>Men&#39;s navy Boy. by Band of Outsiders wool sweater with scoop neck, long sleeves and rib knit trim. Designer size 2.</p>\r\n\r\n<p>Condition:&nbsp;Very Good. Light pilling throughout.</p>\r\n\r\n<p>Measurements:&nbsp;Chest 40&rdquo;, Length 24&quot;</p>\r\n\r\n', '<span itemprop=\"description\" class=\"glossary-terms-replaceable js-glossary-terms-replaceable\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 22.4px; font-family: Helvetica, Arial; font-siz', null, '1400000', '1800000', '0', '2000000', null, '2016-09-04 23:05:08', '2016-09-04 00:00:00', '0', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('7', 'TD050916-01', '0', '4', '2', 'giay-bup-be-quai-om-co-chan-vien-kim-loai', 'Giày Búp Bê Quai Ôm Cổ Chân Viền Kim Loại', 'assets/images/products/zalora-0652-592265-1.jpg', '', '<p>ZALORA cho ra đời đ&ocirc;i gi&agrave;y b&uacute;p b&ecirc; cổ điển với thiết kế đ&iacute;nh bản kim loại nổi bật, đem đến n&eacute;t thanh lịch v&agrave; s&agrave;nh điệu cho qu&yacute; c&ocirc;.&nbsp;<br />\r\n<br />\r\n- Chất liệu vải<br />\r\n- Mũi nhọn<', '<table class=\"ui-grid ui-gridFull product__attr prd-attributes size1of2\" style=\"border-collapse: collapse; border-spacing: 0px; border: 0px; width: 478px; margin-top: 17px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px; letter-spaci', null, '0', '1000000', '800000', '1200000', null, '2016-09-05 22:13:07', '2016-09-05 22:15:05', '0', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('8', 'TD050916-02', '0', '4', '10', 'giay-bup-be-maria', 'Giày Búp Bê Maria', 'assets/images/products/velvet-1646-539265-1.jpg', '', '<p>Đ&oacute;n chờ những khoảnh khắc tuyệt vời nhất c&ugrave;ng đ&ocirc;i gi&agrave;y b&uacute;p b&ecirc; từ thương hiệu Velvet. Chất liệu da lộn tổng hợp với mũi gi&agrave;y nhọn nữ t&iacute;nh.<br />\r\n<br />\r\n- Chất liệu da lộn tổng hợp<br />\r\n- Mũi gi&a', '<table class=\"ui-grid ui-gridFull product__attr prd-attributes size1of2\" style=\"border-collapse: collapse; border-spacing: 0px; border: 0px; width: 478px; margin-top: 17px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px; letter-spaci', null, '100000', '339000', '150000', '199000', null, '2016-09-05 22:19:46', '2016-09-05 22:23:04', '0', '', '', '', 'admin', '0', '0', null, null, '0');
INSERT INTO `tbl_product` VALUES ('9', 'TD050916-03', '0', '4', '2', 'giay-bup-be-quai-om-co-chan-vien-kim-loai', 'Giày Búp Bê Quai Ôm Cổ Chân Viền Kim Loại', 'assets/images/products/zalora-0664-792265-1.jpg', '', '<p>ZALORA cho ra đời đ&ocirc;i gi&agrave;y b&uacute;p b&ecirc; cổ điển với thiết kế đ&iacute;nh bản kim loại nổi bật, đem đến n&eacute;t thanh lịch v&agrave; s&agrave;nh điệu cho qu&yacute; c&ocirc;.&nbsp;<br />\r\n<br />\r\n- Chất liệu vải<br />\r\n- Mũi nhọn<', '<table class=\"ui-grid ui-gridFull product__attr prd-attributes size1of2\" style=\"border-collapse: collapse; border-spacing: 0px; border: 0px; width: 478px; margin-top: 17px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px; letter-spaci', null, '0', '349000', '0', '199000', null, '2016-09-05 22:26:18', '2016-09-05 00:00:00', '0', '', '', '', 'admin', '0', '0', null, null, '0');
INSERT INTO `tbl_product` VALUES ('10', 'TD050916-04', '0', '5', '2', 'dam-dang-xoe', 'Đầm Dáng Xòe', 'assets/images/products/inner-circle-5731-186216-1.jpg', '', '\r\nChiếc đầm dáng xòe thiết kế bởi INNER CIRCLE by ZALORA là lựa chọn tuyệt vời để dạo phố hoặc hẹn hò. Đầm có chi tiết nhún eo độc đáo, sử dụng gam màu tối làm chủ đạo tôn lên nét xinh đẹp, quyến rũ của bạn.\r\n\r\n- Chất liệu cotton pha\r\n- Đầm cổ tròn\r\n- Khô', '\r\nSKU (simple)	IN976AA18WIRVN\r\nMàu sắc	Đen\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa\r\nXuất xứ	Việt Nam\r\n', null, '0', '0', '0', '499000', null, '2016-09-05 22:36:18', '2016-09-05 00:00:00', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('11', 'TD050916-05', '0', '5', '2', 'dam-dang-xoe', 'Đầm Dáng Xòe', 'assets/images/products/inner-circle-5731-186216-1.jpg', '', '\r\nChiếc đầm dáng xòe thiết kế bởi INNER CIRCLE by ZALORA là lựa chọn tuyệt vời để dạo phố hoặc hẹn hò. Đầm có chi tiết nhún eo độc đáo, sử dụng gam màu tối làm chủ đạo tôn lên nét xinh đẹp, quyến rũ của bạn.\r\n\r\n- Chất liệu cotton pha\r\n- Đầm cổ tròn\r\n- Khô', '\r\nSKU (simple)	IN976AA18WIRVN\r\nMàu sắc	Đen\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa\r\nXuất xứ	Việt Nam\r\n', null, '0', '0', '0', '499000', null, '2016-09-05 22:36:18', '2016-09-05 00:00:00', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('12', 'TD050916-06', '0', '5', '2', 'dam-dang-xoe', 'Đầm Dáng Xòe', 'assets/images/products/inner-circle-5731-186216-1.jpg', '', '\r\nChiếc đầm dáng xòe thiết kế bởi INNER CIRCLE by ZALORA là lựa chọn tuyệt vời để dạo phố hoặc hẹn hò. Đầm có chi tiết nhún eo độc đáo, sử dụng gam màu tối làm chủ đạo tôn lên nét xinh đẹp, quyến rũ của bạn.\r\n\r\n- Chất liệu cotton pha\r\n- Đầm cổ tròn\r\n- Khô', '\r\nSKU (simple)	IN976AA18WIRVN\r\nMàu sắc	Đen\r\nHướng dẫn sử dụng	Giặt riêng với bột giặt có chất tẩy nhẹ\r\nKhông được ngâm\r\nKhông được tẩy\r\nKhông được sấy khô\r\nĐể khô trên mặt phẳng\r\nỦi mặt trái với nhiệt độ nóng vừa\r\nXuất xứ	Việt Nam\r\n', null, '0', '0', '0', '499000', null, '2016-09-05 22:36:18', '2016-09-05 00:00:00', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('13', 'TD050916-07', '0', '3', '2', 'giay-cao-got', 'Giày Cao Gót', 'assets/images/products/zilandi-4818-549406-1.jpg', '', '\r\nMọi cô gái đều nên có cho mình một đôi giày cao gót mũi nhọn quý phái. Thương hiệu Zilandi đem đến bạn gợi ý cổ điển, khẳng định phong cách thanh lịch của bạn. \r\n\r\n- Gót cao 7cm\r\n- Chất liệu da bóng tổng hợp\r\n- Mũi nhọn\r\n- In tên thương hiệu trên lót đế', '\r\nSKU (simple)	ZI808SH54KXDVN\r\nChất liệu mặt trên	Da bóng tổng hợp\r\nChất liệu mặt trong	Da tổng hợp\r\nChất liệu đế	PU\r\nMàu sắc	Kem\r\nXuất xứ	Việt Nam\r\n', null, '0', '0', '0', '399000', null, '2016-09-05 22:41:31', '2016-09-05 00:00:00', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('14', 'TD050916-08', '0', '3', '2', 'giay-cao-got', 'Giày Cao Gót', 'assets/images/products/zilandi-4818-549406-1.jpg', '', '\r\nMọi cô gái đều nên có cho mình một đôi giày cao gót mũi nhọn quý phái. Thương hiệu Zilandi đem đến bạn gợi ý cổ điển, khẳng định phong cách thanh lịch của bạn. \r\n\r\n- Gót cao 7cm\r\n- Chất liệu da bóng tổng hợp\r\n- Mũi nhọn\r\n- In tên thương hiệu trên lót đế', '\r\nSKU (simple)	ZI808SH54KXDVN\r\nChất liệu mặt trên	Da bóng tổng hợp\r\nChất liệu mặt trong	Da tổng hợp\r\nChất liệu đế	PU\r\nMàu sắc	Kem\r\nXuất xứ	Việt Nam\r\n', null, '0', '0', '0', '399000', null, '2016-09-05 22:41:31', '2016-09-05 00:00:00', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('15', 'TD050916-09', '0', '3', '2', 'giay-cao-got', 'Giày Cao Gót', 'assets/images/products/zilandi-4818-549406-1.jpg', '', '\r\nMọi cô gái đều nên có cho mình một đôi giày cao gót mũi nhọn quý phái. Thương hiệu Zilandi đem đến bạn gợi ý cổ điển, khẳng định phong cách thanh lịch của bạn. \r\n\r\n- Gót cao 7cm\r\n- Chất liệu da bóng tổng hợp\r\n- Mũi nhọn\r\n- In tên thương hiệu trên lót đế', '\r\nSKU (simple)	ZI808SH54KXDVN\r\nChất liệu mặt trên	Da bóng tổng hợp\r\nChất liệu mặt trong	Da tổng hợp\r\nChất liệu đế	PU\r\nMàu sắc	Kem\r\nXuất xứ	Việt Nam\r\n', null, '0', '0', '0', '399000', null, '2016-09-05 22:41:31', '2016-09-05 00:00:00', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('16', 'TD050916-10', '0', '6', '11', 'w-nike-air-zoom-structure-19', 'W Nike Air Zoom Structure 19', 'assets/images/products/nike-1037-503855-1.jpg', '', '\r\nLà gợi ý lí tưởng cho những cô nàng yêu môn chạy bộ, giày thể thao của thương hiệu Nike với thiết kế lót đệm mỏng nhẹ phối đế giày nâng đỡ tốt, sẽ giúp bạn cảm thấy thoải m\r\n\r\n', 'SKU (simple)	NI126SH94TXHVN Chất liệu mặt trên	Vải lưới Chất liệu mặt trong	Vải Chất liệu đế	Cao su Màu sắc	Black/White/Hyper Orng/Vvd Prpl ', null, '0', '0', '0', '3637000', null, '2016-09-05 22:46:45', '2016-09-08 23:55:12', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('17', 'TD050916-11', '0', '6', '11', 'w-nike-air-zoom-structure-19', 'W Nike Air Zoom Structure 19', 'assets/images/products/nike-1037-503855-1.jpg', '', '<p>L&agrave; gợi &yacute; l&iacute; tưởng cho những c&ocirc; n&agrave;ng y&ecirc;u m&ocirc;n chạy bộ, gi&agrave;y thể thao của thương hiệu Nike với thiết kế l&oacute;t đệm mỏng nhẹ phối đế gi&agrave;y n&acirc;ng đỡ tốt, sẽ gi&uacute;p bạn cảm thấy thoải m', 'SKU (simple)	NI126SH94TXHVN\r\nChất liệu mặt trên	Vải lưới\r\nChất liệu mặt trong	Vải\r\nChất liệu đế	Cao su\r\nMàu sắc	Black/White/Hyper Orng/Vvd Prpl\r\n', null, '0', '0', '0', '3637000', null, '2016-09-05 22:46:45', '2016-09-08 23:58:43', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('18', 'TD050916-12', '0', '6', '11', 'w-nike-air-zoom-structure-19', 'W Nike Air Zoom Structure 19', 'assets/images/products/nike-1037-503855-1.jpg', '', '<p>L&agrave; gợi &yacute; l&iacute; tưởng cho những c&ocirc; n&agrave;ng y&ecirc;u m&ocirc;n chạy bộ, gi&agrave;y thể thao của thương hiệu Nike với thiết kế l&oacute;t đệm mỏng nhẹ phối đế gi&agrave;y n&acirc;ng đỡ tốt, sẽ gi&uacute;p bạn cảm thấy thoải m', 'SKU (simple)	NI126SH94TXHVN\r\nChất liệu mặt trên	Vải lưới\r\nChất liệu mặt trong	Vải\r\nChất liệu đế	Cao su\r\nMàu sắc	Black/White/Hyper Orng/Vvd Prpl\r\n', null, '0', '0', '0', '3637000', null, '2016-09-05 22:46:45', '2016-09-08 23:51:54', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('25', 'TD090916-01', '0', '8', '4', 'test', 'test', 'assets/images/products/nike-1037-503855-1.jpg', 'assets/images/products/nike-1037-503855-1.jpg|assets/images/products/nike-1037-503855-1.jpg|assets/images/products/nike-1037-503855-1.jpg|', '<p>L&agrave; gợi &yacute; l&iacute; tưởng cho những c&ocirc; n&agrave;ng y&ecirc;u m&ocirc;n chạy bộ, gi&agrave;y thể thao của thương hiệu Nike với thiết kế l&oacute;t đệm mỏng nhẹ phối đế gi&agrave;y n&acirc;ng đỡ tốt, sẽ gi&uacute;p bạn cảm thấy thoải m', 'SKU (simple)	NI126SH94TXHVN\r\nChất liệu mặt trên	Vải lưới\r\nChất liệu mặt trong	Vải\r\nChất liệu đế	Cao su\r\nMàu sắc	Black/White/Hyper Orng/Vvd Prpl\r\n', null, '0', '0', '0', '3637000', '0', '2016-09-09 02:40:36', '2016-09-26 21:49:32', '100', '', '', '', 'admin', '0', '0', null, null, '1');
INSERT INTO `tbl_product` VALUES ('27', 'O83NL27', '7', null, null, 'test-ao-so-mi-trang', 'Test áo sơ mi trắng', null, null, '<p>Mô tả ngắn</p>\r\n', '<p>Nội dung</p>\r\n', '<p>Quy đinh đổi trả hàng</p>\r\n', '100000', null, null, null, null, '2018-03-03 02:40:45', '2018-03-03 02:40:45', '10', 'Áo sơ mi trắng', 'Áo sơ mi trắng', 'Áo sơ mi trắng', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for tbl_product_cata
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_cata`;
CREATE TABLE `tbl_product_cata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `cata_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_product_cata
-- ----------------------------
INSERT INTO `tbl_product_cata` VALUES ('1', '25', '26');
INSERT INTO `tbl_product_cata` VALUES ('2', '25', '36');

-- ----------------------------
-- Table structure for tbl_reviews
-- ----------------------------
DROP TABLE IF EXISTS `tbl_reviews`;
CREATE TABLE `tbl_reviews` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_reviews
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_roles
-- ----------------------------
DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_roles
-- ----------------------------
INSERT INTO `tbl_roles` VALUES ('1', '0', 'Quản lý users', 'Quản lý users', null, '1');
INSERT INTO `tbl_roles` VALUES ('2', '0', 'Quản lý bài viết', 'Quản lý bài viết', null, '1');
INSERT INTO `tbl_roles` VALUES ('3', '0', 'Quản lý sản phẩm', 'Quản lý sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('4', '0', 'Quản lý đơn hàng', 'Quản lý đơn hàng', null, '1');
INSERT INTO `tbl_roles` VALUES ('5', '0', 'Quản lý menu', 'Quản lý menu', null, '1');
INSERT INTO `tbl_roles` VALUES ('6', '0', 'Quản lý module', 'Quản lý module', null, '1');
INSERT INTO `tbl_roles` VALUES ('7', '0', 'Quản lý thành viên', 'Quản lý thành viên', null, '1');
INSERT INTO `tbl_roles` VALUES ('8', '0', 'Quản lý nhóm user', 'Quản lý nhóm user', null, '1');
INSERT INTO `tbl_roles` VALUES ('9', '0', 'Quản lý banner', 'Quản lý banner', null, '1');
INSERT INTO `tbl_roles` VALUES ('10', '0', 'Quản lý nhóm sản phẩm', 'Quản lý nhóm sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('11', '0', 'Quản lý config', 'Quản lý config', null, '1');
INSERT INTO `tbl_roles` VALUES ('12', '1', 'Add user', 'Thêm mới user', null, '1');
INSERT INTO `tbl_roles` VALUES ('13', '1', 'Edit user', 'Sửa user', null, '1');
INSERT INTO `tbl_roles` VALUES ('14', '1', 'Delete user', 'Xóa user', null, '1');
INSERT INTO `tbl_roles` VALUES ('15', '1', 'Active', 'Active user', null, '1');
INSERT INTO `tbl_roles` VALUES ('16', '2', 'Add', 'Thêm bài viết', null, '1');
INSERT INTO `tbl_roles` VALUES ('17', '2', 'Edit', 'Sửa bài viết', null, '1');
INSERT INTO `tbl_roles` VALUES ('18', '2', 'Delete', 'Xóa bài viết', null, '1');
INSERT INTO `tbl_roles` VALUES ('19', '2', 'Active', 'Active bài viết', null, '1');
INSERT INTO `tbl_roles` VALUES ('20', '3', 'Add product', 'Thêm mới sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('21', '3', 'Edit product', 'Sửa sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('23', '4', 'Add order', 'Thêm mới đơn hàng', null, '1');
INSERT INTO `tbl_roles` VALUES ('24', '4', 'Edit order', 'Sửa đơn hàng', null, '1');
INSERT INTO `tbl_roles` VALUES ('25', '5', 'Add menu', 'Thêm mới các đối tượng trong menu', null, '1');
INSERT INTO `tbl_roles` VALUES ('26', '5', 'Edit menu', 'Sửa các thành phần trong menu', null, '1');
INSERT INTO `tbl_roles` VALUES ('27', '6', 'Add module', 'Thêm mới module', null, '1');
INSERT INTO `tbl_roles` VALUES ('28', '6', 'Edit module', 'Sửa module', null, '1');
INSERT INTO `tbl_roles` VALUES ('29', '6', 'Active module', 'Ẩn hiện module', null, '1');
INSERT INTO `tbl_roles` VALUES ('30', '10', 'Add group product', 'Thêm nhóm sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('31', '10', 'Edit group product', 'Sửa nhóm sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('32', '10', 'Delete group product', 'Xóa nhóm sản phẩm', null, '1');
INSERT INTO `tbl_roles` VALUES ('33', '6', 'Delete module', 'Xóa module', null, '1');
INSERT INTO `tbl_roles` VALUES ('34', '11', 'Update config', 'Update config', null, '1');

-- ----------------------------
-- Table structure for tbl_sale
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sale`;
CREATE TABLE `tbl_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_group_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) NOT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `percen_sale` int(11) NOT NULL,
  `start_time` int(20) NOT NULL,
  `end_time` int(20) NOT NULL,
  `isactive` tinyint(4) DEFAULT '1',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_sale
-- ----------------------------
INSERT INTO `tbl_sale` VALUES ('4', '1', '27', 'O83NL27', '7', '0', '1520057641', '1520057641', '1', '2018-03-03 13:14:01', '2018-03-03 13:14:01');

-- ----------------------------
-- Table structure for tbl_sale_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sale_group`;
CREATE TABLE `tbl_sale_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `percen_sale` int(11) NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_sale_group
-- ----------------------------
INSERT INTO `tbl_sale_group` VALUES ('1', '0', 'Sale 10% - 15%', 'sale-10-15', '10', 'assets/uploads/post/23755692_276679999523983_3799570167314468922_n1.jpg', '', '', '', '', null, '1');
INSERT INTO `tbl_sale_group` VALUES ('2', '0', 'Sale 20% - 50%', 'sale-20-50', '0', null, '', '', '', '', null, '1');

-- ----------------------------
-- Table structure for tbl_slider
-- ----------------------------
DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` tinyint(2) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_slider
-- ----------------------------
INSERT INTO `tbl_slider` VALUES ('1', 'assets/uploads/banner/vaytinchap.jpg', 'Hà Nội 36 phố phường', null, null, '2', '1');
INSERT INTO `tbl_slider` VALUES ('2', 'assets/uploads/banner/bn8.jpg', 'Hà Nội 36 phố phường', null, null, '3', '0');
INSERT INTO `tbl_slider` VALUES ('3', 'assets/uploads/banner/bn7.jpg', 'Hà Nội 36 phố phường', null, null, '1', '1');

-- ----------------------------
-- Table structure for tbl_tags
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tags`;
CREATE TABLE `tbl_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` text COLLATE utf8_unicode_ci NOT NULL,
  `tag_link` text COLLATE utf8_unicode_ci NOT NULL,
  `tag_con_id` text COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_tags
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_trademark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_trademark`;
CREATE TABLE `tbl_trademark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trademark_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trademark_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `isactive` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_trademark
-- ----------------------------
INSERT INTO `tbl_trademark` VALUES ('1', 'JUNO ', 'juno-', '', '', '<p>Thương hiệu 1</p>\r\n', '0', '1');
INSERT INTO `tbl_trademark` VALUES ('2', 'Zalora', 'zalora', 'assets/images/trademark/zalora.jpg', '', '<h2>ZALORA</h2>\r\n\r\n<p>ZALORA l&agrave; thương hiệu thời trang d&agrave;nh cho những người y&ecirc;u th&iacute;ch sự mới mẻ, hiện đại v&agrave; lu&ocirc;n khẳng định m&igrave;nh trong việc đ&oacute;n đầu c&aacute;c xu hướng. Lấy cảm hứng từ phong c&aacute;', '1', '1');
INSERT INTO `tbl_trademark` VALUES ('3', 'May 10', 'may-10', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('4', 'Adidas', 'adidas', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('5', 'Zanado', 'zanado', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('6', 'AN PHƯỚC GROUP', 'an-phuoc-group', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('7', 'VIỆT TIẾN', 'viet-tien', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('8', 'BLUE EXCHANGE', 'blue-exchange', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('9', 'Novelty', 'novelty', '', '', '', null, '1');
INSERT INTO `tbl_trademark` VALUES ('10', 'Velvet', 'velvet', '', '', '<p>Với mục ti&ecirc;u trở th&agrave;nh thi&ecirc;n đường cho niềm đam m&ecirc; bất tận gi&agrave;y v&agrave; t&uacute;i x&aacute;ch của ph&aacute;i yếu, Velvet lu&ocirc;n sẵn s&agrave;ng cung cấp cho bạn những mẫu s&aacute;ng tạo mới nhất v&agrave; cập nh', null, '1');
INSERT INTO `tbl_trademark` VALUES ('11', 'Nike', 'nike', 'assets/images/trademark/nike.jpg', '', '<p>Nike, theo nghĩa Hi Lạp, l&agrave; tượng trưng của nữ thần chiến thắng. Được th&agrave;nh lập năm 1978 dưới b&agrave;n tay t&agrave;i hoa của hai nh&agrave; thiết kế Bill Bowerman and Philip Knight, Nike được biết đến l&agrave; nh&agrave; cung cấp quần', null, '0');

-- ----------------------------
-- Table structure for tbl_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_type`;
CREATE TABLE `tbl_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_type
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guser_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roles_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joindate` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `isactive` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_active` (`isactive`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '0', 'admin', 'd93a5def7511da3d0f2d171d9c344e91', 'Hiệp', 'Trần', '1994-09-06', '0', 'Hà Nội', '0969549903', '0969549903', 'tranviethiepdz@gmail.com', '[\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"]', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '1');
INSERT INTO `tbl_user` VALUES ('2', '0', 'hiep', 'd93a5def7511da3d0f2d171d9c344e91', 'Trần Viết', 'Hiệp', '1994-09-06', '0', 'Thường Tín - Hà Nội', '0969549903', '', 'tranviethiepdz@gmail.com', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_user` VALUES ('3', '0', 'abc', 'd93a5def7511da3d0f2d171d9c344e91', 'Trần Viết', 'Hiệp', '1994-09-06', '0', 'Thường Tín - Hà Nội', '0969549903', '', 'tranviethiepdz@gmail.com', '[\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for tbl_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_group`;
CREATE TABLE `tbl_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT '0',
  `ct_gpost` tinyint(1) DEFAULT '0',
  `ct_post` tinyint(1) DEFAULT '0',
  `ct_gproduct` tinyint(1) DEFAULT '0',
  `ct_product` tinyint(1) DEFAULT '0',
  `ct_order` tinyint(1) DEFAULT '0',
  `ct_album` tinyint(1) DEFAULT '0',
  `ct_gallery` tinyint(1) DEFAULT '0',
  `ct_banner` tinyint(1) DEFAULT '0',
  `ct_menu` tinyint(1) DEFAULT '0',
  `ct_configsite` tinyint(1) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `admin` tinyint(1) DEFAULT '0',
  `isactive` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_active` (`isactive`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_user_group
-- ----------------------------
INSERT INTO `tbl_user_group` VALUES ('1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Super Admin', '', '1', '1');
INSERT INTO `tbl_user_group` VALUES ('2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Admin', 'Có tất cả các quyền, trừ quyền thêm thành viên quản trị', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('3', '2', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Accountant', 'Nhập liệu hồ sơ, không được kích hoạt, được xem mục kế toán', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('4', '3', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Profile', 'Nhập liệu hồ sơ, không có quyền kích hoạt, không được xem mục kế toán  ', '0', '1');

-- ----------------------------
-- Table structure for tbl_visit
-- ----------------------------
DROP TABLE IF EXISTS `tbl_visit`;
CREATE TABLE `tbl_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `isonline` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_visit
-- ----------------------------
