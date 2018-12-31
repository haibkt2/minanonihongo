-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2018 lúc 06:52 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `minanonihongo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
('COURSELVN1', 'N1'),
('COURSELVN2', 'N2'),
('COURSELVN3', 'N3'),
('COURSELVN4', 'N4'),
('COURSELVN5', 'N5'),
('COURSELVN6', 'Alphabet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_fun`
--

CREATE TABLE `course_fun` (
  `course_fun_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `course_fun_type_id` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `course_fun_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_fun_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_fun_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_course_fun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_fun`
--

INSERT INTO `course_fun` (`course_fun_id`, `create_date`, `update_date`, `course_fun_type_id`, `course_fun_content`, `course_fun_img`, `course_fun_title`, `view_course_fun`) VALUES
('CFUN00001', '2018-12-30 00:00:00', '2018-12-30 00:00:00', '1', '<p>ddd</p>\r\n', NULL, 'dsadd', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_fun_type`
--

CREATE TABLE `course_fun_type` (
  `course_fun_type_id` varchar(1) CHARACTER SET utf8 NOT NULL,
  `course_fun_type_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_fun_type`
--

INSERT INTO `course_fun_type` (`course_fun_type_id`, `course_fun_type_name`) VALUES
('1', 'Truyện Tranh Nhật Bản'),
('2', 'Đố Vui Tiếng Nhật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_global`
--

CREATE TABLE `course_global` (
  `course_gb_id` varchar(13) CHARACTER SET utf8 NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `total_number` int(11) NOT NULL DEFAULT '0',
  `update_date` datetime DEFAULT NULL,
  `course_ilm_id` varchar(11) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_global`
--

INSERT INTO `course_global` (`course_gb_id`, `create_date`, `total_number`, `update_date`, `course_ilm_id`) VALUES
('GBN5COURSE000', '2018-10-09 00:00:00', 50, '2018-12-29 00:00:00', 'N5COURSE000'),
('GBN5COURSE001', '2018-10-09 00:00:00', 158, '2018-12-31 00:00:00', 'N5COURSE001'),
('GBN5COURSE002', '2018-10-09 00:00:00', 148, '2018-12-29 00:00:00', 'N5COURSE002'),
('GBN5COURSE003', '2018-10-09 00:00:00', 20, NULL, 'N5COURSE003'),
('GBN5COURSE004', '2018-10-09 00:00:00', 17, NULL, 'N5COURSE004'),
('GBN5COURSE005', '2018-10-09 00:00:00', 64, NULL, 'N5COURSE005'),
('GBN5COURSE006', '2018-10-09 00:00:00', 11, NULL, 'N5COURSE006'),
('GBN5COURSE007', '2018-10-09 00:00:00', 45, NULL, 'N5COURSE007'),
('GBNJCOURSE009', '2018-12-25 00:00:00', 32, '2018-12-29 00:00:00', 'N4COURSE001'),
('GBNJCOURSE012', '2018-12-26 00:00:00', 113, '2018-12-29 00:00:00', 'N6COURSE000'),
('GBNJCOURSE013', '2018-12-29 00:00:00', 2, '2018-12-29 00:00:00', 'N2COURSE001'),
('GBNJCOURSE014', '2018-12-29 00:00:00', 113, '2018-12-29 00:00:00', 'N6COURSE001'),
('GBNJCOURSE015', '2018-12-29 00:00:00', 6, '2018-12-29 00:00:00', 'N6COURSE002'),
('GBNJCOURSE016', '2018-12-29 00:00:00', 28, '2018-12-30 00:00:00', 'N4COURSE002'),
('GBNJCOURSE019', '2018-12-30 00:00:00', 0, '2018-12-30 00:00:00', 'N1COURSE001'),
('GBNJCOURSE020', '2018-12-30 00:00:00', 2, '2018-12-30 00:00:00', 'N3COURSE001'),
('GBNJCOURSE021', '2018-12-31 00:00:00', 1, '2018-12-31 00:00:00', 'N3COURSE002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_ilm`
--

CREATE TABLE `course_ilm` (
  `course_ilm_id` varchar(11) NOT NULL,
  `course_ilm_flg` varchar(1) DEFAULT NULL,
  `course_ilm_type_id` varchar(1) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `introduce` text,
  `lesson_name` text,
  `loca_file_course` varchar(100) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `loca_file_img` varchar(100) DEFAULT NULL,
  `script` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `course_ilm`
--

INSERT INTO `course_ilm` (`course_ilm_id`, `course_ilm_flg`, `course_ilm_type_id`, `create_date`, `introduce`, `lesson_name`, `loca_file_course`, `update_date`, `course_id`, `user_id`, `loca_file_img`, `script`) VALUES
('N1COURSE001', '1', '1', '2018-12-30 00:00:00', '<p><em>Xin ch&agrave;o c&aacute;c bạn.!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ch&agrave;o mừng c&aacute;c bạn tới với kh&oacute;a học N1 - Đỉnh n&uacute;i cao nhất của tiếng Nhật</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đ&atilde; tới đ&acirc;y th&igrave; chắc bạn cũng sẽ cảm thấy tiếng Nhật cũng kh&ocirc;ng phải kh&oacute; đ&uacute;ng kh&ocirc;ng n&agrave;o . Đ&ugrave;a th&ocirc;i, để đến được ng&agrave;y h&ocirc;m nay bạn đ&atilde; nổ lực một c&aacute;ch chăm chỉ v&agrave; đầy c&oacute; gắng, h&atilde;y th&ecirc;m ch&uacute;t nữa để chinh phục ngọn n&uacute;i cao nhất n&agrave;y nh&eacute;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Danh s&aacute;ch c&aacute;c b&agrave;i học N1 được bi&ecirc;n soạn bởi c&aacute;c thầy c&ocirc; trong v&agrave; ngo&agrave;i nước, với nhiều năm kinh nghiệm hy vọng sẽ đem lại cho bạn những b&agrave;i học bổ &iacute;ch v&agrave; th&uacute; vị,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>　<strong>Mọi người 頑張って。(Cố l&ecirc;n nh&eacute;.)</strong></p>\r\n', 'Giới thiệu khóa học N1', NULL, '2018-12-30 00:00:00', 'COURSELVN1', 'USER00000000001', 'cr-N1.jpg', ''),
('N2COURSE001', '1', '1', '2018-09-30 00:00:00', '<p>Giới thiệu phương ph&aacute;p lộ tr&igrave;nh học</p>\r\n', 'Giới thiệu phương pháp lộ trình học', 'Bai-1.mp4', '2018-12-04 00:00:00', 'COURSELVN2', 'USER00000000001', 'N2-bai0.jpg', ''),
('N3COURSE001', '1', '1', '2018-12-30 00:00:00', '<p><em>Xin ch&agrave;o c&aacute;c bạn.!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ch&agrave;o mừng c&aacute;c bạn tới với kh&oacute;a học N3&nbsp; của website học tiếng Nhật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; C&aacute;c bạn đ&atilde; học qua gi&aacute;o tr&igrave;nh minano nihongo với to&agrave;n bộ 50 b&agrave;i học th&uacute; vị.Kh&oacute;a N3 sẽ bắt đầu cho tr&igrave;nh độ tiếng Nhật trung cấp, kh&oacute; hơn một ch&uacute;t. V&igrave; vậy h&atilde;y cố gắng nhiều hơn nh&eacute;,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>　<strong>皆さん、頑張って。(Cố l&ecirc;n nh&eacute;.)</strong></p>\r\n', 'Mở đầu N3', NULL, '2018-12-30 00:00:00', 'COURSELVN3', 'USER00000000001', 'c-N1.jpg', ''),
('N3COURSE002', '1', '1', '2018-12-31 00:00:00', '<p>dsadsssssssss</p>\r\n', 'aaaaaaaaaaa', NULL, '2018-12-31 00:00:00', 'COURSELVN3', 'USER00000000001', NULL, '<p>dsaaaaaaaaaa</p>\r\n'),
('N4COURSE001', '1', '1', '2018-09-30 00:00:00', '<p><em>Xin ch&agrave;o c&aacute;c bạn.!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ch&agrave;o mừng c&aacute;c bạn tới với kh&oacute;a học N４&nbsp; của website học tiếng Nhật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; C&aacute;c bạn đ&atilde; học qua gi&aacute;o tr&igrave;nh Minano nihongo từ b&agrave;i số 1 tới b&agrave;i 25. B&acirc;y giờ ch&uacute;ng ta sẽ tiếp tục học 25 b&agrave;i c&ograve;n lại.V&agrave; cũng như&nbsp;kh&oacute;a N5 , để học đem lại c&oacute;&nbsp;hiểu qủa cao nhất, h&atilde;y hết hợp học từ mới, học xem hội thoại v&agrave; l&agrave;m b&agrave;i tập sau mỗi kh&oacute;a học. Nếu c&oacute; vấn đề g&igrave; thắc mắc h&atilde;y để lại b&igrave;nh luận ph&iacute;a dưới cho ch&uacute;ng t&ocirc;i nh&eacute;.H&atilde;y bắt đầu bước v&agrave;o c&aacute;c b&agrave;i học để học th&ocirc;i.!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>　<strong>皆さん、頑張って。(Cố l&ecirc;n nh&eacute;.)</strong></p>\r\n', 'Mở đầu khóa học N4', NULL, '2018-12-29 00:00:00', 'COURSELVN4', 'USER00000000001', 'jpp41.jpg', ''),
('N4COURSE002', '1', '2', '2018-12-29 00:00:00', '<p><strong>PHẦN I :&nbsp;</strong><span style=\"color:#c0392b\">～んです</span></p>\r\n\r\n<p><strong>Cấu tr&uacute;c :&nbsp;</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><img alt=\"\" src=\"https://localhost:8888/public/image/images/bai26_01.png\" /></p>\r\n\r\n<p><strong>&Yacute; nghĩa :&nbsp;</strong></p>\r\n\r\n<p style=\"margin-left:40px\">- X&aacute;c nhận lại th&ocirc;ng tin, tr&igrave;nh b&agrave;y ph&aacute;n đo&aacute;n của người n&oacute;i th&ocirc;ng qua một căn cứ n&agrave;o đ&oacute;.</p>\r\n\r\n<p style=\"margin-left:40px\">- B&agrave;y tỏ sự quan t&acirc;m đến đối phương hoặc một vấn đề n&agrave;o đ&oacute;.</p>\r\n\r\n<p style=\"margin-left:40px\">-&nbsp;Tr&igrave;nh b&agrave;y nguy&ecirc;n nh&acirc;n, l&iacute; do.</p>\r\n\r\n<p style=\"margin-left:40px\"><em>Ch&uacute; &yacute;: Kh&ocirc;ng d&ugrave;ng cho người kh&ocirc;ng th&acirc;n.</em></p>\r\n\r\n<p><em>V&iacute; dụ :</em></p>\r\n\r\n<p style=\"margin-left:40px\">X&aacute;c nhận lại th&ocirc;ng tin, tr&igrave;nh b&agrave;y ph&aacute;n đo&aacute;n của người n&oacute;i th&ocirc;ng qua một căn cứ n&agrave;o đ&oacute;.</p>\r\n\r\n<p style=\"margin-left:40px\">A: Bさんは　時々大阪弁を使いますね。大阪に住んでいたんですか。</p>\r\n\r\n<p style=\"margin-left:40px\">B:ええ、１５さいまで 大阪に住んでいました。</p>\r\n\r\n<p style=\"margin-left:40px\">A: B thỉnh thoảng sử dụng tiếng Osaka ha. Đ&atilde; từng sống ở Osaka hả?</p>\r\n\r\n<p style=\"margin-left:40px\">B: Ừ,&nbsp; T&ocirc;i đ&atilde; sống ở Osaka đến năm 15 tuổi.</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\"><strong>*</strong>&nbsp;Tr&igrave;nh b&agrave;y nguy&ecirc;n nh&acirc;n, l&iacute; do.</p>\r\n\r\n<p style=\"margin-left:40px\"><img alt=\"\" src=\"https://localhost:8888/public/image/images/bai26_02.png\" style=\"height:117px; width:311px\" /></p>\r\n\r\n<p style=\"margin-left:40px\">A:　どうして　遅れたんですか。</p>\r\n\r\n<p style=\"margin-left:40px\">B：バスが　来なかったんです。</p>\r\n\r\n<p style=\"margin-left:40px\">A: Tại sao đến trễ vậy?</p>\r\n\r\n<p style=\"margin-left:40px\">B: L&agrave; v&igrave; xe bu&yacute;t kh&ocirc;ng đến.</p>\r\n', 'Bài 26 : どこにゴミを出したらいいですか。', 'kaiwa-bai2.mp4', '2018-12-30 00:00:00', 'COURSELVN4', 'USER00000000001', 'post2.jpg', ''),
('N5COURSE000', '1', '1', '2018-10-11 00:00:00', '<p style=\"margin-left:40px; text-align:justify\"><em><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Xin ch&agrave;o c&aacute;c bạn.!</span></span></em></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ch&agrave;o mừng c&aacute;c bạn tới với kh&oacute;a học N5 - N5 nơi t&igrave;nh y&ecirc;u học tiếng Nhật bắt đầu. !</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Danh s&aacute;ch c&aacute;c b&agrave;i học N5 được bi&ecirc;n soạn theo gi&aacute;o tr&igrave;nh Minano nihongon. C&aacute;c bạn c&oacute; thể tải gi&aacute;o tr&igrave;nh về để kết hợp v&agrave; học tập thật tốt nh&eacute;.H&atilde;y nhớ rằng sự khởi đầu l&uacute;c n&agrave;o sẽ vất v&atilde; nhưng th&agrave;nh c&ocirc;ng sẽ đem lại những th&agrave;nh quả kh&ocirc;ng ngờ.</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">　　Để học được kh&oacute;a N5 một c&aacute;ch hiểu của nhất, trước ti&ecirc;n c&aacute;c bạn h&atilde;y học thật tốt v&agrave; nhớ hết c&aacute;c bảng chữ c&aacute;i.Khi đ&atilde; học thuộc v&agrave; đọc được bảng chữ c&aacute;i, h&atilde;y bắt đầu bước v&agrave;o c&aacute;c b&agrave;i học để học th&ocirc;i.!</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">　　 <span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đầu ti&ecirc;n c&aacute;c bạn h&atilde;y học từ mới, mỗi từ mới sẽ c&oacute; một audio cung cấp cho c&aacute;c bạn c&aacute;ch đọc một c&aacute;ch ch&iacute;nh x&aacute;c nhất.Sau đ&oacute; h&atilde;y qua phần Ngữ Ph&aacute;p v&agrave; xem một đoạn video hội thoại ngắn, xem người Nhật giao tiếp như n&agrave;o.V&agrave; cuối c&ugrave;ng để cũng cố lại kiến thức h&atilde;y l&agrave;m b&agrave;i &ocirc;n tập để xem kiến thức m&igrave;nh học được tới đ&acirc;u nh&eacute;.</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">　<strong>皆さん、頑張って。(Cố l&ecirc;n nh&eacute;.)</strong></span></span></p>\r\n', 'Tài liệu học N5', 'N5-Bai-0.mp4', '2018-12-29 00:00:00', 'COURSELVN5', 'USER00000000001', 'hoc-tieng-nhat-N5.jpg', ''),
('N5COURSE001', '1', '2', '2018-10-11 00:00:00', '<p style=\"margin-left:40px\"><strong><span style=\"font-size:16px\">Phần I : Cấu tr&uacute;c khẳng định - phủ định :</span></strong></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">Khẳng định : 　N　は　～<span style=\"color:#d35400\">です</span><span style=\"color:#000000\"> ( l&agrave; ~ )</span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">Phủ định : 　　N　は　～<span style=\"color:#c0392b\">ません</span><span style=\"color:#000000\"> ( kh&ocirc;ng phải l&agrave; ~ )</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><em><span style=\"font-size:14px\">V&iacute; dụ :</span></em></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">わたしたは　がくせいです（ t&ocirc;i l&agrave; học sinh)</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">わたしたは　がくせいません（ t&ocirc;i kh&ocirc;ng phải l&agrave; học sinh)</span></p>\r\n\r\n<p style=\"margin-left:40px\"><strong><span style=\"font-size:16px\">Phần II : Trở từ は</span></strong></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">～　は　～</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">Giới thiệu 1 đề t&agrave;i n&agrave;o đ&oacute; m&agrave; người n&oacute;i muốn đề cập.N&oacute; đung để ph&acirc;n c&aacute;ch chủ ngữ v&agrave; vị ngữ trong c&acirc;u</span></p>\r\n\r\n<p style=\"margin-left:40px\"><strong><span style=\"font-size:16px\">Phần III : C&acirc;u nghi vấn</span></strong></p>\r\n\r\n<p style=\"margin-left:80px\"><img alt=\"\" src=\"https://localhost:8888/public/image/images/B01_02.png\" style=\"height:242px; width:652px\" /></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><em>V&iacute; dụ :</em></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">あなたは　がくせいですか？（ bạn l&agrave; học sinh phải kh&ocirc;ng?)</span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:16px\"><strong>Phần IV : Trợ từ も</strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">~ Cũng ~</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\"><em>Ch&uacute; &yacute;:&nbsp;</em><em>Được d&ugrave;ng khi c&oacute; yếu tố được lặp lại. Khi yếu tố lặp lại mất đi th&igrave;&nbsp;</em><em>も</em><em>&nbsp;cũng mất đi.</em></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><em>V&iacute; dụ :&nbsp;</em></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">A: たなかさん<strong>は&nbsp;じゅうはっさい</strong>です。やまださん<strong>も</strong>&nbsp;じゅうはっさいですか。</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">B: いいえ、やまださん<strong>は</strong>&nbsp;はたちです。</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">A: Tanaka mười t&aacute;m tuổi. Yamada cũng mười t&aacute;m tuổi phải kh&ocirc;ng?</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">B: Kh&ocirc;ng, Yamada hai mươi tuổi.</span></p>\r\n', 'Bài 1 - はじめまして（Chào hỏi, giới thiệu bản thân）', 'kaiwa-bai1.mp4', '2018-12-31 00:00:00', 'COURSELVN5', 'USER00000000001', 'bai1-chao-hoi-gioi-thieu-ban-than.jpg', '<div class=\"title-kaiwa\">\r\n<div class=\"item-japanese\" style=\"text-align:center\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\">はじめまして</span></span></div>\r\n\r\n<div class=\"item-roumaji\" style=\"text-align:center\"><span style=\"font-size:18px\">hajimemashite</span></div>\r\n\r\n<div class=\"item-vietnamese\" style=\"text-align:center\"><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Rất vui được l&agrave;m quen với chị.</span></span></div>\r\n\r\n<div class=\"item-vietnamese\" style=\"text-align:center\">&nbsp;</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">佐藤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; おはよう　ございます。</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">satou&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ohayou gozai masu.</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:200px\">Ch&agrave;o anh!</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">\r\n<hr /></div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">佐藤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; おはよう　ございます。</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">yamada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ohayou gozai masu.</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:200px\">Ch&agrave;o chị!</div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">\r\n<hr /></div>\r\n\r\n<div class=\"item-vietnamese\" style=\"margin-left:80px\">\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">山田&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 佐藤さん、こちらは　マイク・ミラーさんです。</div>\r\n\r\n<div class=\"item-roumaji\">yamada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; satou san, kochira ha maiku. mira san desu.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">Chị Sato, đ&acirc;y l&agrave; anh Mike Miller.</div>\r\n\r\n<div class=\"item-vietnamese\">\r\n<hr /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">ミラー&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 初めまして。</div>\r\n\r\n<div class=\"item-roumaji\">mira&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hajime mashite.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">Rất vui được l&agrave;m quen với chị.</div>\r\n\r\n<div class=\"item-vietnamese\">\r\n<hr /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">ミラー&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; マイク・ミラーです。</div>\r\n\r\n<div class=\"item-roumaji\">mira&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maiku. mira desu.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">T&ocirc;i l&agrave; Mike Miller.</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">\r\n<hr /></div>\r\n\r\n<div class=\"item-character\">ミラー&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; アメリカから　来ました。</div>\r\n\r\n<div class=\"item-roumaji\">mira&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; amerika kara ki mashi ta.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">T&ocirc;i đến từ Mỹ.</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">\r\n<hr /></div>\r\n\r\n<div class=\"item-character\">ミラー&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; どうぞ　よろしく。</div>\r\n\r\n<div class=\"item-roumaji\">mira&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; douzo yoroshiku.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">Rất mong sẽ nhận được sự gi&uacute;p đỡ của chị.</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">\r\n<hr /></div>\r\n\r\n<div class=\"item-character\">佐藤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 佐藤けい子です。</div>\r\n\r\n<div class=\"item-roumaji\">satou&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; satou keiko desu.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">T&ocirc;i l&agrave; Sato Keiko.</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"list-kaiwa\">\r\n<div>\r\n<div class=\"kaiwa-left\">\r\n<div class=\"item-character\">\r\n<hr /></div>\r\n\r\n<div class=\"item-character\">佐藤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; どうぞ　よろしく。</div>\r\n\r\n<div class=\"item-roumaji\">satou&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; douzo yoroshiku.</div>\r\n</div>\r\n\r\n<div class=\"kaiwa-right\">\r\n<div class=\"item-vietnamese\" style=\"margin-left:120px\">Rất vui được l&agrave;m quen với anh.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n'),
('N5COURSE002', '1', '2', '2018-10-11 00:00:00', '<p style=\"margin-left:40px\"><span style=\"font-size:16px\"><strong>Phần I : C&acirc;u hỏi x&aacute;c nhận</strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:16px\"><strong><img alt=\"\" src=\"https://localhost:8888/public/image/images/Bai02_01.png\" style=\"height:128px; width:513px\" /></strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">~ Đ&acirc;y l&agrave; dạng c&acirc;u hỏi x&aacute;c nhận.</span></p>\r\n\r\n<p style=\"margin-left:80px\"><em><span style=\"font-size:14px\">Ch&uacute; &yacute;: Khi trả lời phải c&oacute; はい hoặc l&agrave; いいえ</span></em></p>\r\n\r\n<p style=\"margin-left:40px\"><em><span style=\"font-size:14px\">V&iacute; dụ :</span></em></p>\r\n\r\n<p style=\"margin-left:80px\">A:これは　しんぶんですか。</p>\r\n\r\n<p style=\"margin-left:80px\">B: はい、それは　しんぶんです。</p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">A: Đ&acirc;y l&agrave; tờ b&aacute;o phải kh&ocirc;ng?</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">B: V&acirc;ng, đ&oacute; l&agrave; tờ b&aacute;o.</span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:16px\"><strong>Phần II : C&acirc;u hỏi với Nghi vấn.</strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:16px\"><strong><img alt=\"\" src=\"https://localhost:8888/public/image/images/Bai02_03.png\" style=\"height:163px; width:513px\" /></strong></span></p>\r\n\r\n<p style=\"margin-left:80px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">~ Đ&acirc;y l&agrave; dạng c&acirc;u hỏi c&oacute; sử dụng Nghi vấn từ. Nghi vấn từ l&agrave; c&aacute;c từ d&ugrave;ng để hỏi v&iacute; dụ như: ai? c&aacute;i g&igrave;? ở đ&acirc;u?...</span></p>\r\n\r\n<p style=\"margin-left:80px\"><em><span style=\"font-size:14px\">Ch&uacute; &yacute;: Đối với dạng c&acirc;u hỏi n&agrave;y ch&uacute;ng ta sẽ trả lời trực tiếp m&agrave; kh&ocirc;ng c&oacute; はい hay l&agrave; いいえ.</span></em></p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;<span style=\"font-size:16px\"><strong>Phần III :&nbsp;これ：c&aacute;i n&agrave;y, đ&acirc;y　／　それ：c&aacute;i đ&oacute;, đ&oacute;　／　あれ：c&aacute;i kia, kia</strong></span>&nbsp;</p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:16px\"><strong><img alt=\"\" src=\"https://localhost:8888/public/image/images/Bai02_05b.png\" style=\"height:88px; width:399px\" /></strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">これ：c&aacute;i n&agrave;y, đ&acirc;y　／　それ：c&aacute;i đ&oacute;, đ&oacute;　／　あれ：c&aacute;i kia, kia</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">このN：N n&agrave;y</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">そのN：N đ&oacute;</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">あのN：N kia</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">Ch&uacute; &yacute;: これ、それ、あれ：Chỉ d&ugrave;ng cho vật.</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">このN、そのN、あのN：D&ugrave;ng được cho cả người v&agrave; vật. Lu&ocirc;n đi c&ugrave;ng với một danh từ.</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">►C&aacute;ch sử dụng:</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">これ、このN：D&ugrave;ng khi vật ở gần người n&oacute;i.</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">それ、そのN：D&ugrave;ng khi vật ở xa người n&oacute;i, gần người nghe.</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">あれ、あのN：D&ugrave;ng khi vật ở xa cả người n&oacute;i v&agrave; người nghe.</span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:16px\"><strong>Phần IV :&nbsp;Nghi vấn từ なんの</strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:16px\"><strong><img alt=\"\" src=\"https://localhost:8888/public/image/images/Bai02_05d.png\" style=\"height:114px; width:466px\" /></strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">~ N về c&aacute;i g&igrave;?</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">Ch&uacute; &yacute;: なんのN: d&ugrave;ng để hỏi về t&iacute;nh chất. N<sub>1&nbsp;</sub>thường l&agrave; những từ chỉ về t&iacute;nh chất,chủng loại.</span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:16px\"><strong>Phần V :&nbsp;Nghi vấn từ どこの</strong></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">A:～は　どこの&nbsp;Nですか。<br />\r\n<br />\r\nB:～は&nbsp;N1の&nbsp;Nです。</span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><em>V&iacute; dụ :</em></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">A:　これは　どこの　ワインですか。</span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"font-size:14px\">B:　フランスの　ワインです。</span></p>\r\n', 'Bai 2 - これ(Cái này)、それ(Cái kia)、あれ(Cái đó)、どれ？(Cái nào?)', 'kaiwa-bai2.mp4', '2018-12-29 00:00:00', 'COURSELVN5', 'USER00000000001', 'bai2-cai-nay-cai-kia-o-dau.jpg', ''),
('N5COURSE003', '1', '2', '2018-10-11 00:00:00', '', 'Bai 3 - ここ（Ở đây)、そこ(Ở đó)、あそこ(Ở kia)、どこ？(Ở đâu)', 'N5-Bai3.mp4', '2018-12-09 00:00:00', 'COURSELVN5', 'USER00000000001', 'bai3-o-day-o-do-o-kia.jpg', ''),
('N5COURSE004', '1', '2', '2018-10-11 06:00:00', NULL, 'Bai 4 - いまは、なんじですか？(Bây giờ là mấy giờ?)', 'N5-Bai4.mp4', NULL, 'COURSELVN5', 'USER00000000001', 'bai4-bay-gio-la-may-gio.jpg', ''),
('N5COURSE005', '1', '2', '2018-10-11 00:00:00', '', 'Bài 5 - こうえんへ　行きますか？（Bạn đi tới công viên không?)', 'N5-Bai5.mp4', '2018-12-09 00:00:00', 'COURSELVN5', 'USER00000000001', 'bai5-kouen-e-ikimasu.jpg', ''),
('N5COURSE006', '1', '2', '2018-10-11 00:00:00', '', 'Bài 6 - いっしょにいきませんか？（Cùng đi không？)', 'N5-Bai5.mp4', '2018-12-09 00:00:00', 'COURSELVN5', 'USER00000000001', 'bai6-cung-di-nhe.jpg', ''),
('N5COURSE007', '1', '2', '2018-10-11 00:00:00', '', 'Bài 7 - ごめんください。(Xin phép..)', 'N5-Bai7.mp4', '2018-12-09 00:00:00', 'COURSELVN5', 'USER00000000001', 'bai7-xin-thu-loi.jpg', ''),
('N6COURSE000', '1', '1', '2018-10-11 00:00:00', '<p style=\"margin-left:40px; text-align:justify\"><em><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Xin ch&agrave;o c&aacute;c bạn.!</span></span></em></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ch&agrave;o mừng c&aacute;c bạn tới với Website học tiếng Nhật. Để bắt đầu một ng&ocirc;n ngữ mới - ng&ocirc;n ngữ tiếng Nhật, ch&uacute;ng ta sẽ c&ugrave;ng nhau t&igrave;m hiểu về bảng chữ c&aacute;i tiếng Nhật.</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tiếng Nhật c&oacute; 3&nbsp;loại chữ :</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\">- Chữ Kanji : Đ&acirc;y l&agrave; loại chữ kh&oacute; học nhất , nhưng nếu bạn muốn giỏi tiếng Nhật th&igrave; bắt buộc phải học thật giỏi n&oacute;. Kanji được d&ugrave;ng hầu hết tr&ecirc;n c&aacute;c b&aacute;o, s&aacute;ch vở ..</p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\">- Chữ Hiragana : Chữ c&aacute;i phi&ecirc;n &acirc;m ra của chữ Kanji. Đ&acirc;y l&agrave; bảng chữ c&aacute;i ch&uacute;ng ta sẽ học đầu ti&ecirc;n.</p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\">- Chữ Katakana : Chữ phi&ecirc;n &acirc;m c&aacute;c từ nước ngo&agrave;i m&agrave; tiếng Nhật kh&ocirc;ng c&oacute;. Cũng rất quan trọng đấy.</p>\r\n\r\n<p style=\"margin-left:80px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Để học tốt v&agrave; tạo tiền đề t&igrave;m hiểu nhiều hơn về tiếng Nhật , đầu ti&ecirc;n c&aacute;c bạn h&atilde;y học v&agrave; nhớ thật kỹ 2 bảng hiragana v&agrave; katakana trước đ&atilde; nh&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">　<strong>皆さん、 頑張って。(Mọi người , cố l&ecirc;n nh&eacute;.)</strong></span></span></p>\r\n', 'Giới thiệu về bảng chữ cái', NULL, '2018-12-29 00:00:00', 'COURSELVN6', 'USER00000000001', 'chu-cai-tieng-nhat.png', ''),
('N6COURSE001', '1', '5', NULL, '<p>46 chữ c&aacute;i Hiragana - &acirc;m đơn</p>\r\n', 'Bảng chữ cái hiragana - Phần 1', NULL, '2018-12-29 00:00:00', 'COURSELVN6', 'USER00000000001', NULL, ''),
('N6COURSE002', '1', '7', NULL, '<p style=\"margin-left:40px\">1.&nbsp;いただきます (T&ocirc;i xin nhận, c&acirc;u n&oacute;i trước khi ăn)</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">2.&nbsp;ごちそうさまでした (C&aacute;m ơn (sau khi ăn))</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">3.&nbsp;はじめましょう (Bắt đầu th&ocirc;i)</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">4.&nbsp;おわりましょう (Kết th&uacute;c th&ocirc;i)</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">5.&nbsp;おつかれさまでした (Ch&agrave;o hỏi (khi kết th&uacute;c c&ocirc;ng việc trong ng&agrave;y)</p>\r\n', 'Giao tiếp hằng ngày - Những câu chào đơn giản', NULL, '2018-12-29 00:00:00', 'COURSELVN6', 'USER00000000001', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_ilm_type`
--

CREATE TABLE `course_ilm_type` (
  `course_ilm_type_id` varchar(1) NOT NULL,
  `course_ilm_type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `course_ilm_type`
--

INSERT INTO `course_ilm_type` (`course_ilm_type_id`, `course_ilm_type_name`) VALUES
('1', 'Giới thiệu'),
('2', 'Kiến thức ngữ pháp cụ thể'),
('3', 'Chữ Hán'),
('4', 'Luyện nghe'),
('5', 'Bảng chữ cái Hinagara'),
('6', 'Bảng chữ cái Katakana'),
('7', 'Các bài học thú vị khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document`
--

CREATE TABLE `document` (
  `doc_id` varchar(7) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `doc_flg` varchar(1) DEFAULT NULL,
  `loca_file_doc` varchar(100) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `total_download` int(11) NOT NULL DEFAULT '0',
  `descrip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `document`
--

INSERT INTO `document` (`doc_id`, `create_date`, `doc_flg`, `loca_file_doc`, `update_date`, `course_id`, `user_id`, `total_download`, `descrip`) VALUES
('DOC0000', '2018-12-25 00:00:00', NULL, 'giao-trinh-mina-b1-25.zip', '2018-12-25 00:00:00', 'COURSELVN5', 'USER00000000001', 0, 'Giáo trình học Mina N5'),
('DOC0001', '2018-12-25 00:00:00', NULL, 'giao-trinh-mina-b25-b50.zip', '2018-12-25 00:00:00', 'COURSELVN4', 'USER00000000001', 0, 'Giáo trình Mina N4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam`
--

CREATE TABLE `exam` (
  `exam_id` varchar(13) NOT NULL,
  `exam_name` varchar(50) DEFAULT NULL,
  `course_ilm_id` varchar(11) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam`
--

INSERT INTO `exam` (`exam_id`, `exam_name`, `course_ilm_id`, `user_id`) VALUES
('EXAMEC0000001', 'Bài Tập', 'N5COURSE001', 'USER00000000001'),
('EXAMEC0000002', 'Bài Tập', 'N5COURSE002', 'USER00000000001'),
('EXAMEC0000003', 'Bài Tập', 'N5COURSE003', 'USER00000000001'),
('EXAMEC0000004', 'Bài tập', 'N5COURSE004', 'USER00000000001'),
('EXAMEC0000005', 'Bài Tập', 'N5COURSE005', 'USER00000000001'),
('EXAMEC0000006', 'Bài Tập', 'N5COURSE006', 'USER00000000001'),
('EXAMEC0000007', 'Bài Tập', 'N5COURSE007', 'USER00000000001'),
('EXAMEC0000008', 'Bài Tập', 'N4COURSE002', 'USER00000000001'),
('EXAMEC0000009', 'Bài Tập', 'N3COURSE002', 'USER00000000001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_answer`
--

CREATE TABLE `exam_answer` (
  `exam_answer_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `answer` text CHARACTER SET utf8,
  `answer_rght_wrng` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `exam_question_id` varchar(9) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_answer`
--

INSERT INTO `exam_answer` (`exam_answer_id`, `answer`, `answer_rght_wrng`, `exam_question_id`) VALUES
('EXASN000001', 'タムです ', '0', 'EXQN00001'),
('EXASN000002', 'タムさんです', '1', 'EXQN00001'),
('EXASN000003', 'ランさんです ', '0', 'EXQN00002'),
('EXASN000004', 'エンジニアじゃありません ', '0', 'EXQN00002'),
('EXASN000005', 'いしゃ ', '0', 'EXQN00003'),
('EXASN000006', 'ベト ', '0', 'EXQN00003'),
('EXASN000007', 'タムさんじゃありません ', '0', 'EXQN00001'),
('EXASN000008', 'タムじゃありません', '0', 'EXQN00001'),
('EXASN000013', 'ランさんじゃありません ', '0', 'EXQN00002'),
('EXASN000022', '   はい、ざっしです。 ', '0', 'EXQN00007'),
('EXASN000023', '   ざっしです。', '1', 'EXQN00007'),
('EXASN000024', 'エンジニアです ', '1', 'EXQN00002'),
('EXASN000025', 'はたち', '0', 'EXQN00003'),
('EXASN000026', 'ハイさん ', '1', 'EXQN00003'),
('EXASN000027', 'なん ', '0', 'EXQN00008'),
('EXASN000028', 'だれ ', '0', 'EXQN00008'),
('EXASN000029', 'なんさい', '1', 'EXQN00008'),
('EXASN000030', 'どこ ', '0', 'EXQN00008'),
('EXASN000031', 'は ', '0', 'EXQN00009'),
('EXASN000032', 'の ', '0', 'EXQN00009'),
('EXASN000033', 'が ', '0', 'EXQN00009'),
('EXASN000034', 'も ', '1', 'EXQN00009'),
('EXASN000035', 'にじゅうろくさい ', '0', 'EXQN00010'),
('EXASN000036', 'やまだ', '1', 'EXQN00010'),
('EXASN000037', 'きょうし', '0', 'EXQN00010'),
('EXASN000038', 'やまださん ', '0', 'EXQN00010'),
('EXASN000039', 'の', '0', 'EXQN00011'),
('EXASN000040', 'と', '0', 'EXQN00011'),
('EXASN000041', 'は ', '1', 'EXQN00011'),
('EXASN000042', 'も ', '0', 'EXQN00011'),
('EXASN000043', 'の', '0', 'EXQN00012'),
('EXASN000044', 'も ', '0', 'EXQN00012'),
('EXASN000045', 'から', '1', 'EXQN00012'),
('EXASN000046', 'は ', '0', 'EXQN00012'),
('EXASN000047', 'ミ－さん', '0', 'EXQN00013'),
('EXASN000048', 'じゅうきゅうさい', '1', 'EXQN00013'),
('EXASN000049', 'ぎんこういん', '0', 'EXQN00013'),
('EXASN000050', 'だいがく', '0', 'EXQN00013'),
('EXASN000051', 'ベトナムじんです', '0', 'EXQN00014'),
('EXASN000052', 'ほんださんです', '0', 'EXQN00014'),
('EXASN000053', 'ほんださんじゃあり', '0', 'EXQN00014'),
('EXASN000054', 'ベトナムじんじゃありません ', '1', 'EXQN00014'),
('EXASN000055', '   に', '0', 'EXQN00015'),
('EXASN000056', '   へ', '1', 'EXQN00015'),
('EXASN000057', '   が', '0', 'EXQN00015'),
('EXASN000058', '   を', '0', 'EXQN00015'),
('EXASN000059', '    あ', '0', 'EXQN00015'),
('EXASN000060', '   a', '0', 'EXQN00016'),
('EXASN000061', 'bsss', '1', 'EXQN00016'),
('EXASN000062', '    dsadsa', '0', 'EXQN00016'),
('EXASN000063', '    sada', '0', 'EXQN00016');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_question`
--

CREATE TABLE `exam_question` (
  `exam_question_id` varchar(9) NOT NULL,
  `exam_id` varchar(13) DEFAULT NULL,
  `explain` text,
  `question` text,
  `ex` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_question`
--

INSERT INTO `exam_question` (`exam_question_id`, `exam_id`, `explain`, `question`, `ex`) VALUES
('EXQN00001', 'EXAMEC0000001', NULL, '<p>A:　あのひとはタムさんですか。</p>\n\n<p>B:　はい、（　　　　）。</p>\n', '<p>A. Nguời kia là ông tami phải không.</p>\n\n<p>B. Đúng vây. Là ông tami</p>\n'),
('EXQN00002', 'EXAMEC0000001', 'やまださんは　ぎんこういんですか？ ー Anh yamada là nhân viên ngân hàng phải không ?', '<p>A:　ランさんはエンジニアですか。</p>\n\n<p>B:　はい、（　　　　）。</p>\n', '<p>A. Ông mira là kỹ sư phải không.</p>\n\n<p>B. Vâng là kỹ sư</p>\n'),
('EXQN00003', 'EXAMEC0000001', 'あのひとは　だれですか？　- Người ở kia là ai vậy ?', '<p>A:　あのひとはだれですか。</p>\n\n<p>B: 　（　　　　）です。</p>\n', '<p>A. Người kia&nbsp; là ai vây.</p>\n\n<p>B .Ông Hai.</p>\n'),
('EXQN00007', 'EXAMEC0000002', NULL, '<p>A：これは ほんですか、ざっしですか。?</p>\n\n<p>B：(&nbsp; )です。</p>\n', '<p>A. Đây là cuốn sách hay là cuốn từ điển.</p>\n\n<p>B. Từ điển.</p>\n'),
('EXQN00008', 'EXAMEC0000001', NULL, '<p>A: &nbsp; マイさんは（　　　　）ですか。</p>\n\n<p>B: &nbsp; よんじゅうごさいです。</p>\n', '<p>A. Ông Mai bao nhiêu tuổi.</p>\n\n<p>B. 45 tuổi</p>\n'),
('EXQN00009', 'EXAMEC0000001', NULL, '<p>A: ミラ－さんはけんきゅうしゃです。</p>\n\n<p>B: イ－さん（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）けんきゅうしゃです。</p>\n', ''),
('EXQN00010', 'EXAMEC0000001', NULL, '<p>A: しつれいですが、おなまえは？</p>\n\n<p>B:&nbsp;（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）です。</p>\n', ''),
('EXQN00011', 'EXAMEC0000001', NULL, '<p>リンさんはにほんごのもり（&nbsp;&nbsp; ）がくせいです。</p>\n', ''),
('EXQN00012', 'EXAMEC0000001', NULL, '<p>QUANG BINH（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）きました。</p>\n', ''),
('EXQN00013', 'EXAMEC0000001', NULL, '<p>A: ミ－さんはおいくつですか。</p>\n\n<p>B:&nbsp;（&nbsp;&nbsp;&nbsp;&nbsp; ）です。</p>\n', ''),
('EXQN00014', 'EXAMEC0000001', NULL, '<p>A: ほんださんはベトナムじんですか。</p>\n\n<p>B: &nbsp; いいえ、（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）</p>\n', ''),
('EXQN00015', 'EXAMEC0000008', NULL, '<label><p>山&nbsp; &nbsp;(&nbsp; &nbsp; &nbsp;)　行くんですか。</p>\n</label>', '<p>Giai thích</p>\n'),
('EXQN00016', 'EXAMEC0000009', NULL, '<label><p>dsa</p>\n</label>', '<p>ada</p>\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt`
--

CREATE TABLE `jlpt` (
  `jlpt_id` varchar(13) CHARACTER SET utf8 NOT NULL,
  `jlpt_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `jlpt_type_id` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `course_id` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `jlpt_menu_id` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `timeout` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt`
--

INSERT INTO `jlpt` (`jlpt_id`, `jlpt_name`, `jlpt_type_id`, `user_id`, `course_id`, `jlpt_menu_id`, `timeout`) VALUES
('JLPTE00000000', 'Đề 01 : Đề thi Từ vững N5', 'JLPT02', 'USER00000000001', 'COURSELVN5', '2', '30'),
('JLPTE00000001', 'Đề 01 : Đề thi Đọc Hiểu N5', 'JLPT02', 'USER00000000001', 'COURSELVN5', '3', '30'),
('JLPTE00000002', 'Đề 02 : Đề thi Đọc Hiểu N5', 'JLPT02', 'USER00000000001', 'COURSELVN5', '2', '60'),
('JLPTE00000003', 'đê mới ', 'JLPT02', 'USER00000000001', 'COURSELVN4', '1', '30'),
('JLPTE00000004', 'đê mới N3', 'JLPT02', 'USER00000000001', 'COURSELVN3', '1', '30'),
('JLPTE00000005', 'đề mới N2', 'JLPT02', 'USER00000000001', 'COURSELVN2', '1', '30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt_answer`
--

CREATE TABLE `jlpt_answer` (
  `jlpt_answer_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `answer` text CHARACTER SET utf8,
  `answer_rght_wrng` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `jlpt_question_id` varchar(9) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt_answer`
--

INSERT INTO `jlpt_answer` (`jlpt_answer_id`, `answer`, `answer_rght_wrng`, `jlpt_question_id`) VALUES
('JLPTA000001', 'くもり', '0', 'JLPTN5001'),
('JLPTA000002', 'ゆき', '0', 'JLPTN5001'),
('JLPTA000003', 'あめ', '1', 'JLPTN5001'),
('JLPTA000004', 'はれ', '0', 'JLPTN5001'),
('JLPTA000009', 'かっこ', '0', 'JLPTN5003'),
('JLPTA000010', 'koko', '1', 'JLPTN5003'),
('JLPTA000014', '      a', '0', 'JLPTN5004'),
('JLPTA000015', '      b', '1', 'JLPTN5004'),
('JLPTA000022', '    c', '0', 'JLPTN5004'),
('JLPTA000023', '   a', '0', 'JLPTN5005'),
('JLPTA000024', '   b', '0', 'JLPTN5005'),
('JLPTA000025', '   c', '1', 'JLPTN5005'),
('JLPTA000026', '   a', '0', 'JLPTN5006'),
('JLPTA000027', '   b', '1', 'JLPTN5006'),
('JLPTA000028', '   a', '0', 'JLPTN5007'),
('JLPTA000029', '   b', '1', 'JLPTN5007'),
('JLPTA000030', '   a', '1', 'JLPTN5008'),
('JLPTA000031', '   b', '0', 'JLPTN5008');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt_menu`
--

CREATE TABLE `jlpt_menu` (
  `jlpt_menu_id` varchar(8) CHARACTER SET utf8 NOT NULL,
  `jlpt_menu_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt_menu`
--

INSERT INTO `jlpt_menu` (`jlpt_menu_id`, `jlpt_menu_name`) VALUES
('1', 'Luyện Thi Từ Vững'),
('2', 'Luyện Thi Ngữ Pháp'),
('3', 'Luyện Thi Đọc Hiểu'),
('4', 'Luyện Thi Nghe Hiểu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt_question`
--

CREATE TABLE `jlpt_question` (
  `jlpt_question_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `jlpt_id` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `ex` text CHARACTER SET utf8,
  `question` text CHARACTER SET utf8,
  `jlpt_q_type_id` varchar(6) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt_question`
--

INSERT INTO `jlpt_question` (`jlpt_question_id`, `jlpt_id`, `ex`, `question`, `jlpt_q_type_id`) VALUES
('JLPTN5001', 'JLPTE00000000', '<p>cập nhật mới</p>\n', '<p>2.あしたは　<u>雨</u>です。</p>\n', 'JQT002'),
('JLPTN5003', 'JLPTE00000000', 'chưa update', '<p>3.<u>学校</u>まで、バスで　いきます。</p>\n', 'JQT002'),
('JLPTN5004', 'JLPTE00000000', '', '<label><label><p>Mon dai 3 thêm mới</p>\n</label></label>', 'JQT003'),
('JLPTN5005', 'JLPTE00000003', '<p>giait thích</p>\n', '<label><p>câu mới</p>\n</label>', 'JQT001'),
('JLPTN5006', 'JLPTE00000004', '', '<label><p>câu hỏi mới đây</p>\n</label>', 'JQT001'),
('JLPTN5007', 'JLPTE00000005', '', '<label><p>câu hỏi mới</p>\n</label>', 'JQT001'),
('JLPTN5008', 'JLPTE00000001', '', '<label><p>ĐỌc hiểu 1</p>\n</label>', 'JQT001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt_q_type`
--

CREATE TABLE `jlpt_q_type` (
  `jlpt_q_type_id` varchar(6) CHARACTER SET utf8 NOT NULL,
  `jlpt_q_type_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt_q_type`
--

INSERT INTO `jlpt_q_type` (`jlpt_q_type_id`, `jlpt_q_type_name`) VALUES
('JQT001', '_________の　ことばは　ひらがなで　どう　かきますか。１·２·３·４から　いちばん　いい　ものを　ひとつ　えらんで　ください。'),
('JQT002', '______の　ことばは　どう　かきますか。　１· ２ ·３· ４　からいちばん いい　ものを　ひとつ　えらんで　ください。'),
('JQT003', '（　　）　に　なにを　いれますか。　１· ２· ３· ４　から　いちばん　いい　ものを　ひとつ　えらんで　ください。');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt_result`
--

CREATE TABLE `jlpt_result` (
  `jlpt_rs_id` varchar(13) CHARACTER SET utf8 NOT NULL,
  `created` datetime DEFAULT NULL,
  `data` text CHARACTER SET utf8,
  `grade` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `passed` bit(1) NOT NULL DEFAULT b'0',
  `user_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `jlpt_id` varchar(13) CHARACTER SET utf8 NOT NULL,
  `total_grade` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt_result`
--

INSERT INTO `jlpt_result` (`jlpt_rs_id`, `created`, `data`, `grade`, `passed`, `user_id`, `jlpt_id`, `total_grade`, `course`) VALUES
('RS_JLPT_0001', '2018-12-30 01:11:34', '{\"02\":{\"value\":\"06\"},\"01\":{\"value\":\"03\"},\"03\":{\"value\":\"10\"}}', '2', b'1', 'USER00000000001', 'JLPTE00000000', '3', 'N5'),
('RS_JLPT_0002', '2018-12-01 18:33:48', '{\"01\":{\"value\":\"03\"},\"02\":{\"value\":\"06\"},\"03\":{\"value\":\"\"}}', '1', b'0', 'USER00000000002', 'JLPTE00000000', '3', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jlpt_type`
--

CREATE TABLE `jlpt_type` (
  `jlpt_type_id` varchar(6) CHARACTER SET utf8 NOT NULL,
  `jlpt_type_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jlpt_type`
--

INSERT INTO `jlpt_type` (`jlpt_type_id`, `jlpt_type_name`) VALUES
('JLPT01', 'Đề thi jlpt'),
('JLPT02', 'Luyện tập các đề thi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notify`
--

CREATE TABLE `notify` (
  `notify_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `notify_content` text CHARACTER SET utf8,
  `notify_flg` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `notify_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `user_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` varchar(10) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `post_content` text,
  `post_flg` varchar(1) DEFAULT NULL,
  `post_title` text,
  `update_date` datetime DEFAULT NULL,
  `post_type_id` varchar(1) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `view_post` int(11) NOT NULL,
  `post_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `create_date`, `post_content`, `post_flg`, `post_title`, `update_date`, `post_type_id`, `user_id`, `view_post`, `post_img`) VALUES
('POST000001', '2018-09-30 00:00:00', '<p><strong>1. 姫路城</strong><br />\r\n<img src=\"https://localhost:8888/public/image/images/jpp41.jpg\" style=\"float:left; height:200px; margin-left:12px; margin-right:12px; width:300px\" />兵庫県(ひょうごけん)姫路市(ひめじし)にある姫路城は、室町時(むろまちじ)代には建てられていたと言われています。現在(げんざい)の城(しろ)は、約(やく)4(４)00年前、江戸(えど)時代の1609年に建築(けんちく)されたもので、1993年、日本で初(はつ)の世界文化遺産(せかいぶんかいさん)の一つとして登録(とうろく)されました。白く美(うつく)しい城は、シラサギという鳥(とり)が羽(はね)を広(ひろ)げた姿(すがた)にたとえられ、「白鷺城(しらさぎしろ)」という愛称(あいしょう)でも親しまれています。<br />\r\n<br />\r\n<span style=\"font-size:14px\"><strong><span style=\"font-family:Arial,sans-serif\">1. Th&agrave;nh Himeji</span></strong><br />\r\n<br />\r\n<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh Himeji tọa lạc tại th&agrave;nh phố Himeji, tỉnh Hyogo, tương truyền được x&acirc;y dựng v&agrave;o thời Muromachi. L&acirc;u đ&agrave;i m&agrave; ch&uacute;ng ta thấy ng&agrave;y nay đ&atilde; được x&acirc;y dựng v&agrave;o khoảng 400 năm trước, cụ thể l&agrave; được x&acirc;y dựng năm 1609 v&agrave;o thời Edo, rồi tới năm 1993, l&acirc;u đ&agrave;i l&agrave; một trong những di sản văn h&oacute;a thế giới đầu ti&ecirc;n của Nhật Bản được ghi nhận. Bản th&acirc;n l&agrave; một t&ograve;a th&agrave;nh m&agrave;u trắng tuyệt đẹp, n&ecirc;n n&oacute; được v&iacute; với h&igrave;nh ảnh một con hạc trắng dang rộng đ&ocirc;i c&aacute;nh, thường được gọi với c&aacute;i t&ecirc;n th&acirc;n mật l&agrave;</span>「<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh hạc trắng</span>」<span style=\"font-family:Arial,sans-serif\">.</span></span><br />\r\n&nbsp;</p>\r\n', '1', '世界文化遺産 (Di sản văn hóa thế giới)', '2018-12-26 00:00:00', '1', 'USER00000000001', 0, 'jpp41.jpg'),
('POST000002', '2018-09-30 00:00:00', '<p><strong>1. 姫路城</strong><br />\r\n<img src=\"https://localhost:8888/public/image/images/jpp41.jpg\" style=\"float:left; height:200px; margin-left:12px; margin-right:12px; width:300px\" />兵庫県(ひょうごけん)姫路市(ひめじし)にある姫路城は、室町時(むろまちじ)代には建てられていたと言われています。現在(げんざい)の城(しろ)は、約(やく)4(４)00年前、江戸(えど)時代の1609年に建築(けんちく)されたもので、1993年、日本で初(はつ)の世界文化遺産(せかいぶんかいさん)の一つとして登録(とうろく)されました。白く美(うつく)しい城は、シラサギという鳥(とり)が羽(はね)を広(ひろ)げた姿(すがた)にたとえられ、「白鷺城(しらさぎしろ)」という愛称(あいしょう)でも親しまれています。<br />\r\n<br />\r\n<span style=\"font-size:14px\"><strong><span style=\"font-family:Arial,sans-serif\">1. Th&agrave;nh Himeji</span></strong><br />\r\n<br />\r\n<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh Himeji tọa lạc tại th&agrave;nh phố Himeji, tỉnh Hyogo, tương truyền được x&acirc;y dựng v&agrave;o thời Muromachi. L&acirc;u đ&agrave;i m&agrave; ch&uacute;ng ta thấy ng&agrave;y nay đ&atilde; được x&acirc;y dựng v&agrave;o khoảng 400 năm trước, cụ thể l&agrave; được x&acirc;y dựng năm 1609 v&agrave;o thời Edo, rồi tới năm 1993, l&acirc;u đ&agrave;i l&agrave; một trong những di sản văn h&oacute;a thế giới đầu ti&ecirc;n của Nhật Bản được ghi nhận. Bản th&acirc;n l&agrave; một t&ograve;a th&agrave;nh m&agrave;u trắng tuyệt đẹp, n&ecirc;n n&oacute; được v&iacute; với h&igrave;nh ảnh một con hạc trắng dang rộng đ&ocirc;i c&aacute;nh, thường được gọi với c&aacute;i t&ecirc;n th&acirc;n mật l&agrave;</span>「<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh hạc trắng</span>」<span style=\"font-family:Arial,sans-serif\">.</span></span><br />\r\n&nbsp;</p>\r\n', '1', '世界文化遺産 (Di sản văn hóa thế giới)', '2018-12-26 00:00:00', '1', 'USER00000000001', 1, 'N1-bai0.png'),
('POST000003', '2018-09-30 00:00:00', '<p><strong>1. 姫路城</strong><br />\r\n<img src=\"https://localhost:8888/public/image/images/jpp41.jpg\" style=\"float:left; height:200px; margin-left:12px; margin-right:12px; width:300px\" />兵庫県(ひょうごけん)姫路市(ひめじし)にある姫路城は、室町時(むろまちじ)代には建てられていたと言われています。現在(げんざい)の城(しろ)は、約(やく)4(４)00年前、江戸(えど)時代の1609年に建築(けんちく)されたもので、1993年、日本で初(はつ)の世界文化遺産(せかいぶんかいさん)の一つとして登録(とうろく)されました。白く美(うつく)しい城は、シラサギという鳥(とり)が羽(はね)を広(ひろ)げた姿(すがた)にたとえられ、「白鷺城(しらさぎしろ)」という愛称(あいしょう)でも親しまれています。<br />\r\n<br />\r\n<span style=\"font-size:14px\"><strong><span style=\"font-family:Arial,sans-serif\">1. Th&agrave;nh Himeji</span></strong><br />\r\n<br />\r\n<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh Himeji tọa lạc tại th&agrave;nh phố Himeji, tỉnh Hyogo, tương truyền được x&acirc;y dựng v&agrave;o thời Muromachi. L&acirc;u đ&agrave;i m&agrave; ch&uacute;ng ta thấy ng&agrave;y nay đ&atilde; được x&acirc;y dựng v&agrave;o khoảng 400 năm trước, cụ thể l&agrave; được x&acirc;y dựng năm 1609 v&agrave;o thời Edo, rồi tới năm 1993, l&acirc;u đ&agrave;i l&agrave; một trong những di sản văn h&oacute;a thế giới đầu ti&ecirc;n của Nhật Bản được ghi nhận. Bản th&acirc;n l&agrave; một t&ograve;a th&agrave;nh m&agrave;u trắng tuyệt đẹp, n&ecirc;n n&oacute; được v&iacute; với h&igrave;nh ảnh một con hạc trắng dang rộng đ&ocirc;i c&aacute;nh, thường được gọi với c&aacute;i t&ecirc;n th&acirc;n mật l&agrave;</span>「<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh hạc trắng</span>」<span style=\"font-family:Arial,sans-serif\">.</span></span><br />\r\n&nbsp;</p>\r\n', '1', '世界文化遺産 (Di sản văn hóa thế giới)', '2018-12-30 00:00:00', '1', 'USER00000000001', 0, 'jpp41.jpg'),
('POST000004', '2018-09-30 00:00:00', '<p><strong>1. 姫路城</strong><br />\r\n<img src=\"https://localhost:8888/public/image/images/jpp41.jpg\" style=\"float:left; height:200px; margin-left:12px; margin-right:12px; width:300px\" />兵庫県(ひょうごけん)姫路市(ひめじし)にある姫路城は、室町時(むろまちじ)代には建てられていたと言われています。現在(げんざい)の城(しろ)は、約(やく)4(４)00年前、江戸(えど)時代の1609年に建築(けんちく)されたもので、1993年、日本で初(はつ)の世界文化遺産(せかいぶんかいさん)の一つとして登録(とうろく)されました。白く美(うつく)しい城は、シラサギという鳥(とり)が羽(はね)を広(ひろ)げた姿(すがた)にたとえられ、「白鷺城(しらさぎしろ)」という愛称(あいしょう)でも親しまれています。<br />\r\n<br />\r\n<span style=\"font-size:14px\"><strong><span style=\"font-family:Arial,sans-serif\">1. Th&agrave;nh Himeji</span></strong><br />\r\n<br />\r\n<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh Himeji tọa lạc tại th&agrave;nh phố Himeji, tỉnh Hyogo, tương truyền được x&acirc;y dựng v&agrave;o thời Muromachi. L&acirc;u đ&agrave;i m&agrave; ch&uacute;ng ta thấy ng&agrave;y nay đ&atilde; được x&acirc;y dựng v&agrave;o khoảng 400 năm trước, cụ thể l&agrave; được x&acirc;y dựng năm 1609 v&agrave;o thời Edo, rồi tới năm 1993, l&acirc;u đ&agrave;i l&agrave; một trong những di sản văn h&oacute;a thế giới đầu ti&ecirc;n của Nhật Bản được ghi nhận. Bản th&acirc;n l&agrave; một t&ograve;a th&agrave;nh m&agrave;u trắng tuyệt đẹp, n&ecirc;n n&oacute; được v&iacute; với h&igrave;nh ảnh một con hạc trắng dang rộng đ&ocirc;i c&aacute;nh, thường được gọi với c&aacute;i t&ecirc;n th&acirc;n mật l&agrave;</span>「<span style=\"font-family:Arial,sans-serif\">Th&agrave;nh hạc trắng</span>」<span style=\"font-family:Arial,sans-serif\">.</span></span><br />\r\n&nbsp;</p>\r\n', '1', '世界文化遺産 (Di sản văn hóa thế giới)', '2018-12-26 00:00:00', '1', 'USER00000000001', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_type`
--

CREATE TABLE `post_type` (
  `post_type_id` varchar(1) NOT NULL,
  `post_type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `post_type`
--

INSERT INTO `post_type` (`post_type_id`, `post_type_name`) VALUES
('1', 'Văn hóa - Con người Nhật Bản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` varchar(9) NOT NULL,
  `role_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
('ROLE00001', 'ROLE_ADMIN'),
('ROLE00002', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `role_id` varchar(9) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `address` text,
  `flg` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `email`, `name`, `password`, `phone`, `user_name`, `role_id`, `birthday`, `avatar`, `address`, `flg`) VALUES
('USER00000000001', 'haibkt2@gmail.com', 'Thanh Hải', '$2a$10$jlcTiW6o1Yu7x2GHDRPGveYVhzfFnwVOrGlVRMY4suWvbOlOOIRVm', '0336679621', 'USER00000000001', 'ROLE00001', '1994-04-14', 'USER00000000001.jpg', '121 - Ngô Sỹ Liên - Liên Chiểu - Đà Nẵng', 'rg'),
('USER00000000002', 'thanhhai13t2@gmail.com', 'Thanh Hải', '$2a$10$jlcTiW6o1Yu7x2GHDRPGveYVhzfFnwVOrGlVRMY4suWvbOlOOIRVm', '0336679621', 'USER00000000002', 'ROLE00002', '1994-04-14', 'USER00000000002.jpg', NULL, 'rg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voca_course_ilm`
--

CREATE TABLE `voca_course_ilm` (
  `course_ilm_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `hirakana` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT ' ',
  `kanji` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT ' ',
  `translate` text CHARACTER SET utf8 NOT NULL,
  `voca_course_ilm_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `audio` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `example` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `voca_course_ilm`
--

INSERT INTO `voca_course_ilm` (`course_ilm_id`, `hirakana`, `kanji`, `translate`, `voca_course_ilm_id`, `audio`, `example`) VALUES
('N5COURSE001', ' わたし', ' 私', 'tôi', 'VOCA00000000000', 'watashi.mp3', 'わたしはハイです(Tôi là Hải)'),
('N5COURSE001', ' わたしたち', ' ', 'chúng tôi, chúng ta', 'VOCA00000000001', 'watashitachi.mp3', NULL),
('N5COURSE001', 'あなた', ' ', 'anh/chị/ông/bà,bạn ngôi thứ 2 số ít)', 'VOCA00000000002', 'anata.mp3', 'あなたは何歳ですか？(Bạn bao nhiêu tuổi ?)'),
('N5COURSE001', 'あのひと', 'あの人', 'người kia, người đó', 'VOCA00000000003', 'anohito.mp3', 'あの人はだれですか？'),
('N5COURSE001', 'あのかた', 'あの方', '「あのかた」là cách nói lịch sự của「あのひと」, vị kia', 'VOCA00000000004', 'anokata.mp3', ''),
('N5COURSE001', 'みなさん', '皆さん', 'các anh chị, các ông bà, các bạn, quý vị', 'VOCA00000000005', 'minasan.mp3', ''),
('N5COURSE001', '～さん', ' ', 'anh, chị, ông, bà (cách gọi người khác một cách lịch sự bằng  cách thêm từ này vào sau tên của người  đó)', 'VOCA00000000006', 'san.mp3', ''),
('N5COURSE001', '～ちゃん', ' ', '(hậu tố thêm vào sau tên của trẻ em thay cho「～さん」)', 'VOCA00000000007', 'chan.mp3', ''),
('N5COURSE001', '～くん', '～君', '(hậu tố thêm vào sau tên của em trai)', 'VOCA00000000008', 'C--Users-Admin-Desktop-cho-son-tung-ano.mp3', ''),
('N5COURSE001', 'せんせい', '先生', '(thầy/cô (không dùng khi nói về nghề nghiệp giáo viên của  mình)', 'VOCA00000000009', 'sensei.mp3', ''),
('N5COURSE001', 'きょうし', '教師', 'giáo viên', 'VOCA00000000010', 'kyoushi.mp3', 'あなたは　せんせいですか。\nいいえ、わたしは は　せんせいじゃ　ありません。'),
('N5COURSE001', 'がくせい', '学生', 'học sinh, sinh viên', 'VOCA00000000011', 'gakusei.mp3', ''),
('N5COURSE001', 'かいしゃいん', '会社員', 'nhân viên công ty', 'VOCA00000000012', 'kaisyain.mp3', 'ミラーさんは　かいしゃいんです。'),
('N5COURSE001', 'しゃいん', '社員', 'nhân viên công ty ~ (dùng kèm theo tên công ty; ví dụ「Ｉ Ｍ  Ｃのしゃ いん」)', 'VOCA00000000013', 'syain.mp3', ''),
('N5COURSE001', 'ぎんこういん', '銀行員', 'nhân viên ngân hàng', 'VOCA00000000014', 'ginkouin.mp3', ''),
('N5COURSE001', 'いしゃ', '医者', 'bác Sĩ', 'VOCA00000000015', 'isya.mp3', ''),
('N5COURSE001', 'エンジニア', '', 'kỹ sư', 'VOCA00000000017', 'k_enjinia.mp3', 'やまださんは　エンジニアじゃ　ありません。(Chị Yamada không phải là kỹ sư.)'),
('N5COURSE001', 'だいがく', '大学', 'đại học, trường đại học', 'VOCA00000000018', 'daigaku.mp3', ''),
('N5COURSE001', '～さい', '～歳', 'tuổi, tuổi tác ..', 'VOCA00000000019', 'sai.mp3', 'あなたは何歳ですか？　－　２１歳です。'),
('N5COURSE002', 'これ', '', 'cái này, đây', 'VOCA00000000020', 'kore.mp3', 'これは何ですか？　－かさです。'),
('N5COURSE002', 'それ', '', 'cái đó, đó', 'VOCA00000000021', 'sore.mp3', 'それは　新大阪ですか。(Ở kia có phải là ga Shin-Osaka không?)'),
('N5COURSE002', 'あれ', '', 'cái kia, kia', 'VOCA00000000022', 'are.mp3', 'あれは　何ですか。( Kia là cái gì vậy)'),
('N5COURSE002', 'この～', '', '~ này', 'VOCA00000000023', 'kono.mp3', ''),
('N5COURSE002', 'その～', '', '~ đó', 'VOCA00000000024', 'sono.mp3', ''),
('N5COURSE002', 'あの～', '', '~ kia', 'VOCA00000000025', 'ano.mp3', ''),
('N5COURSE002', 'ほん', '本', 'sách', 'VOCA00000000026', 'hon.mp3', ''),
('N5COURSE002', 'じしょ', '辞書', 'từ điển', 'VOCA00000000027', 'jisyo.mp3', ''),
('N5COURSE002', 'ざっし', '雑誌', 'tạp chí', 'VOCA00000000028', 'zasshi.mp3', ''),
('N5COURSE002', 'しんぶん', '新聞', 'báo', 'VOCA00000000029', 'shinbun.mp3', ''),
('N5COURSE002', 'ノート', '', 'vở', 'VOCA00000000030', 'k-nooto.mp3', ''),
('N5COURSE002', 'てちょう', '手帳', 'sổ tay', 'VOCA00000000031', 'techoo.mp3', ''),
('N5COURSE003', 'ここ', '', 'Ở đây', 'VOCA00000000032', 'koko.mp3', ''),
('N6COURSE001', 'あ', '', 'a', 'VOCA00000000038', 'hi_a.mp3', ''),
('N6COURSE001', 'い', '', 'i', 'VOCA00000000039', 'hi_i.mp3', ''),
('N6COURSE001', 'う', '', 'u', 'VOCA00000000040', 'hi_u.mp3', ''),
('N6COURSE001', 'え', '', 'e', 'VOCA00000000041', 'hi_e.mp3', ''),
('N6COURSE001', 'お', '', 'o', 'VOCA00000000042', 'hi_o.mp3', ''),
('N6COURSE001', 'か', '', 'ka', 'VOCA00000000043', 'hi_ka.mp3', ''),
('N6COURSE001', 'き', '', 'ki', 'VOCA00000000044', 'hi_ki.mp3', ''),
('N6COURSE001', 'く', '', 'ku', 'VOCA00000000045', 'hi_ku.mp3', ''),
('N6COURSE001', 'け', '', 'ke', 'VOCA00000000046', 'hi_ke.mp3', ''),
('N6COURSE001', 'こ', '', 'ko', 'VOCA00000000047', 'hi_ko.mp3', ''),
('N6COURSE001', 'さ', '', 'sa', 'VOCA00000000048', 'hi_sa.mp3', ''),
('N6COURSE001', 'し', '', 'shi', 'VOCA00000000049', 'hi_shi.mp3', ''),
('N6COURSE001', 'す', '', 'su', 'VOCA00000000050', 'hi_su.mp3', ''),
('N6COURSE001', 'せ', '', 'se', 'VOCA00000000051', 'hi_se.mp3', ''),
('N6COURSE001', 'そ', '', 'so', 'VOCA00000000052', 'hi_so.mp3', ''),
('N6COURSE001', 'た', '', 'ta', 'VOCA00000000053', 'hi_ta.mp3', ''),
('N6COURSE001', 'ち', '', 'chi', 'VOCA00000000054', 'hi_chi.mp3', ''),
('N6COURSE001', 'つ', '', 'tsu', 'VOCA00000000055', 'hi_tsu.mp3', ''),
('N6COURSE001', 'て', '', 'te', 'VOCA00000000056', 'hi_te.mp3', ''),
('N6COURSE001', 'と', '', 'to', 'VOCA00000000057', 'hi_to.mp3', ''),
('N6COURSE001', 'な', '', 'na', 'VOCA00000000058', 'hi_na.mp3', ''),
('N6COURSE001', 'に', '', 'ni', 'VOCA00000000059', 'hi_ni.mp3', ''),
('N6COURSE001', 'ぬ', '', 'nu', 'VOCA00000000060', 'hi_nu.mp3', ''),
('N6COURSE001', 'ね', '', 'ne', 'VOCA00000000061', 'hi_ne.mp3', ''),
('N6COURSE001', 'の', '', 'no', 'VOCA00000000062', 'hi_no.mp3', ''),
('N6COURSE001', 'は', '', 'ha', 'VOCA00000000063', 'hi_ha.mp3', ''),
('N6COURSE001', 'ひ', '', 'hi', 'VOCA00000000064', 'hi_hi.mp3', ''),
('N6COURSE001', 'ふ', '', 'hu', 'VOCA00000000065', 'hi_hu.mp3', ''),
('N6COURSE001', 'へ', '', 'he', 'VOCA00000000066', 'hi_he.mp3', ''),
('N6COURSE001', 'ま', '', 'ma', 'VOCA00000000067', 'hi_ma.mp3', ''),
('N6COURSE001', 'み', '', 'mi', 'VOCA00000000068', 'hi_mi.mp3', ''),
('N6COURSE001', 'む', '', 'mu', 'VOCA00000000069', 'hi_mu.mp3', ''),
('N6COURSE001', 'め', '', 'me', 'VOCA00000000070', 'hi_me.mp3', ''),
('N6COURSE001', 'も', '', 'mo', 'VOCA00000000071', 'hi_mo.mp3', ''),
('N6COURSE001', 'や', '', 'ya', 'VOCA00000000072', 'hi_ya.mp3', ''),
('N6COURSE001', 'ゆ', '', 'yu', 'VOCA00000000073', 'hi_yu.mp3', ''),
('N6COURSE001', 'よ', '', 'yo', 'VOCA00000000074', 'hi_yo.mp3', ''),
('N4COURSE002', 'さがします', '探します,捜します', 'tìm, tìm kiếm', 'VOCA00000000076', 'sagashimasu.mp3', '何を　捜して　いるんですか。(Bạn đang tìm cái gì vậy?) '),
('N4COURSE002', '[じかんに～] おくれます', '[時間に～]遅れます', 'chậm, muộn [cuộc hẹn,v.v.]', 'VOCA00000000077', 'okuremasu.mp3', '遅かったですね。　どう　したんですか。'),
('N4COURSE002', 'やります', '', 'làm', 'VOCA00000000078', 'yarimasu.mp3', ''),
('N4COURSE002', '[パーティーに～]さんかします', '[パーティーに～]参加します', 'tham gia, dự [buổi tiệc]', 'VOCA00000000079', 'sankashimasu.mp3', ''),
('N4COURSE002', 'もうしこみます  ', '申し込みます', 'đăng ký', 'VOCA00000000080', 'moushikomimasu.mp3', ''),
('N4COURSE002', 'みます', '見ます, 診ます', 'xem, khám bệnh', 'VOCA00000000081', 'mimasu.mp3', ''),
('N4COURSE002', 'つごうが　いい', '都合が　いい   ', 'có thời gian, thuận tiện', 'VOCA00000000083', 'tsugougaii.mp3', ''),
('N4COURSE002', 'つごうが　わるい', '都合が　悪い', 'không có thời gian, bận, không thuận tiện', 'VOCA00000000084', 'tsugougawarui.mp3', ''),
('N4COURSE002', 'きぶんがいい', '気分がいい', 'cảm thấy tốt, cảm thấy khỏe', 'VOCA00000000085', 'kibungaii.mp3', ''),
('N4COURSE002', 'きぶんがわるい', '気分が悪い', 'cảm thấy không tốt, cảm thấy mệt', 'VOCA00000000086', 'kibungawarui.mp3', '気分が　悪いんですか。(Thấy không khỏe trong người à?)\n'),
('N4COURSE002', 'うんどうかい', '運動会', 'hội thi thể thao', 'VOCA00000000087', 'undoukai.mp3', ''),
('N4COURSE002', 'ばしょ', '場所', 'địa điểm', 'VOCA00000000088', 'basyo.mp3', ''),
('N4COURSE002', 'こんど', '今度', 'lần tới', 'VOCA00000000089', 'kondo.mp3', ''),
('N4COURSE002', 'いつでも', '', 'lúc nào cũng', 'VOCA00000000090', 'itsudemo.mp3', ''),
('N4COURSE002', 'だれでも', '', 'ai cũng', 'VOCA00000000091', '', ''),
('N3COURSE002', 'a', 'd', 'sa', 'VOCA00000000092', 'hi_chi.mp3', 'd'),
('N3COURSE002', 'dsa', 'dá', 'dsa', 'VOCA00000000093', '', 'dsa'),
('N3COURSE002', 'dsa', 'dsa', 'dsa', 'VOCA00000000094', '', ''),
('N3COURSE002', 'dsa', 'dsa', 'dsa', 'VOCA00000000095', 'basyo.mp3', 'dsa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Chỉ mục cho bảng `course_fun`
--
ALTER TABLE `course_fun`
  ADD PRIMARY KEY (`course_fun_id`),
  ADD KEY `FK57ttvjeysd3falwh8jy6g7yin` (`course_fun_type_id`);

--
-- Chỉ mục cho bảng `course_fun_type`
--
ALTER TABLE `course_fun_type`
  ADD PRIMARY KEY (`course_fun_type_id`);

--
-- Chỉ mục cho bảng `course_global`
--
ALTER TABLE `course_global`
  ADD PRIMARY KEY (`course_gb_id`),
  ADD KEY `FKcoxm3yid2c51cmi1bsy5hke4y` (`course_ilm_id`);

--
-- Chỉ mục cho bảng `course_ilm`
--
ALTER TABLE `course_ilm`
  ADD PRIMARY KEY (`course_ilm_id`),
  ADD KEY `FK8h8jsx5dmdr6gjusbfi8jw9gg` (`course_id`),
  ADD KEY `FKcb9gwd05axfs4pxwebs0yhioe` (`course_ilm_type_id`),
  ADD KEY `FK8scd1boa0f197uej9cvprq9cc` (`user_id`);

--
-- Chỉ mục cho bảng `course_ilm_type`
--
ALTER TABLE `course_ilm_type`
  ADD PRIMARY KEY (`course_ilm_type_id`);

--
-- Chỉ mục cho bảng `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `FKhqxp9hixx5en1bugh9e4ydhjw` (`course_id`),
  ADD KEY `FKjhdxdv9sijhujiynqbb5jc010` (`user_id`);

--
-- Chỉ mục cho bảng `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `FKj4d9s1ticm0udncq9gc3dgpeq` (`course_ilm_id`),
  ADD KEY `FKhgnhrkmgfjdflm0tcj2psencf` (`user_id`);

--
-- Chỉ mục cho bảng `exam_answer`
--
ALTER TABLE `exam_answer`
  ADD PRIMARY KEY (`exam_answer_id`),
  ADD KEY `FK6nkv5g8gk7q5cs0v78tlhuuxw` (`exam_question_id`);

--
-- Chỉ mục cho bảng `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`exam_question_id`),
  ADD KEY `FK75y5n4rt15oyfmshrwwi73d` (`exam_id`);

--
-- Chỉ mục cho bảng `jlpt`
--
ALTER TABLE `jlpt`
  ADD PRIMARY KEY (`jlpt_id`),
  ADD KEY `FK9sj76u3658qtvfuqixb2q219j` (`course_id`),
  ADD KEY `FKclou0tl9brbhgf3a1fvqgje7t` (`jlpt_type_id`),
  ADD KEY `FK2pxjgktavrq4letb4rdo4xpnr` (`user_id`),
  ADD KEY `FK29u8abv5ut4qc3rajtkbjgfm7` (`jlpt_menu_id`);

--
-- Chỉ mục cho bảng `jlpt_answer`
--
ALTER TABLE `jlpt_answer`
  ADD PRIMARY KEY (`jlpt_answer_id`),
  ADD KEY `FK9kqeypcwq57f4372fusfm2r5i` (`jlpt_question_id`);

--
-- Chỉ mục cho bảng `jlpt_menu`
--
ALTER TABLE `jlpt_menu`
  ADD PRIMARY KEY (`jlpt_menu_id`);

--
-- Chỉ mục cho bảng `jlpt_question`
--
ALTER TABLE `jlpt_question`
  ADD PRIMARY KEY (`jlpt_question_id`),
  ADD KEY `FKa8oxg79qmjlbro4oeagx1hb5k` (`jlpt_id`),
  ADD KEY `FKebldf37xupuv2axmmjy9tx054` (`jlpt_q_type_id`);

--
-- Chỉ mục cho bảng `jlpt_q_type`
--
ALTER TABLE `jlpt_q_type`
  ADD PRIMARY KEY (`jlpt_q_type_id`);

--
-- Chỉ mục cho bảng `jlpt_result`
--
ALTER TABLE `jlpt_result`
  ADD PRIMARY KEY (`jlpt_rs_id`),
  ADD KEY `FK7umk2femjhogh9betpsopcr9q` (`jlpt_id`),
  ADD KEY `FKp10safr297f7li4geswv57cmv` (`user_id`);

--
-- Chỉ mục cho bảng `jlpt_type`
--
ALTER TABLE `jlpt_type`
  ADD PRIMARY KEY (`jlpt_type_id`);

--
-- Chỉ mục cho bảng `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`notify_id`),
  ADD KEY `FKfbw0pi68o4g3n1whir7ig8q9f` (`user_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK5jauqbg2kiwsxn8bjtpogf0u0` (`post_type_id`),
  ADD KEY `FK72mt33dhhs48hf9gcqrq4fxte` (`user_id`);

--
-- Chỉ mục cho bảng `post_type`
--
ALTER TABLE `post_type`
  ADD PRIMARY KEY (`post_type_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`);

--
-- Chỉ mục cho bảng `voca_course_ilm`
--
ALTER TABLE `voca_course_ilm`
  ADD PRIMARY KEY (`voca_course_ilm_id`),
  ADD KEY `FK42lq1lcm584npi0j3vl1eg41h` (`course_ilm_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `course_fun`
--
ALTER TABLE `course_fun`
  ADD CONSTRAINT `FK57ttvjeysd3falwh8jy6g7yin` FOREIGN KEY (`course_fun_type_id`) REFERENCES `course_fun_type` (`course_fun_type_id`);

--
-- Các ràng buộc cho bảng `course_global`
--
ALTER TABLE `course_global`
  ADD CONSTRAINT `FKcoxm3yid2c51cmi1bsy5hke4y` FOREIGN KEY (`course_ilm_id`) REFERENCES `course_ilm` (`course_ilm_id`);

--
-- Các ràng buộc cho bảng `course_ilm`
--
ALTER TABLE `course_ilm`
  ADD CONSTRAINT `FK8h8jsx5dmdr6gjusbfi8jw9gg` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `FK8scd1boa0f197uej9cvprq9cc` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKcb9gwd05axfs4pxwebs0yhioe` FOREIGN KEY (`course_ilm_type_id`) REFERENCES `course_ilm_type` (`course_ilm_type_id`);

--
-- Các ràng buộc cho bảng `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `FKhqxp9hixx5en1bugh9e4ydhjw` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `FKjhdxdv9sijhujiynqbb5jc010` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `FKhgnhrkmgfjdflm0tcj2psencf` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKj4d9s1ticm0udncq9gc3dgpeq` FOREIGN KEY (`course_ilm_id`) REFERENCES `course_ilm` (`course_ilm_id`);

--
-- Các ràng buộc cho bảng `exam_answer`
--
ALTER TABLE `exam_answer`
  ADD CONSTRAINT `FK6nkv5g8gk7q5cs0v78tlhuuxw` FOREIGN KEY (`exam_question_id`) REFERENCES `exam_question` (`exam_question_id`);

--
-- Các ràng buộc cho bảng `exam_question`
--
ALTER TABLE `exam_question`
  ADD CONSTRAINT `FK75y5n4rt15oyfmshrwwi73d` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`);

--
-- Các ràng buộc cho bảng `jlpt`
--
ALTER TABLE `jlpt`
  ADD CONSTRAINT `FK29u8abv5ut4qc3rajtkbjgfm7` FOREIGN KEY (`jlpt_menu_id`) REFERENCES `jlpt_menu` (`jlpt_menu_id`),
  ADD CONSTRAINT `FK2pxjgktavrq4letb4rdo4xpnr` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK9sj76u3658qtvfuqixb2q219j` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `FKclou0tl9brbhgf3a1fvqgje7t` FOREIGN KEY (`jlpt_type_id`) REFERENCES `jlpt_type` (`jlpt_type_id`);

--
-- Các ràng buộc cho bảng `jlpt_answer`
--
ALTER TABLE `jlpt_answer`
  ADD CONSTRAINT `FK9kqeypcwq57f4372fusfm2r5i` FOREIGN KEY (`jlpt_question_id`) REFERENCES `jlpt_question` (`jlpt_question_id`);

--
-- Các ràng buộc cho bảng `jlpt_question`
--
ALTER TABLE `jlpt_question`
  ADD CONSTRAINT `FKa8oxg79qmjlbro4oeagx1hb5k` FOREIGN KEY (`jlpt_id`) REFERENCES `jlpt` (`jlpt_id`),
  ADD CONSTRAINT `FKebldf37xupuv2axmmjy9tx054` FOREIGN KEY (`jlpt_q_type_id`) REFERENCES `jlpt_q_type` (`jlpt_q_type_id`);

--
-- Các ràng buộc cho bảng `jlpt_result`
--
ALTER TABLE `jlpt_result`
  ADD CONSTRAINT `FK7umk2femjhogh9betpsopcr9q` FOREIGN KEY (`jlpt_id`) REFERENCES `jlpt` (`jlpt_id`),
  ADD CONSTRAINT `FKp10safr297f7li4geswv57cmv` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `notify`
--
ALTER TABLE `notify`
  ADD CONSTRAINT `FKfbw0pi68o4g3n1whir7ig8q9f` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK5jauqbg2kiwsxn8bjtpogf0u0` FOREIGN KEY (`post_type_id`) REFERENCES `post_type` (`post_type_id`),
  ADD CONSTRAINT `FK72mt33dhhs48hf9gcqrq4fxte` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Các ràng buộc cho bảng `voca_course_ilm`
--
ALTER TABLE `voca_course_ilm`
  ADD CONSTRAINT `FK42lq1lcm584npi0j3vl1eg41h` FOREIGN KEY (`course_ilm_id`) REFERENCES `course_ilm` (`course_ilm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
