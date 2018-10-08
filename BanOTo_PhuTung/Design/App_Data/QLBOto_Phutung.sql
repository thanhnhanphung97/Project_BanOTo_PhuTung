
IF EXISTS(SELECT * FROM sys.sysdatabases WHERE name = 'QLBOto_Phutung')
	DROP DATABASE QLBOto_Phutung
GO 

CREATE DATABASE QLBOto_Phutung
GO 
USE QLBOto_Phutung
GO 
CREATE TABLE ACCOUNT 
(
	idAc INT IDENTITY(1,1) PRIMARY KEY,
	TDN NVARCHAR(20) NOT NULL,
	MK NVARCHAR(20) NOT NULL,
	Type INT NOT NULL
)
GO 

SELECT * FROM dbo.ACCOUNT 
---Thêm dữ liệu
INSERT INTO dbo.ACCOUNT ( TDN, MK, Type ) VALUES  ( N'Admin',N'1',0)
INSERT INTO dbo.ACCOUNT ( TDN, MK, Type ) VALUES  ( N'Staff',N'1',1)
INSERT INTO dbo.ACCOUNT ( TDN, MK, Type ) VALUES  ( N'Khachhang',N'1',3)
GO 


CREATE TABLE TTCN
(
	idTTCN INT IDENTITY(1,1) PRIMARY KEY,
	idAc INT NOT NULL,
	HoTen NVARCHAR(50) NOT NULL,
	SDT NVARCHAR(20) NOT NULL,
	DiaChi NVARCHAR(100) NOT NULL,
	CONSTRAINT fk_ac_ttcn FOREIGN KEY (idAc) REFERENCES dbo.ACCOUNT(idAc)
)
GO 
SELECT * FROM dbo.TTCN 
---Thêm dữ liệu
INSERT INTO dbo.TTCN ( idAc, HoTen, SDT, DiaChi )  VALUES  ( 1, N'Phùng Thành Nhân', N'0123333456', N'176/5 DT745 Thuận An, Bình Dương')
INSERT INTO dbo.TTCN ( idAc, HoTen, SDT, DiaChi )  VALUES  ( 2, N'Nguyễn Văn A', N'9999999999', N'127/9 CMT8 Vĩnh Phú, Bình Dương')
INSERT INTO dbo.TTCN ( idAc, HoTen, SDT, DiaChi )  VALUES  ( 3, N'Nguyễn Văn B', N'6666666666', N'256/7 DT745 Thuận An , Bình Dương')
GO 


CREATE TABLE GIOHANG
(
	idGH INT IDENTITY(1,1) PRIMARY KEY,
	idAc INT NOT NULL,
	CONSTRAINT fk_ac_gh FOREIGN KEY (idAc) REFERENCES dbo.ACCOUNT(idAc)
)
GO 
SELECT * FROM dbo.GIOHANG
--Thêm dữ liệu
INSERT INTO dbo.GIOHANG ( idAc ) VALUES  (1)
INSERT INTO dbo.GIOHANG ( idAc ) VALUES  (2)
INSERT INTO dbo.GIOHANG ( idAc ) VALUES  (3)
GO 


CREATE TABLE HOADON
(
	idHD INT IDENTITY(1,1) PRIMARY KEY,
	idAc INT NOT NULL,
	TongTT MONEY NOT NULL,
	status BIT DEFAULT 0 ---- 0 : chưa thanh toán - 1 : đã thanh toán
	CONSTRAINT fk_ac_hd FOREIGN KEY (idAc) REFERENCES dbo.ACCOUNT(idAc)
)
GO 
SELECT * FROM dbo.HOADON
--Thêm hoá đơn 

GO 


CREATE TABLE QUANGCAO
(
	idQC INT IDENTITY(1,1) PRIMARY KEY,
	TenQC NVARCHAR(100),
	NoiDung NVARCHAR(1000),
	ImagesQC NVARCHAR(20),
	KM INT,
	TangThem NVARCHAR(1000)
)
GO 
SELECT * FROM dbo.QUANGCAO
--Thêm dữ liệu 


GO 


