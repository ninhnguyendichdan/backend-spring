/*
Navicat MySQL Data Transfer

Source Server         : localhost_5.7
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : carpark

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-17 09:35:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `fee` float NOT NULL,
  `fee_service` float DEFAULT NULL,
  `park_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES ('1', null, null, '1', '1', '1', null, '1', '1', '1');

-- ----------------------------
-- Table structure for park
-- ----------------------------
DROP TABLE IF EXISTS `park`;
CREATE TABLE `park` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `max_height` float DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of park
-- ----------------------------

-- ----------------------------
-- Table structure for park_service
-- ----------------------------
DROP TABLE IF EXISTS `park_service`;
CREATE TABLE `park_service` (
  `park_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  PRIMARY KEY (`park_id`,`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of park_service
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `CREATION_TIME` bigint(20) DEFAULT NULL,
  `LAST_ACCESS_TIME` bigint(20) DEFAULT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('57989a3e-543a-4815-a161-db7d3d0d3377', '1516148775783', '1516148785973', '1800', 'thomc');

-- ----------------------------
-- Table structure for sessions_attributes
-- ----------------------------
DROP TABLE IF EXISTS `sessions_attributes`;
CREATE TABLE `sessions_attributes` (
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `ATTRIBUTE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ATTRIBUTE_BYTES` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sessions_attributes
-- ----------------------------
INSERT INTO `sessions_attributes` VALUES ('68c1464f-fb95-4682-8d6f-826b8181631e', 'sessionj', 0xACED000574000576616C7565);
INSERT INTO `sessions_attributes` VALUES ('68c1464f-fb95-4682-8d6f-826b8181631e', 'SPRING_SECURITY_CONTEXT', 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C00000000000001A40200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000541444D494E7371007E000E74000A524F4C455F41444D494E7371007E000E740009524F4C455F555345527371007E000E740004555345527871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001A40200024C000D72656D6F74654164647265737371007E000F4C000973657373696F6E496471007E000F787074000F303A303A303A303A303A303A303A317070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657374000F4C6A6176612F7574696C2F5365743B4C000870617373776F726471007E000F4C0008757365726E616D6571007E000F787001010101737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E000A737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000471007E001071007E001271007E001471007E0016787074000574686F6D63);
INSERT INTO `sessions_attributes` VALUES ('57989a3e-543a-4815-a161-db7d3d0d3377', 'sessionj', 0xACED000574000576616C7565);
INSERT INTO `sessions_attributes` VALUES ('57989a3e-543a-4815-a161-db7d3d0d3377', 'SPRING_SECURITY_CONTEXT', 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C00000000000001A40200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B7870740009524F4C455F555345527371007E000E740004555345527871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001A40200024C000D72656D6F74654164647265737371007E000F4C000973657373696F6E496471007E000F787074000F303A303A303A303A303A303A303A317070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657374000F4C6A6176612F7574696C2F5365743B4C000870617373776F726471007E000F4C0008757365726E616D6571007E000F787001010101737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E000A737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000271007E001071007E0012787074000574686F6D63);

-- ----------------------------
-- Table structure for tbl_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL COMMENT 'foreign key table mst_category',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `volumn_id` int(11) DEFAULT NULL COMMENT 'foreign key of mst_data_type\r with type volumn: \n50ml\r\n100ml\r\n200ml\r\n350ml\r\n375ml\r\n720ml\r\n750ml\r\n1,000ml\r\n1,500ml\r\n1,800ml\r\nその他\r\n',
  `volumn_value` decimal(10,0) DEFAULT NULL,
  `store_type_id` int(11) DEFAULT NULL COMMENT 'Foreign key table mst_data_type\r\n常温\r\n冷蔵庫\r\nワインセラー\r\n冷暗所\r\n倉庫\r\n',
  `product_status_id` int(11) DEFAULT NULL COMMENT 'Foreign key table mst_data_type\r\n状態良好\r\n状態不備\r\nラベル不良\r\n液面低下\r\n吹き跡有\r\n古酒\r\n新品\r\nその他\r\n',
  `tags` varchar(255) DEFAULT NULL COMMENT 'Separate by ;\r\nレアもの\r\n新品商品\r\n価格交渉OK\r\n',
  `ship_fee_type_id` int(11) DEFAULT NULL COMMENT 'Foreign key table mst_data_type\r\n送料込み（出品者負担）\r\n着払い（購入者負担）\r\n',
  `ship_method_id` int(11) DEFAULT NULL COMMENT 'Foreign key table mst_data_type\r\nクロネコヤマト\r\nゆうパック\r\nその他\r\n',
  `prefecture_id` int(11) DEFAULT NULL COMMENT 'Foreign key table mst_prefecture',
  `deliver_day_id` int(11) DEFAULT NULL COMMENT 'Foreign key table mst_data_type\r\n1～2日で発送\r\n2～3日で発送\r\n4～7日で発送\r\n',
  `price` decimal(10,0) DEFAULT NULL,
  `fee` decimal(10,0) DEFAULT NULL,
  `profit` decimal(10,0) DEFAULT NULL,
  `product_image_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'draft|published|completed|buying|cancel',
  `product_type` int(11) DEFAULT NULL COMMENT '0: product; 1: collection',
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', 'Product1', '1', '2017-11-21 17:15:58', '1', '2017-11-21 17:16:02', '1', 'Description', '1', '1', '1', '1', '123,123', '1', '1', '1', '1', '10000', null, '10000', 'https://www.google.com.vn/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png', 'published', '0', 'category name');
INSERT INTO `tbl_product` VALUES ('2', 'Product2', '1', '2017-11-21 17:38:04', '1', '2017-11-21 17:38:10', '1', 'Description 2', '1', '1', '1', '1', '123', '1', '1', '1', '1', '1000', null, '1000', 'https://www.google.com.vn/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png', 'published', '0', 'category name');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL COMMENT 'User name',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `temp_password` varchar(255) DEFAULT NULL COMMENT 'temp password when reset pass',
  `salt` varchar(255) DEFAULT NULL COMMENT 'Salt to hash password',
  `status` int(11) DEFAULT NULL COMMENT 'Status: Active|Confirm|Deleted',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `activation_key` varchar(255) DEFAULT NULL COMMENT 'Activation key when register',
  `access_token` varchar(255) DEFAULT NULL COMMENT 'token when login',
  `is_sys_user` int(1) DEFAULT NULL,
  `provider_type` enum('facebook','local','google') DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `token_expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'thomc', 'thomc', '123', '123', '123', '2', '2017-11-20 17:12:58', '1', '2017-11-20 17:13:05', '1', '123', '7d8ba843-5fb2-4853-9907-7b944314de94', '1', 'local', 'admin', '0', null, null);
INSERT INTO `user` VALUES ('2', 'tantn', 'loc', '1b772cc88b7506ea8700badd0ff5edf07d44d5c4fe76f19cf8ac42b2107e2b1f', '123', '123', '2', '2017-11-20 17:12:58', '1', '2017-11-20 17:13:05', '1', '123', '0f50e1a4-95da-4106-adab-44b2aba73bfb', '0', 'local', '', '0', null, null);
INSERT INTO `user` VALUES ('3', 'minh', 'minh@gmail.com', '123', '123', '123', '2', '2017-11-20 17:12:58', '2', '2017-11-20 17:12:58', '1', '123', null, '0', 'local', null, '0', null, null);

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colour` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of vehicle
-- ----------------------------
