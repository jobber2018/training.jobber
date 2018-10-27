/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50524
 Source Host           : localhost:3306
 Source Schema         : it-training

 Target Server Type    : MySQL
 Target Server Version : 50524
 File Encoding         : 65001

 Date: 26/10/2018 11:27:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` int(11) NOT NULL,
  `sologan` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_training` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `bag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo_title` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo_des` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo_keyword` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'HỌC LẬP TRÌNH IOS CÙNG CÁC DỰ ÁN THỰC TẾ', '<h3>Tại sao nên học nên học iOS-Swift ngay hôm nay?</h3>\r\n        <p> - Swift là một trong những ngôn ngữ đang phát triển rất mạnh mẽ nhất hiện nay<br />\r\n          - Nhu cầu tuyển dụng nhân sự từ các công ty rất lớn<br />\r\n          - Thu nhập của lập trình viên iOS cao hơn mức trung bình trong ngành khoảng 20%<br />\r\n          - Đơn giản, dễ học, học sinh cấp 3 cũng có thể học được<br />\r\n          - Swift có thể sử dụng như một ngôn ngữ để lập trình back-end </p>\r\n        <h4>Tại sao nên học lập trình iOS với Techmaster?</h4>\r\n        <p> - Khoá học này có 2 giảng viên: thầy Phạm Trần Vĩnh Thế, 4 năm kinh nghiệm phát triển ứng dụng smartphone cho khách hàng Mỹ, Hàn Quốc, cô Nguyễn Thuỳ Liên, trưởng nhóm di động FSoft, đã tham gia nhiều dự án cho IBM và khách hàng châu Âu.<br />\r\n          - Giáo trình gồm nhiều dự án mẫu demo từ dễ đến khó<br />\r\n          - Lớp học nhỏ giảng viên code cùng với sinh viên.<br />\r\n          - Chấm, chữa bài, code camp thường xuyên<br />\r\n          - Khóa học dạy trên Xcode 9 và Swift 4.0 </p>', 6000000, 'Jobber Training cung cấp đầy đủ và chính xác nội dung và thời lượng của khóa học nhằm giúp học viên nắm rõ các nội dung mình được học trước khi tham gia vào khóa học chính thức', 'Khai giảng ngày xxxx, 7h đến 10 tối thứ 3,5 hàng tuần <br>Hỗ trợ trực tiếp Học tại phòng lab Được giảng viên chấm bài và nhận xét Tham gia nhóm thảo luận Facebook Giảng viên hỗ trợ trực tuyến qua Email, Facebook.', 1, '/imgs/bag/counter-bg.jpg', 'Lập trình iOS Swift cùng các dự án thực tế', 'Học lập trình iOS căn bản và thực hành dành cho mọi đối tượng. Thực hành code ứng dụng ngay tại lớp, sau khóa học có sản phẩm của riêng mình để đăng lên App Store', 'lập trình ios, lập trình mobile, ios swift, lập trình ios căn bản, ios căn bản');