CREATE TABLE NHASANXUAT
(
	idNSX INT IDENTITY(1,1) PRIMARY KEY,
	DiaChi NVARCHAR(100) NOT NULL,
	SDT NVARCHAR(20) NOT NULL,
	TenNSX NVARCHAR(100) 
)
GO
SELECT * FROM dbo.NHASANXUAT
--Thêm dữ liệu
INSERT INTO dbo.NHASANXUAT ( DiaChi, SDT , TenNSX) VALUES  ( N'Phúc Thắng, Phúc Yên, Vĩnh Phúc',N'1800 8001',N'Honda')
INSERT INTO dbo.NHASANXUAT ( DiaChi, SDT , TenNSX) VALUES  ( N'18 Phan Văn Trị, Phường 7, Quận Gò Vấp, Thành phố Hồ Chí Minh',N'(028) 3989 6636',N'Toyota')
INSERT INTO dbo.NHASANXUAT ( DiaChi, SDT , TenNSX) VALUES  ( N'808 Nguyễn Văn Linh, P. Tân Phú, Q.7, Tp.HCM, VN',N'0938 853 643',N'BMW')
INSERT INTO dbo.NHASANXUAT ( DiaChi, SDT , TenNSX) VALUES  ( N'Tầng 8, tòa nhà Thành Công, Cầu Giấy, Hà Nội ',N'(84-24)37951116',N'Hyundai Thành Công')
INSERT INTO dbo.NHASANXUAT ( DiaChi, SDT , TenNSX) VALUES  ( N'79-81, Quốc lộ 13, Hiệp Bình Chánh, Thủ Đức, TP. HCM',N'0933 596611',N'Mitsubishi Motors')

GO 

CREATE TABLE TSKT 
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	kieudongco NVARCHAR(200),
	hopso NVARCHAR(100),
	dungtichxilanh FLOAT(3),
	congsuat NVARCHAR(100),
	momenxoan NVARCHAR(100),
	tocdo INT,
	thoigiantangtoc FLOAT(2),
	dungtichthungnhienlieu INT,
	hethongnhienlieu NVARCHAR(100)
)

GO 
SELECT * FROM dbo.TSKT
--Thêm dữ liệu 
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'1.5L DOHC VTEC TURBO, 4 xy-lanh thẳng hàng,ứng dụng EARTH DREAMS TECHNOLOGY"', N'Vô cấp (CVT) EARTH DREAMS TECHNOLOGY"', 1.498, N'170/5.500', N'220/1.700 - 5.500', 200, 8.3, 47, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'SOHC i-VTEC, 4 xy lanh thẳng hàng', N'Vô cấp/CVT Ứng dụng công nghệ Earth Dreams Technology', 1.498, N'88/6.600', N'145/4.600', 200, 8.3, 40, N'Phun xăng điện tử/PGM-FI')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'SOHC i-VTEC, 4 xy lanh thẳng hàng', N'Vô cấp/CVT Ứng dụng công nghệ Earth Dreams Technology', 1.498, N'88/6.600', N'145/4.600', 200, 8.3, 40, N'Phun xăng điện tử/PGM-FI')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'1.5L DOHC VTEC TURBO, 4 xy-lanh thẳng hàng,ứng dụng EARTH DREAMS TECHNOLOGY"', N'Vô cấp (CVT) EARTH DREAMS TECHNOLOGY"', 1.498, N'188/5.600', N'240/2.000 - 5.000', 250, 7.0, 57, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'SOHC I-VTEC 4 XI LANH THẲNG HÀNG', N'Vô cấp (CVT) EARTH DREAMS TECHNOLOGY"', 1.497, N'88/6.600', N'145/4.600', 210, 10.5, 40, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Động cơ xăng, VVT-i kép, 4 xy lanh thẳng hàng, 16 van DOHC', N'Số tay 5 cấp', 1998, N'102 / 5600', N'183 / 4000', 245, 9.5, 55, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Động cơ xăng, VVT-i kép, 4 xy lanh thẳng hàng, 16 van DOHC', N'Tự động 6 cấp', 1998, N'102 / 5600', N'183 / 4000', 260, 9.5, 55, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'2GR-FE,3.5L, 6 xy lanh chữ V, 24 Van, DOHC kèm VVTi kép', N'Tự động 6 cấp', 3456, N'202(271)/6200', N'340/4700', 200, 8.5, 75, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Động cơ xăng BMW TwinPower 3.0 lít 6 xilanh thẳng hàng', N'Steptronic và iDrive ', 1.997, N'135 (184)/5,000', N'270/1,250-4,500', 250, 5.7, 60, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Động cơ xăng BMW TwinPower 3.0 lít 6 xilanh thẳng hàng', N'Steptronic và iDrive ', 1.997, N'135 (184)/5,000', N'270/1,250-4,500', 235, 7.9, 60, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Động cơ xăng BMW TwinPower Turbo 3.0 lít 6 xilanh thẳng hàng', N'Steptronic và iDrive ', 1.998, N'190 (258)/5,000 - 6,500 (750Li)', N'400/1,550-4,400', 250, 6.3, 78, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Kappa 1.4 Dual DOHC 6 số sàn ', N'Tự động Vô cấp', 1.997, N'100 (150)/6,000', N'13,6/4.000', 180, 8.3, 43, N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Gamma 1.6L  ', N'Sàn tự động 6 cấp', 1591 , N'128/6,300 ', N'155/4,850 ', 156, 10.0, 50 , N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'Nu 2.0 MPI 4 xy lanh thẳng hàng, 16 van DOHC, D-CVVT ', N'6AT', 1999 , N'157/6,200', N'20/4,000', 200, 9.1, 70 , N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'1.6 T-GDI ', N'7DCT ', 1997 , N'177/5,500 ', N'265/1,500~4,500', 160, 7.2, 62 , N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'1.2L MIVEC ', N'Tự động vô cấp CVT INVECS III', 1.193 , N'78 / 6.000', N'100 / 4.000', 172, 7.8, 42 , N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'4B11 DOHC MIVEC', N'Số tự động vô cấp (CVT) INVECS III', 1.998 , N'145/6.000', N'196/4.200', 164, 8.8, 63 , N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'4B12 DOHC MIVEC', N'Số tự động vô cấp (CVT) INVECS III', 2.360 , N'167/6.000', N'222/4.100', 180, 6.8, 60 , N'PGM-FI/ Phun xăng trực tiếp')
INSERT INTO dbo.TSKT ( kieudongco, hopso, dungtichxilanh, congsuat, momenxoan, tocdo, thoigiantangtoc, dungtichthungnhienlieu, hethongnhienlieu)
VALUES  (N'2.5L Diesel DI-D, VGT turbo', N'5AT - Sport mode', 2.477 , N'178/4.000', N'400/2.000', 169, 7.8, 75 , N'PGM-FI/ Phun xăng trực tiếp')


