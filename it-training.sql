/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : it-training

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/10/2018 22:30:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
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
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES (1, 'HỌC LẬP TRÌNH IOS CÙNG CÁC DỰ ÁN THỰC TẾ', '<h4>Tại sao bạn nên học iOS-Swift?</h4>\r\n        <p> - Swift là một trong những ngôn ngữ đang phát triển rất mạnh mẽ nhất hiện nay.<br />\r\n          - Lập trình iOS luôn nằm trong Top 10 những công việc có thu nhập khủng và nhiều cơ hội nhất.<br />\r\n          - Nhu cầu tuyển dụng nhân sự từ các công ty rất lớn.<br />\r\n          - Swift có thể sử dụng như một ngôn ngữ để lập trình back-end.<br />\r\n          - Khách hàng của Apple có số lượng “tín đồ” rất cao. Họ quyết định mua app nhanh và không mấy đắn đo.</p>\r\n<h4>Tại sao nên học lập trình tại IT Training?</h4>\r\n        <p> - IT Training cam kết các học viên hoàn thành tốt khóa học sẽ được nhận vào làm tại các công ty phần mềm lớn với mức lương hấp dẫn.<br />\r\n          - Mục tiêu của chúng tôi là giúp các lập trình viên hiểu rõ các bước xây dựng một ứng dụng và tự mình xây dựng ưng dụng riêng cho mình.thông qua các bài toán thực tế.<br />\r\n          - Giáo trình chú trọng đến các vấn đề chính và dành nhiều thời gian cho thực hành thông qua những bài toán thực tế.<br />\r\n          - Mô hình tổ chức khóa học giống trong thực tế, chia thành nhiều team, mỗi team xử lý các vấn đề khác nhau trong dự án, sau đó ghép nối thành 1 dự án cụ thể. Mô hình này giúp học viên nâng cao kỹ năng giải quyết vấn đề và củng cố kiến thức qua các bài toán thực tế.<br />\r\n          - Với đội ngũ giáo diên nhiều năm kinh nghiệm trong lĩnh vực phát triển ứng dụng iOS và đã từng trải qua các dự an thực tế trong và ngoài nước với các công ty, tập đoàn lớn sẽ giúp các bạn thực hiện ước mơ của mình. </p>\n<h4>Đối tượng học viên.</h4>\n	<p>\n	- Tất cả các đối tượng có đam mê lập trình ứng dụng trên thiết bị di động iOS, không giới hạn độ tuổi.<br>\n	- Sinh viên năm cuối khoa công nghệ thông tin.<br>\n	- Người mới đi làm.<br>\n	<b>Chú ý:</b> Yêu cầu Tiếng anh cơ bản (có kiểm tra đầu vào)\n	</p>\n<h4>Thời gian & điạ điểm học</h4>\n....\n<h4>Quyền lợi học viên.</h4>\n	<p>\n	- Được nhật vào làm viêc tại công ty nếu hoàn thành tốt khóa học<br>\n	- Được cung cấp tài liệu học tập miễn phí: Slide giáo trình, mã nguồn ứng dụng.<br>\n	- Được đào tạo các kỹ năng từ môi trường làm việc thực tế tại Doanh nghiệp.<br>\n	- Hỗ trợ kỹ thuật và thiết bị trong suốt quá trình học.<br>\n	- Có trong tay những ứng dụng của chính mình khi hoàn thành khóa học. Đây là một lợi thế cạnh tranh khi bạn đi xin việc.\n	</p>\n<h4>Kết quả đầu ra.</h4>\n	<p>\n	- Có kiến thức về ngôn ngữ lập trình Swift.<br>\n	- Có khả năng phân tích, phát trỉển và phát hành một ứng dụng iOS từ A-Z.<br>\n	- Hiểu các phương pháp khác nhau để phát triển ứng dụng cho iOS.<br>\n	</p>', 6000000, 'Jobber Training cung cấp đầy đủ và chính xác nội dung và thời lượng của khóa học nhằm giúp học viên nắm rõ các nội dung mình được học trước khi tham gia vào khóa học chính thức', 'Khai giảng ngày xxxx, 7h đến 10 tối thứ 3,5 hàng tuần <br>Hỗ trợ trực tiếp Học tại phòng lab Được giảng viên chấm bài và nhận xét Tham gia nhóm thảo luận Facebook Giảng viên hỗ trợ trực tuyến qua Email, Facebook.', 1, '/imgs/bag/counter-bg.jpg', 'Lập trình iOS Swift cùng các dự án thực tế', 'Học lập trình iOS căn bản và thực hành dành cho mọi đối tượng. Thực hành code ứng dụng ngay tại lớp, sau khóa học có sản phẩm của riêng mình để đăng lên App Store', 'lập trình ios, lập trình mobile, ios swift, lập trình ios căn bản, ios căn bản');
INSERT INTO `course` VALUES (2, 'Khóa học AngularJS', 'Des', 0, '', '', 0, '', '', '', '');
INSERT INTO `course` VALUES (3, 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế', 'Mặc dù nhiều chuyên gia cho rằng ngành lập trình dễ dàng triển khai ở những quốc gia có nguồn nhân lực giá rẻ, giúp cho doanh nghiệp tiết kiệm nhiều chi phí trong các dự án phầm mềm. Nhưng với nhu cầu cực lớn về dự án phầm làm cho các doanh nghiệp đều có kế hoạch tuyển dụng các lập trình viên nhiều nhất trong năm.\r\n\r\nSự phát triển của điện thoại thông minh và internet làm cho nhu cầu kỹ năng lập trình ở bất kỳ dự án nào. Java đang là ngôn ngữ lập trình số 1 cho các giải pháp của doanh nghiệp.\r\n\r\nCác chứng chỉ Oracle Java SE & EE không chỉ cung cấp cấp kỹ năng lập trình mà nâng cao năng lực và khả năng kiến trúc hệ thống. SMAC Workshop này giúp Bạn tiếp cận mảng Java – Hibernate & Spring Framework của Oracle trong thị trường lao động ICT.\r\n\r\nSpring là một framework khá nổi tiếng trong làm các hệ thống thương mại lớn vài năm gần đây. Framework này được yêu cầu bởi nhiều nhà tuyển dụng hàng đầu trong công việc, và đòi hỏi kiến thức chuyên môn cao trong lĩnh vực lập trình thương mại hệ thống.', 6000000, 'Jobber Training cung cấp đầy đủ và chính xác nội dung và thời lượng của khóa học nhằm giúp học viên nắm rõ các nội dung mình được học trước khi tham gia vào khóa học chính thức', 'Khai giảng ngày xxxx, 7h đến 10 tối thứ 3,5 hàng tuần <br>Hỗ trợ trực tiếp Học tại phòng lab Được giảng viên chấm bài và nhận xét Tham gia nhóm thảo luận Facebook Giảng viên hỗ trợ trực tuyến qua Email, Facebook.', 3, '/imgs/bag/counter-bg.jpg', 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế', 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế', 'Khóa học Java Spring & Hibernate - Cùng các dự án thực tế');
COMMIT;

-- ----------------------------
-- Table structure for course_outline
-- ----------------------------
DROP TABLE IF EXISTS `course_outline`;
CREATE TABLE `course_outline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `lesson_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course_outline
-- ----------------------------
BEGIN;
INSERT INTO `course_outline` VALUES (1, 1, 'Unit 1: Ngôn ngữ lập trình Swift (3 lesson)', 0);
INSERT INTO `course_outline` VALUES (2, 1, 'Giới thiệu Xcode - Swift data types, Operators và Expressions ', 1);
INSERT INTO `course_outline` VALUES (3, 1, 'Tổng quan về các hàm Swift - Khái niệm cơ bản về lập trình hướng đối tượng trong Swift', 1);
INSERT INTO `course_outline` VALUES (4, 1, 'Giới thiệu về Subclassing và Extensions trong Swift - Swift collection - Xử lý lỗi trong Swift', 1);
INSERT INTO `course_outline` VALUES (5, 1, 'Unit 2: Views / Layouts / Storyboards (6 lesson)', 0);
INSERT INTO `course_outline` VALUES (6, 1, 'Giới thiệu và làm việc với Auto Layout Constraints iOS trong Interface Builder', 5);
INSERT INTO `course_outline` VALUES (7, 1, 'Triển khai Auto Layout Constraints iOS trong ứng dụng', 5);
INSERT INTO `course_outline` VALUES (8, 1, 'Storyboard – Scenes – UINavigation UITabbar', 5);
INSERT INTO `course_outline` VALUES (9, 1, 'UITableView\n•	Custom UITableViewCell\n', 5);
INSERT INTO `course_outline` VALUES (10, 1, 'UICollectionView \n•	Custom UICollectionViewCell\n•	UICollectionViewLayout\n', 5);
INSERT INTO `course_outline` VALUES (11, 1, 'StackView \n•	UIPageViewController\n', 5);
INSERT INTO `course_outline` VALUES (12, 1, 'Unit 3: Design patterns (1 lesson)', 0);
INSERT INTO `course_outline` VALUES (13, 1, 'Singleton\n•	Delegate/Protocol\n•	MVC\n•	MVVM\n•	Một số design pattern khác', 12);
INSERT INTO `course_outline` VALUES (14, 1, 'Unit 4: Networking + Multiple thread (1 lesson)', 0);
INSERT INTO `course_outline` VALUES (15, 1, 'URLSession\n•	Alamofire - Parse JSON với Swifty JSON và Codable trong swift 4\n', 14);
INSERT INTO `course_outline` VALUES (16, 1, 'Unit 5: Database (3 lesson)', 0);
INSERT INTO `course_outline` VALUES (17, 1, 'Documents\n•	Core data\n•	Plist', 16);
INSERT INTO `course_outline` VALUES (18, 1, 'Làm việc với Realm \n', 16);
INSERT INTO `course_outline` VALUES (19, 1, 'Firebase', 16);
INSERT INTO `course_outline` VALUES (20, 1, 'Unit 6: Liên kết với mạng xã hội (1 lesson)', 0);
INSERT INTO `course_outline` VALUES (21, 1, 'Facebook\n•	Twiiter\n•	Google\n•	Share extension\n', 20);
INSERT INTO `course_outline` VALUES (22, 1, 'Unit 7: Multimedia (3 lesson)', 0);
INSERT INTO `course_outline` VALUES (23, 1, 'Truy cập Camera của iOS và Photo Library\n•	Lập trình ứng dụng chụp và chỉnh sửa ảnh', 22);
INSERT INTO `course_outline` VALUES (25, 1, 'Play local multimedia\n•	Play online multimedia\n•	Playback controller', 22);
INSERT INTO `course_outline` VALUES (26, 1, 'Play online multimedia\n•	Playback controller', 22);
INSERT INTO `course_outline` VALUES (27, 1, 'Unit 8: Core location – MapKit (2 lesson)', 0);
INSERT INTO `course_outline` VALUES (28, 1, 'Current location\n•	Giới thiệu về MapKit', 27);
INSERT INTO `course_outline` VALUES (29, 1, 'Google Map', 27);
INSERT INTO `course_outline` VALUES (30, 1, 'Unit 9: Basic animations (2 lesson)', 0);
COMMIT;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `des` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES (1, 'Hoàng Mạnh Trường', 'Giảng viên các khoá học iOS từ cơ bản đến nâng cao. Gần 5 năm kinh nghiệm làm việc liên tục với các dự án phần mềm Mobile, đặc biệt là iOS. Lập trình viên cao cấp - trưởng nhóm Phát triển Mobile tại FPTSoftware. Từng làm cộng tác viên - chuyên gia Mobile UI/UX cho IBM Ấn độ.', '1.png');
INSERT INTO `teacher` VALUES (3, 'Lê Trọng Dương', 'Giảng viên các khoá học Java từ cơ bản đến nâng cao. Với 10 năm kinh nghiệm làm việc liên tục với các dự án phần mềm Mobile, đặc biệt là iOS. Lập trình viên cao cấp - trưởng nhóm Phát triển Mobile tại FPTSoftware. Từng làm cộng tác viên - chuyên gia Mobile UI/UX cho IBM Ấn độ.', 'duonglt.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
