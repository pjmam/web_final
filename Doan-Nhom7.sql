-- tao co so du lieu 
CREATE DATABASE IF NOT EXISTS DoAn ;
USE DoAn;

-- tao bang 
CREATE TABLE Member (
    id int(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    FirstName nvarchar(30) NULL, 
    LastName nvarchar(30)  NULL, 
    UserName nvarchar(30) NOT NULL, 
    Email varchar(50) NOT NULL, 
    Password varchar(30) NOT NULL, 
    Phone varchar(13) NULL,  
    Description text(200) NULL, 
    CreatedDate datetime NULL, 
    UpdateTime datetime  NULL
) ENGINE = InnoDB;

CREATE TABLE Content (
   id int(10) UNSIGNED AUTO_INCREMENT NOT NULL, 
   Title text(50)  NULL, 
   Brief text NULL, 
   Content text	NULL, 
   CreatedDate datetime  NULL, 
   UpdateTime datetime NULL, 
   Sort int NULL, 
   AuthorId int(10) UNSIGNED NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY (AuthorId) REFERENCES Member(id)
) ENGINE = InnoDB;

-- them du lieu cho bang Member

INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Tam','Nguyen Van','Van Tam','nguyentam123@gmail.com','123456','0256895684','Tai khoan dau tien','2021-09-20 13:25:12','2021-09-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Thang','Tran Quyet','Quyet Thang','quyetthang321@gmail.com','132456','0256485692','Tai khoan thu hai','2021-10-20 14:21:10','2021-10-20 22:11:22' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Hong','Bui Thi','Thi Hong','buihong456@gmail.com','142356','0325698745','Tai khoan thu ba','2021-10-12 13:25:12','2021-10-12 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Thien','Hoang Van','Van Thien','hoangthien789@gmail.com','152346','0315262451','Tai khoan thu tu','2021-11-20 13:25:12','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Linh','Vo Thi Ngoc','Ngoc Linh','volinh987@gmail.com','162345','0387545654','Tai khoan thu nam','2021-12-20 13:25:12','2021-12-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Vu','Luc','VuLuc','vuluc@gmail.com','12345678','0387545655','Tai khoan thu sau','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Hoai','Nam','HoaiNam','hoainam@gmail.com','87654321','038123489','Tai khoan thu bay','2021-11-20 13:25:13','2021-11-20 22:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Duy','Phuoc','DuyPhuoc','duyphuoc@gmail.com','11112222','0387546655','Tai khoan thu tam','2021-10-25 13:25:13','2021-11-20 10:15:25' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Quoc','Viet','QuocViet','quocviet@gmail.com','22224444','0387548655','Tai khoan thu chin','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Luu Gia','Bao','GiaBao','giabao@gmail.com','00001111','0387545655','Tai khoan thu 10','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Van','A','VanA','vana@gmail.com','98765432','0387545655','Tai khoan thu 11','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Thi','B','ThiB','thib@gmail.com','45678921','0387545655','Tai khoan thu 12','2021-12-20 14:25:13','2021-11-20 9:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Khanh','C','KhanhC','khanhc@gmail.com','abc123456','011112222','Tai khoan thu 19','2021-09-19 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Le Thi','Buoi','ThiBuoi','thibuoi@gmail.com','123456abc','0387545655','Tai khoan thu 13','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Tran Van','Bui','VanBui','vanbui@gmail.com','456aabc123','0387545655','Tai khoan thu 14','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Do Vu','Van','VuVan','vuvan@gmail.com','789cba123','0894441236','Tai khoan thu 15','2021-12-20 11:25:59','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Vu','D','VuD','vud@gmail.com','12345678','0387545655','Tai khoan thu 16','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Vu','E','VuE','vue@gmail.com','12345678','0387545655','Tai khoan thu 17','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Vu','F','VuF','vuf@gmail.com','12345678','0387545655','Tai khoan thu 18','2021-12-20 13:25:13','2021-11-20 23:15:12' );
INSERT INTO Member(FirstName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Nguyen Vu','G','VuG','vug@gmail.com','12345678','0387545655','Tai khoan thu 19','2021-12-20 13:25:13','2021-11-20 23:15:12' );
-- them du lieu cho bang Content
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Louis Vuitton – Archligh','Một đôi Chunky đầu tiên trong BXH.','Xuất hiện trong Tuần lễ thời trang 2018, Archlight của Louis Vuitton là đôi sneaker đã thực sự gây được chú ý mạnh mẽ.
Phần đế được thiết kế oversize nhô lên mang đến sự êm ái và dẻo dai khi sử dụng. Nhờ vào sự vượt trội hơn hẳn về thiết kế mà Archlight đã dẫn đầu dòng luxury sneaker.','2021-09-20 13:25:12','2021-09-20 23:15:12',1,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Balenciaga Triple S','Tuy sở hữu thân hình cục mịch và quá khổ nhưng Balenciaga Triple S là một trong những đôi giày thể thao đang hot hiện nay.','Tuy sở hữu thân hình cục mịch và quá khổ nhưng Balenciaga Triple S là một trong những đôi giày thể thao đang hot hiện nay.
Ngoài lớp da cao cấp, upper của nó còn được kết hợp những lớp vải dệt có nhiều gam màu khác nhau làm đôi giày thêm nổi bật hơn.
Đây là đôi chunky sneaker được yêu thích bởi đông đảo tín đồ thời trang và người nổi tiếng.','2021-10-20 14:21:10','2021-10-20 22:11:22',2,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Alexander McQueen Oversized','Thoạt nhìn có vẻ hơi giống đôi sneaker huyền thoại Stan Smith của Adidas','Thoạt nhìn có vẻ hơi giống đôi sneaker huyền thoại Stan Smith của Adidas nhưng Alexander McQueen Oversized lại nổi trội hơn nhờ phần đế độn đặc biệt.
Hơn nữa, sự đa dạng về các phiên bản phối màu ngày một “chất” là điểm mấu chốt giúp đôi giày chiếm trọn sự trái tim của những tín đồ giày.','2021-10-12 13:25:12','2021-10-12 23:15:12',3,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Sneaker thêu Gucci Ace Embroidered','Phiên bản thêu không bao giờ là lỗi thời','Phiên bản thêu không bao giờ là lỗi thời và luôn là một trong những đôi giày thể thao nữ đẹp nhấtđược săn đón ráo riết.
Siêu phẩm Gucci Ace Embroidered ra đời năm 2017 thực sự đã đánh dấu lại vị trí của Gucci trên thị trường.','2021-11-23 03:25:12','2021-11-20 23:15:12',4,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Rhyton Gucci logo leather sneaker','Cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-06-20 14:26:12','2021-12-20 23:15:12',5,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('VL Clother','Là một trong những cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.','VL Clother là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-07-20 06:25:25','2021-12-20 23:15:12',5,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('LV logo leather sneaker','Một thương hiệu hàng đầu thế giói về lĩnh vực thời trang','LV logo leather sneaker là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-11 19:25:12','2021-11-15 10:15:12',6,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('BiTis logo leather sneaker','Thương hiệu giày cực kì bền và đẹp','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-11-01 05:25:12','2021-12-20 23:15:12',7,1);	
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('VL Áo Ba Lỗ','Một thương hiệu làm nên tên tuổi thời trang Việt Nam','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-10-03 17:25:12','2021-12-20 23:15:12',8,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Giay Bata','Một thương hiệu giày quen thuộc ai ai cũng biết đến','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-20 13:25:12','2021-12-20 23:15:12',9,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Dep Quai hau','Đôi dép số 1 thời học sinh không có là ăn chửi','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-12 12:12:12','2021-12-20 23:15:12',10,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Dep Lao','Đôi dép gắn liền với những giang hồ chợ mới','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-11-11 11:11:11','2021-12-20 23:15:12',11,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Dep To Ong','Bền đẹp không ai sánh bằng chấp mọi thời thiết','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-07-29 04:04:04','2021-12-20 23:15:12',12,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Dep Le','Anh em với dép lào và cùng nhau làm nên tên tuổi','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-04-25 18:15:42','2021-12-20 23:15:12',13,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Quan Xa Lon','Chiếc quần quốc dân ai ai cũng sở hữu','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-01-16 13:25:12','2021-12-20 23:15:12',14,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('CT3 Pro','Đôi giày đá bóng quốc dân nhẹ êm bền','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-04-19 14:11:12','2021-12-20 23:15:12',15,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Dieu Cay','cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Thuoc Lao.','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-20 13:25:12','2021-12-20 23:15:12',16,11);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('cái tên đã có những đóng góp không nhỏ trong việc làm','cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Thuoc Lao.','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-20 13:25','2021-12-20 23:15:12',16,1);

INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Axtrox 77XC','Cây vợt dễ thuận tay và công bao lực','Xuất hiện trong Tuần lễ thời trang 2018, Archlight của Louis Vuitton là đôi sneaker đã thực sự gây được chú ý mạnh mẽ.
Phần đế được thiết kế oversize nhô lên mang đến sự êm ái và dẻo dai khi sử dụng. Nhờ vào sự vượt trội hơn hẳn về thiết kế mà Archlight đã dẫn đầu dòng luxury sneaker.','2021-09-20 13:25:12','2021-09-20 23:15:12',1,11);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Axtrox 99','Nối tiếp từ những cây vợt  rất được yêu thích trong Astrox Series thì trong năm nay Yonex đã tiếp tục cho ra đời sản phẩm được đánh giá là " đỉnh nhất trong năm". Đó là vợt cầu lông Yonex Astrox 99.','Tuy sở hữu thân hình cục mịch và quá khổ nhưng Balenciaga Triple S là một trong những đôi giày thể thao đang hot hiện nay.
Ngoài lớp da cao cấp, upper của nó còn được kết hợp những lớp vải dệt có nhiều gam màu khác nhau làm đôi giày thêm nổi bật hơn.
Đây là đôi chunky sneaker được yêu thích bởi đông đảo tín đồ thời trang và người nổi tiếng.','2021-10-20 14:21:10','2021-10-20 22:11:22',2,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Astrox 100ZZ Kurenai','Kể từ khi ra mắt vào đầu năm 2020, Yonex Astrox 100ZZ như một cơn bão càn quét mạnh mẽ trên thị trường cầu lông Thế Giới dành cho những bạn yêu thích lối đánh Tấn Công kết hợp Tốc Độ nổi trội với những quả Đập Cầu Gõ siêu cắm phù hợp','Thoạt nhìn có vẻ hơi giống đôi sneaker huyền thoại Stan Smith của Adidas nhưng Alexander McQueen Oversized lại nổi trội hơn nhờ phần đế độn đặc biệt.
Hơn nữa, sự đa dạng về các phiên bản phối màu ngày một “chất” là điểm mấu chốt giúp đôi giày chiếm trọn sự trái tim của những tín đồ giày.','2021-10-12 13:25:12','2021-10-12 23:15:12',3,11);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Astrox 88D Pro','Thương hiệu cầu lông số 1 Thế giới Yonex sau khi phát hành cặp bài trùng chuyên đánh đôi Yonex Astrox 88D - Yones Astrox 88S trong năm 2018 như một cơn lốc xoáy càn quét mạnh mẽ trên thị trường Quốc tế','Phiên bản thêu không bao giờ là lỗi thời và luôn là một trong những đôi giày thể thao nữ đẹp nhấtđược săn đón ráo riết.
Siêu phẩm Gucci Ace Embroidered ra đời năm 2017 thực sự đã đánh dấu lại vị trí của Gucci trên thị trường.','2021-11-23 03:25:12','2021-11-20 23:15:12',4,11);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Doura 10 LT','Tiếp nối thành công của các dòng vợt tiền nhiệm như Duora 2016 Lee Chong Wei, Duora 10 LCW 2017 và dòng kề cận Duora 10 2017','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-06-20 14:26:12','2021-12-20 23:15:12',5,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Voltric FB New','Vợt cầu lông Yonex Voltric FB New - Xanh dương là một phiên bản khác màu trong dòng vợt Voltric FB','VL Clother là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-07-20 06:25:25','2021-12-20 23:15:12',5,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Astrox 7 (BK/OR)','Vợt cầu lông Yonex Astrox 7 new chính hãng được trở lại với diện mạo LIME mới toanh','LV logo leather sneaker là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-11 19:25:12','2021-11-15 10:15:12',6,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Astrox 10 DG','Vợt cầu lông Yonex Astrox 10 DG (NV/TQ) chính hãng là một trong những siêu phẩm vợt cầu lông chuyên Tấn Công nổi trội với thông số 4U','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-11-01 05:25:12','2021-12-20 23:15:12',7,13);	
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex NanoFlare 270','Vợt cầu lông Yonex NanoFlare 270 (NV/OR) vừa được trình làng các lông thủ trong cuối năm 2020 với diện mạo mới toanh rất hiện đại','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-10-03 17:25:12','2021-12-20 23:15:12',8,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Yonex Astrox 7 DG',' Không chỉ có những cây vợt cao cấp với chất lượng tuyệt vời, thương hiệu cầu lông Yonex top đầu thế giới','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-20 13:25:12','2021-12-20 23:15:12',9,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Victor ARS 90K','Vợt cầu lông Victor ARS 90K chính hãng gồm 2 phiển bản 3U và 4U, điểm cân bằng vào khoảng 295mm','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-12-12 12:12:12','2021-12-20 23:15:12',10,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Victor Columbia','Một trong những siêu phẩm vợt cầu lông chuyên Công của nhà Victor vừa được ra mắt trong cuối năm 2020','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-11-11 11:11:11','2021-12-20 23:15:12',11,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Victor Brave Sword 1900','Vợt cầu lông Victor Brave Sword 1900 là cây vợt thuộc phân khúc tầm trung của Victor nằm trong dòng vợt nổi tiếng Brave Sword','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-07-29 04:04:04','2021-12-20 23:15:12',12,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Lining Axforce 80CL','Vợt cầu lông Lining Axforce 80CL Nội Địa nổi trội khi được sản xuất từ Superb Carbon cao cấp nhất của nhà Lining ','Rhyton Gucci logo leather phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-04-25 18:15:42','2021-12-20 23:15:12',13,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Lining Aeronaut 6000i','Sau khi siêu phẩm Lining Aeronaut 9000i trình làng trên Thế Giới và nhận được rất nhiều các phản hồi tích cực đến từ người chơi','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-01-16 13:25:12','2021-12-20 23:15:12',14,13);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Lining Aeronaut 9000C','Aeronaut 9000C là cái tên đã quá quen thuộc đối với các anh em lông thủ, đây không những là siêu phẩm được tay vợt Đôi Nam Nữ','Rhyton Gucci logo leather là cái tên đã có những đóng góp không nhỏ trong việc làm nên danh tiếng của Gucci.
Phiên bản này mang đậm phong cách streetwear, phần logo được in một cách rõ ràng, tỉ mỉ ngay ở phần má ngoài tạo sự sang trọng.
Phần lót cực kỳ dày dặn, xứng đáng là một trong những mẫugiày thể thao nữ hot nhất hiện nay.','2021-04-19 14:11:12','2021-12-20 23:15:12',15,13);