GO 



CREATE TABLE SANPHAM
(
	idSP INT IDENTITY(1,1) PRIMARY KEY,
	idQC INT ,
	idNSX INT NOT NULL,
	TenSP NVARCHAR(50) NOT NULL,
	HinhMinhHoa NVARCHAR(30),
	NgayCapNhat SMALLDATETIME DEFAULT GETDATE(),
	GioiThieuSP NVARCHAR(1000) ,
	DonGia MONEY NOT NULL,
	DonViTinh NVARCHAR(10) NOT NULL,
	SLTon INT NOT NULL,
	Type INT NOT NULL,
	idTSKT INT ,
	CONSTRAINT fk_qc_sp FOREIGN KEY (idQC) REFERENCES dbo.QUANGCAO(idQC),
	CONSTRAINT fk_sp_sp FOREIGN KEY (idNSX) REFERENCES dbo.NHASANXUAT(idNSX),
	CONSTRAINT fk_idts_tskt FOREIGN KEY (idTSKT) REFERENCES dbo.TSKT(id)

)
GO 
SELECT * FROM dbo.SANPHAM
--Thêm dữ liệu 
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (1, N'HONDA CIVIC 1.5L VTEC TURBO', 898000000, 10, 1, N'Chiếc', N'civic15lvtec.jpg',1)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (1, N'HONDA CITY 1.5 TOP', 568000000, 10, 1, N'Chiếc', N'hondacity15top.jpg',2)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (1, N'HONDA CITY 1.5 CVT', 568000000, 10, 1, N'Chiếc', N'hondacity15cvt.jpg',3)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (1, N'HONDA CR-V 2.0 AT', 898000000, 10, 1, N'Chiếc', N'hondacrv20.png',4)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (1, N'HONDA JAZZ 1.5V', 999000000, 10, 1, N'Chiếc', N'jazz15v.jpg',5)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (2, N'TOYOTA INNOVA 2.0E MT', 733000000, 10, 1, N'Chiếc', N'innovae20emt.jpg',6)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (2, N'TOYOTA INNOVA 2.0G MT', 733000000, 10, 1, N'Chiếc', N'innovae20gmt.jpg',7)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (2, N'TOYOTA ALPHARD', 3500000000, 10, 1, N'Chiếc', N'alphard.jpg',8)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (3, N'BMW Sedan 3 Gran Turismo', 2098000000, 10, 1, N'Chiếc', N'bmw3series.jpg',9)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (3, N' BMW 5 Series Senda 520i', 2098000000, 10, 1, N'Chiếc', N'bmw5series.jpg',10)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (3, N' BMW 7 Series Senda 750i', 8888000000, 10, 1, N'Chiếc', N'bmw7series750i.jpg',11)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (4, N'Hyundai Accent 1.4 MT', 6000000, 10, 1, N'Chiếc', N'accentwhite.png',12)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (4, N'Hyundai Elantra 2016 1.6 MT', 660000000, 10, 1, N'Chiếc', N'elantra.png',13)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (4, N'Hyundai Sonata 2.0 AT', 580000000, 10, 1, N'Chiếc', N'sonata.jpg',14)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (4, N'Hyundai Tucson 1.6L T-GDI Đặc Biệt', 887000000, 10, 1, N'Chiếc', N'tucson.png',15)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (5, N'Mitsubishi Attrage CVT ', 505000000, 10, 1, N'Chiếc', N'attrage.png',16)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (5, N'Mitsubishi Outlander 2.0 CVT ', 1088000000, 10, 1, N'Chiếc', N'outlander01.png',17)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (5, N'Mitsubishi Outlander 2.4 CVT ', 1158000000, 10, 1, N'Chiếc', N'outlander02.png',18)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,idTSKT)
VALUES  (5, N'Mitsubishi Triton 4X2 AT ', 576000000, 10, 1, N'Chiếc', N'triton.png',19)
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (1, N'Lọc Dầu Động Cơ ', 100000, 100, 2, N'Chiếc', N'locdauhonda.jpg', N'Dầu động cơ được giữ sạch bằng lọc dầu, bộ phận này giữ lại các chất cặn và bẩn vốn có trong động cơ. Vì chất cặn và chất bẩn tích tụ trong lọc dầu qua thời gian nên cần phải thay lọc dầu định kỳ đảm bảo cho dầu luôn sạch để bôi trơn khắp động cơ.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (1, N'Bu-gi ', 230000, 100, 2, N'Chiếc', N'bugihonda.jpg', N'Bu-gi có nhiệm vụ đốt cháy hỗn hợp nhiên liệu/khí và bắt đầu giai đoạn đốt cháy trong động cơ. Khi bu-gi bị mòn sẽ giảm khả năng truyền điện. bu-gi yếu hoặc bị hỏng có thể dẫn đến động cơ không nổ hoặc động cơ hoạt động yếu. Sự hoạt động của bu-gi kém dần cùng với quá trình sử dụng và Cần phải thay thế bu-gi như là phần bảo dưỡng định kỳ.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (1, N'Lọc Gió Động Cơ', 100000, 100, 2, N'Chiếc', N'locgiohonda.jpg', N'Bộ phận lọc gió lọc và chứa bụi và phấn hoa trong động cơ. Khi bộ phận lọc bị bẩn nó sẽ mất khả năng lọc không khí. Điều này có thể dẫn đến tốn nhiên liệu và hoạt động của động cơ kém hiệu quả. Kiểm tra và thay thế định kì lọc gió nên được tiến hành đúng thời gian. Lọc gió có thể cần thay thế thường xuyên nếu xe chạy thường xuyên trong điều kiện bụi bẩn.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (1, N'Bộ Má Phanh', 1650000, 100, 2, N'Chiếc', N'phanhhonda.jpg', N'Đối với phanh đĩa, phanh là kết quả của sự cọ sát của đĩa phanh đang quay được kẹp bởi má phanh. Ma sát này sẽ tạo nên sự hao mòn cho má phanh. Ngay từ giai đoạn R&D, Honda đã chủ trương để đạt được hiệu xuất tối đa phanh, duy trì cân bằng tốt nhất giữa lực phanh và độ bền của má phanh.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (2, N'Càng A Dưới Innova', 180000, 100, 2, N'Chiếc', N'cang-a-duoi-innova.jpg', N'Toyota innova là dòng xe 9 chỗ nên hệ thống treo trên xe cũng phải chịu một lực lớn hơn nhiều so với những dòng xe hơi khác. Ở hệ thống treo, chi tiết càng a đóng vai trò quan trọng giúp hệ thống hoạt động ổn định, xe vận hành đúng hướng theo ý muốn tài xế.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (2, N'Mô Tơ Bơm Xăng Innova', 1125000, 100, 2, N'Chiếc', N'bomxanginnova.jpg', N'Bơm xăng innova là chi tiết quan trọng của ô tô và chức năng của nó tương tự như tim của chúng ta. Nếu như tim bơm máu đi nuôi cơ thể thì bơm xăng bơm nhiên liệu cho động cơ hoạt động giúp xe có thể chạy được. Cấu tạo bơm xăng innova điện tuabin cánh quạt (tubine impeller), mô tơ điện (electric motor amature), chổi than (motor brushes), fuel inlet (đầu vào nhiên liệu), van một chiều (one way check valve).')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (2, N'Quạt Dàn Lạnh Innova', 300000, 100, 2, N'Chiếc', N'quatdanlanhinnova.jpg', N'Motor quạt dàn lạnh innova nằm trong hệ thống điều hòa xe ô tô toyota innova giúp không khí được luân chuyển đi khắp không gian xe với từng chế độ gió điều chỉnh phù hợp. Công việc này được quạt điều hòa (quạt dàn lạnh) đảm nhiệm.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (3, N'Lọc Dầu Máy BMW', 300000, 100, 2, N'Chiếc', N'locdaumaybmw.jpg', N'thường xuyên sử dụng xe trong điều kiện đường nhiều khói bụi, ô nhiễm hay nhiều dốc,  các cung đường xấu thì đều ảnh hưởng đến thời gian sử dụng lọc dầu máy xe. Nếu xe thường xuyên chạy trong thành phố, nơi mà phải sử dụng phanh thường xuyên, giảm tốc và tăng tốc thường xuyên, tốc độ chạy không ổn định thì cần thay thế lọc dầu sớm hơn trường hợp xe chạy đường trường, luôn có tốc độ ổn định. ')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (3, N'Dàn lạnh điều hòa BMW X5 ', 1000000, 100, 2, N'Chiếc', N'gianlanhbmwx5.jpg', N'Hệ thống điều hòa ô tô là một thành phần không thể thiếu. Đặc biệt với điều kiện thời tiết nóng bức thì điều hòa ngày càng trở nên quan trọng, Không chỉ mang lại cảm giác thoải mái  cho người ngồi trên xe mà còn giúp người ngồi trên xe thường xuyên tránh được bệnh. ')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (5, N'Dầu Nhớt Và Hoá Chất Mitsubishi ', 300000, 100, 2, N'Chiếc', N'daunhotmitsu.jpg', N'MMV tạo ra dòng sản phẩm dầu nhờn & hóa chất chính hiệu Mitsubishi, được gọi là “Dầu nhờn & hóa chất thế hệ mới” – được nghiên cứu, sản xuất để sử dụng tốt nhất cho các loại xe Mitsubishi. Có chức năng : ngăn ngừa sự ăn mòn trong hệ thống làm mát, ngăn ngừa sự quá nhiệt, chống đông.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (5, N'Dây Curoa Mitsubishi ', 200000, 100, 2, N'Chiếc', N'daycuroamitsu.jpg', N'Dây curoa đòi hỏi phải chịu được nhiệt độ cao cũng như thay đổi tốc độ, bởi vì nó thường xuyên xoay vòng với tốc độ cao. Qua các cuộc kiểm nghiệm sức bền ở nhiệt độ cao và độ căng lớn, dây curoa chính hiệu Mitsubishi có khả năng chịu được các điều kiện hoạt động khắc nghiệt.')
INSERT INTO dbo.SANPHAM (idNSX, TenSP, DonGia, SLTon, Type, DonViTinh, HinhMinhHoa,GioiThieuSP)
VALUES  (5, N'Lọc Gió Mitsubishi ', 170000, 100, 2, N'Chiếc', N'locgiomitsu.jpg', N'Lọc gió có chức năng lọc bụi trong không khí và cung cấp không khí sạch cho động cơ. Một lọc gió bị dơ hoặc bị bít thì không thể cung cấp đủ không khí sạch cho động cơ. Sử dụng lọc giả có thể gây tác hại nghiêm trọng cho động cơ.')


GO 


CREATE TABLE THONGTINHD
(
	idTTHD INT IDENTITY(1,1) PRIMARY KEY,
	idHD INT NOT NULL,
	idSP INT NOT NULL,
	SoLuong INT NOT NULL,
	CONSTRAINT fk_hd_tthd FOREIGN KEY (idHD) REFERENCES dbo.HOADON(idHD),
	CONSTRAINT fk_sp_tthd FOREIGN KEY (idSP) REFERENCES SANPHAM(idSP)
)
GO 


CREATE TABLE THONGTINGH
(
	idTTGH INT IDENTITY(1,1) PRIMARY KEY,
	idGH INT NOT NULL,
	idSP INT NOT NULL,
	SoLuong INT NOT NULL,
	CONSTRAINT fk_gh_ttgh FOREIGN KEY (idGH) REFERENCES dbo.GIOHANG(idGH),
	CONSTRAINT fk_sp_ttgh FOREIGN KEY (idSP) REFERENCES dbo.SANPHAM(idSP)
)
GO 