INSERT INTO `course` VALUES (2, 'Khóa học AngularJS', 'Des', 0, '', '', 0, '', '', '', '');
INSERT INTO `course` VALUES (3, 'Khóa học Java Spring & Hibernate - Cùng các bài thực tế', 'Mặc dù nhiều chuyên gia cho rằng ngành lập trình dễ dàng triển khai ở những quốc gia có nguồn nhân lực giá rẻ, giúp cho doanh nghiệp tiết kiệm nhiều chi phí trong các dự án phầm mềm. Nhưng với nhu cầu cực lớn về dự án phầm làm cho các doanh nghiệp đều có kế hoạch tuyển dụng các lập trình viên nhiều nhất trong năm.\r\n\r\nSự phát triển của điện thoại thông minh và internet làm cho nhu cầu kỹ năng lập trình ở bất kỳ dự án nào. Java đang là ngôn ngữ lập trình số 1 cho các giải pháp của doanh nghiệp.\r\n\r\nCác chứng chỉ Oracle Java SE & EE không chỉ cung cấp cấp kỹ năng lập trình mà nâng cao năng lực và khả năng kiến trúc hệ thống. SMAC Workshop này giúp Bạn tiếp cận mảng Java – Hibernate & Spring Framework của Oracle trong thị trường lao động ICT.\r\n\r\nSpring là một framework khá nổi tiếng trong làm các hệ thống thương mại lớn vài năm gần đây. Framework này được yêu cầu bởi nhiều nhà tuyển dụng hàng đầu trong công việc, và đòi hỏi kiến thức chuyên môn cao trong lĩnh vực lập trình thương mại hệ thống.', 6000000, 'Jobber Training cung cấp đầy đủ và chính xác nội dung và thời lượng của khóa học nhằm giúp học viên nắm rõ các nội dung mình được học trước khi tham gia vào khóa học chính thức', 'Khai giảng ngày xxxx, 7h đến 10 tối thứ 3,5 hàng tuần <br>Hỗ trợ trực tiếp Học tại phòng lab Được giảng viên chấm bài và nhận xét Tham gia nhóm thảo luận Facebook Giảng viên hỗ trợ trực tuyến qua Email, Facebook.', 3, '/imgs/bag/counter-bg.jpg', 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế', 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế', 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế');

-- ----------------------------
-- Table structure for course_outline
-- ----------------------------
DROP TABLE IF EXISTS `course_outline`;
CREATE TABLE `course_outline`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `lesson_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_outline
-- ----------------------------
INSERT INTO `course_outline` VALUES (1, 1, 'Bài 1: Ngôn ngữ lập trình Swift (3 lesson)', 0);
INSERT INTO `course_outline` VALUES (2, 1, 'Giới thiệu Xcode - Swift data types, Operators và Expressions ', 1);
INSERT INTO `course_outline` VALUES (3, 1, 'Tổng quan về các hàm Swift - Khái niệm cơ bản về lập trình hướng đối tượng trong Swift', 1);
INSERT INTO `course_outline` VALUES (4, 1, 'Giới thiệu về Subclassing và Extensions trong Swift - Swift collection - Xử lý lỗi trong Swift', 1);
INSERT INTO `course_outline` VALUES (5, 1, 'Bài 2: Views / Layouts / Storyboards(2 lesson)', 0);
INSERT INTO `course_outline` VALUES (6, 1, 'Closures - Structures - Classes - Properties - Inheritance - Init', 5);
INSERT INTO `course_outline` VALUES (7, 1, 'Buổi 3 - Làm quen với các đối tượng trong iOS (3 lesson)', 5);
INSERT INTO `course_outline` VALUES (8, 1, 'Làm quen với Storyboard - Nib - UIView - Frames - Bounds', 7);
INSERT INTO `course_outline` VALUES (9, 1, 'Làm quen với các đối tượng UIButton, UITextField, UIImageView', 7);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `des` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'Hoàng Mạnh Trường', 'Giảng viên các khoá học iOS từ cơ bản đến nâng cao. Gần 5 năm kinh nghiệm làm việc liên tục với các dự án phần mềm Mobile, đặc biệt là iOS. Lập trình viên cao cấp - trưởng nhóm Phát triển Mobile tại FPTSoftware. Từng làm cộng tác viên - chuyên gia Mobile UI/UX cho IBM Ấn độ.', '1.png');
INSERT INTO `teacher` VALUES (3, 'Lê Trọng Dương', 'Giảng viên các khoá học Java từ cơ bản đến nâng cao. Với 10 năm kinh nghiệm làm việc liên tục với các dự án phần mềm Mobile, đặc biệt là iOS. Lập trình viên cao cấp - trưởng nhóm Phát triển Mobile tại FPTSoftware. Từng làm cộng tác viên - chuyên gia Mobile UI/UX cho IBM Ấn độ.', 'duonglt.jpg');

SET FOREIGN_KEY_CHECKS = 1;
