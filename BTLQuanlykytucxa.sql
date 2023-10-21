create database Cau27_QuanLyKyTucXa_10121544_DOHUONGLY
go
--mo CSDL
use Cau27_QuanLyKyTucXa_10121544_DOHUONGLY
--Tạo bảng sinh viên(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
create table Sinhvien
(
Masv char(10) primary key,
Hoten nvarchar (50),
Ngaysinh date,
Gioitinh nvarchar(20) check (Gioitinh in('Nam',N'Nữ')),
Sđt char(11) default N'Không có')

--Tao bang phòng(Maphong, Tenphong, Succhua, Tinhtrang)
create table Phong
(
Maphong char(10) primary key,
Tenphong nvarchar (50),
Succhua char(11)  ,
Tinhtrang nvarchar(10)
)

---Tạo bảng hợp đồng thuê(Mahd, Masv,Maphong, Ngaybatdau, Ngayketthuc)----------------
create table Hopdongthue
(
Mahdong char(10) primary key,
Masv char(10) foreign key references Sinhvien(Masv) on delete cascade on update cascade,
Maphong char(10) foreign key references Phong(Maphong) on delete cascade on update cascade,
Ngaybatdau date,
Ngayketthuc date
)

---Tạo bảng Phiếu trả phòng(Maphieutra,Mahd,Ngaytra,Phiphat)-------------------
create table PhieuTraPhong
(
Maphieutra char(10) primary key,
Mahdong char(10)  foreign key references Hopdongthue(Mahdong)on delete cascade on update cascade,
Ngaytra date
)

---Tạo bảng Hoá đơn(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)------------
create table Hoadon
(Mahdon char(10) primary key,
Maphong char(10) foreign key references Phong(Maphong)on delete cascade on update cascade,
Ngaylap date,
Ngaydaohan date,
Tongtien float,
Trangthai nvarchar(30)
)


--b. Nhap DL cho sinh viên(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv01',N'Hoàng Thị Mai Anh','2003-09-07',N'Nữ','0369467033')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv02',N'Phạm Thị Hồng','2003-09-20',N'Nữ','0369476433')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv03',N'Nguyễn Minh Đức','2003-10-03',N'Nam','0344908159')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv04',N'Đỗ Xuân Phong','2003-05-13',N'Nam','0867853236')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv05',N'Trần Ngọc Hà','2003-12-07',N'Nữ','0943330538')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv06',N'Hoàng Tuấn Tùng','2003-11-09',N'Nam','0773892322')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv07',N'Bùi Thị Ánh','2003-10-10',N'Nữ','0983330529')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv08',N'Nguyễn Văn Hoàng','2003-07-07',N'Nam','0243333548')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv09',N'Phạm Thị Thanh Lan','2003-5-20',N'Nữ','0949833530')
insert into Sinhvien(Masv,Hoten,Ngaysinh,Gioitinh,Sđt)
values ('Sv10',N'Phạm Thị Bích Ngọc','2003-10-20',N'Nữ','0253330558')


--Nhap DL cho bang  phòng(Maphong, Tenphong, Succhua, Tinhtrang)
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP01','TP01','8',N'Đã thuê')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP02','TP02','6',N'Trống')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP03','TP03','8',N'Đang sửa')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP04','TP04','2',N'Đã thuê')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP05','TP05','4',N'Hoàn thành')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP06','TP06','8',N'Đã thuê')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP07','TP07','2',N'Đã thuê')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP08','TP08','6',N'Trống')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP09','TP09','9',N'Đã thuê')
insert into Phong(Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP10','TP10','2',N'Hoàn thành')


--Nhap DL cho bang hợp đồng thuê(Mahd, Masv,Maphong, Ngaybatdau, Ngayketthuc)
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD01','Sv01','MP01','2023-03-02','2025-03-02')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD02','Sv02','MP02','2023-04-02','2024-04-02')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD03','Sv03','MP03','2023-05-10','2025-04-20')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD04','Sv04','MP04','2023-02-02','2026-05-10')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD05','Sv05','MP05','2023-03-20','2024-04-15')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD06','Sv06','MP06','2023-05-20','2025-05-20')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD07','Sv07','MP07','2023-01-29','2026-03-29')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD08','Sv08','MP08','2023-03-26','2024-02-15')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD09','Sv09','MP09','2023-04-09','2025-05-22')
insert into Hopdongthue(Mahdong,Masv,Maphong,Ngaybatdau,Ngayketthuc)
values ('MHD10','Sv10','MP10','2023-01-11','2024-03-19')

--Nhap DL cho bang Phiếu trả phòng(Maphieutra,Mahdong,Ngaytra)
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T01','MHD01' ,'2025-03-02')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T02','MHD02' ,'2024-04-02')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T03','MHD03' ,'2025-04-20')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T04','MHD04' ,'2026-05-10')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T05','MHD05' ,'2024-04-15')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T06','MHD06' ,'2025-05-20')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T07','MHD07' ,'2026-03-29')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T08','MHD08' ,'2024-02-15')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T09','MHD09' ,'2025-05-22')
insert into PhieuTraPhong(Maphieutra,Mahdong,Ngaytra)
values ('T10','MHD10' ,'2024-03-19')



----Nhap DL cho Hoá đơn(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD01','MP01', '2023-06-10','2023-06-20','850000',N'Đã nộp')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD02','MP02', '2023-06-10','2023-06-20','750000',N'Quá hạn')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD03','MP03', '2023-06-10','2023-06-20','900000',N'Hẹn tháng sau')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD04','MP04', '2023-06-10','2023-06-20','950000',N'Quá hạn')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD05','MP05', '2023-06-10','2023-06-20','650000',N'Đã nộp')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD06','MP06', '2023-06-10','2023-06-20','1000000',N'Đã nộp')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD07','MP07', '2023-06-10','2023-06-20','950000',N'Chưa nộp')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD08','MP08', '2023-06-10','2023-06-20','1500000',N'Tháng sau')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD09','MP09', '2023-06-10','2023-06-20','700000',N'Đã nộp')
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD10','MP10', '2023-06-10','2023-06-20','600000',N'Đã nộp')

--kiểm tra dữ liệu vào các bảng
select *from Sinhvien

select *from Phong

select *from Hopdongthue

select *from PhieuTraPhong

select *from Hoadon 

-------------------------------------------------------------------------------------------------------------------------------------------
--2 QUẢN LÝ NGƯỜI DÙNG (tối thiểu 5 người dùng và một nhóm người dùng)
--2.1 Đăng nhập tài khoản sa để tạo các login, user, role theo yêu cầu (scrips)
------Tạo login & password -------
exec  sp_addlogin Sv01,'Sv01'
exec  sp_addlogin Sv02,'Sv02'
exec  sp_addlogin Sv03,'Sv03'
exec  sp_addlogin Sv04,'Sv04'
exec  sp_addlogin Sv05,'Sv05'
exec sp_addlogin AD, 'ADMIN'
SELECT name FROM sys.syslogins

--Tạo user từ login-----------
exec sp_adduser Sv01,Sinhvien01
exec sp_adduser Sv02,Sinhvien02
exec sp_adduser Sv03,Sinhvien03
exec sp_adduser Sv04,Sinhvien04
exec sp_adduser Sv05,Sinhvien05
exec sp_adduser ADMIN,QUANTRIVIEN

SELECT name FROM sys.sysusers WHERE issqluser = 1;

-----Tạo nhóm người dùng --------------------
exec sp_addrole Sinhvien
-----Thêm các nhóm người dùng-------------
exec sp_addrolemember Sinhvien,Sinhvien01
exec sp_addrolemember Sinhvien,Sinhvien02
exec sp_addrolemember Sinhvien,Sinhvien03
exec sp_addrolemember Sinhvien,Sinhvien04
exec sp_addrolemember Sinhvien,Sinhvien05

--2.2 Đăng nhập với các login để thực hiện các quyền mà sa đã cấp 
-----Cấp quyền truy cập----------------------
grant insert,update,delete on Phong to Sinhvien
grant insert,update,delete on Sinhvien to Sinhvien
grant insert,update,delete on Hopdongthue to Sinhvien
grant insert,update,delete on PhieuTraPhong to Sinhvien
grant insert,update,delete on Hoadon to Sinhvien
exec sp_helprotect @username = 'Sinhvien'
--đăng nhập vào Sv01 
 execute as login = 'Sv01'
go
	select * from Phong
revert
go
--2.3 Thu hồi quyền của user
REVOKE SELECT, INSERT, UPDATE ON Phong to Sinhvien
REVOKE SELECT, INSERT, UPDATE ON Hopdongthue TO Sinhvien
REVOKE SELECT, INSERT, UPDATE ON PhieuTraPhong TO Sinhvien
REVOKE SELECT, INSERT, UPDATE ON Sinhvien TO Sinhvien
REVOKE SELECT, INSERT, UPDATE ON Phong TO Sinhvien

---------------------------3 TÌM KIẾM DỮ LIỆU THEO CHỈ MỤC
-----3.1.1Tạo chỉ mục đơn-------
CREATE NONCLUSTERED INDEX idx_Index1 ON Sinhvien(Hoten);
select * from Sinhvien with(index = idx_Index1)
where Sinhvien.Hoten = N'Hoàng Thị Mai Anh'
--chỉ mục đơn có tuỳ chọn hệ số điền đầy
CREATE NONCLUSTERED INDEX idx_Index2 ON Sinhvien(Hoten) WITH (FILLFACTOR = 80);
select * from Sinhvien with(index = idx_Index2)
where Sinhvien.Hoten like N'%Mai Anh%'
exec sp_helpindex Sinhvien

--3.2 chỉ mục phức hợp
CREATE NONCLUSTERED INDEX CHIMUCDOI_NONCLUSTERED_SInhviien4 ON Sinhvien(Hoten,Ngaysinh)
GO
select * from Sinhvien 
where Sinhvien.Hoten = N'Hoàng Thị Mai Anh' and Ngaysinh = '2003-09-07'



CREATE NONCLUSTERED INDEX CHIMUCDOI_NONCLUSTERED_Sinhvien3 ON Sinhvien(Hoten,Gioitinh)
GO
select * from Sinhvien with(index = idx_Index1)
where Sinhvien.Hoten = N'Hoàng Thị Mai Anh' and Gioitinh=N'Nữ'

--chỉ mục toàn văn
exec sp_fulltext_database 'enable'
CREATE FULLTEXT CATALOG FullTextCatalog AS DEFAULT;
GO
CREATE FULLTEXT INDEX ON  Hopdongthue (Mahdong) KEY INDEX Hopdongthue
WITH 
    CHANGE_TRACKING = AUTO, 
    STOPLIST=OFF
go
CREATE FULLTEXT INDEX ON  Sinhvien (Hoten) KEY INDEX Sinhvien
WITH 
    CHANGE_TRACKING = AUTO, 
    STOPLIST=OFF
go
create fulltext index on Hoadon (Mahdon) key index Hoadon
with 
	change_tracking = auto,
	stoplist = off
go
--text full text
select * from Hoadon where contains(Mahdon,'MHD09')
select * from Sinhvien where contains(Hoten, N'Đỗ Xuân Phong')
select * from Phong where contains(Tenphong,'TP07')
GO

----------------4.THIẾT KẾ VIEW------
--4.1 2 view tạo trên 1 bảng
--Hiển thị danh sách
drop view view_1
create view view_1 
as 
select dbo.Sinhvien.Masv,dbo.Sinhvien.Hoten,dbo.Sinhvien.Ngaysinh,dbo.Sinhvien.Gioitinh,dbo.Sinhvien.Sđt
from Sinhvien
go

--thao tác với câu lệnh Insert-cập nhật dữ liệu thông qua view
insert into Sinhvien (Masv, Hoten, Ngaysinh, Gioitinh, Sđt)
values ('Sv1', N'Ngô Ánh Tuyết', '2003-07-20', N'Nữ', '0369476433');

update Sinhvien
set Ngaysinh = '2003-07-20'
where Masv = 'Sv1';

delete from Sinhvien
where Masv = 'Sv1';

-- Xem kết quả từ view view_1
select * from view_1;

-----------------------------------
create view view_2 as 
select dbo.Phong.Maphong,dbo.Phong.Tenphong,dbo.Phong.Succhua,dbo.Phong.Tinhtrang
from Phong
go
select * from view_2
--thao tác với câu lệnh Insert
insert into view_2 (Maphong,Tenphong,Succhua,Tinhtrang)
values ('MP11','TP11','5',N'Trống');
--thao tác với câu lệnh Update
UPDATE view_2 SET Succhua = '5'
WHERE Maphong = 'MP11';
--thao tác với câu lệnh Delete
DELETE FROM view_2
WHERE Maphong = 'MP11';

--4.2 3 view trên 2,3 bảng
drop view view_3
create view view_3
as
select dbo.Hopdongthue.Mahdong,dbo.Sinhvien.Masv,dbo.Phong.Maphong,dbo.Hopdongthue.Ngaybatdau,dbo.Hopdongthue.Ngayketthuc
from Hopdongthue inner join Sinhvien on Hopdongthue.Masv = Sinhvien.Masv
inner join Phong on Phong.Maphong=Hopdongthue.Maphong
--thao tác với câu lệnh Insert
-- Thực hiện các thao tác INSERT, UPDATE và DELETE trên bảng Hopdongthue
insert into Hopdongthue (Mahdong, Masv, Maphong, Ngaybatdau, Ngayketthuc)
values ('MHD13', 'Sv01', 'MP01', '2024-03-02', '2025-03-02');

update Hopdongthue
set Ngayketthuc = '2026-03-02'
where Mahdong = 'MHD13';

delete from Hopdongthue
where Mahdong = 'MHD13';
-- Xem kết quả từ view view_3
select * from view_3;

---------------------------------------
create view view_4
as
select Maphieutra,dbo.Hopdongthue.Mahdong,Ngaytra 
from PhieuTraPhong inner join Hopdongthue on PhieuTraPhong.Mahdong= Hopdongthue.Mahdong

--thao tác với câu lệnh Insert
-- Thực hiện các thao tác INSERT, UPDATE và DELETE trên bảng Hopdongthue
insert into PhieuTraPhong (Maphieutra,Mahdong,Ngaytra)
values ('T12','MHD10' ,'2025-03-02')

update view_4 set Ngaytra='2026-03-02'
where Maphieutra = 'T12';

delete from PhieuTraPhong
where Maphieutra = 'T12';
-- Xem kết quả từ view_4
select * from view_4
drop view view_4
------------------------------------------------------------
create view view_5 as
select dbo.Hoadon.Mahdon,dbo.Phong.Maphong, dbo.Hoadon.Ngaylap,dbo.Hoadon.Ngaydaohan,dbo.Hoadon.Tongtien,dbo.Hoadon.Trangthai
from Hoadon inner join Phong on Hoadon.Maphong=Phong.Maphong
--thao tác với câu lệnh insert
insert into Hoadon(Mahdon,Maphong,Ngaylap,Ngaydaohan,Tongtien,Trangthai)
values ('MHD13','MP10', '2023-06-10','2023-06-20','850000',N'Đã nộp')
--thao tác với câu lệnh Update
update Hoadon set Ngaylap= '2023-06-10'
where Mahdon = 'MHD13';
--thao tác với câu lệnh Delete
delete from Hoadon
where Mahdon = 'MHD13';
select *from view_5
drop view view_5
--5 VIẾT TRUY VẤN VỚI CÁC TOÁN TỬ NÂNG CAO VÀ SỬ DỤNG CẤU TRÚC ĐIỀU KHIỂN
--5.1 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Hiển thị sinh viên có họ "Bùi" và giới tính nữ
select Sinhvien.Masv, Sinhvien.Hoten, Sinhvien.Ngaysinh, Sinhvien.Gioitinh, Sinhvien.Sđt
from Sinhvien
where Sinhvien.Hoten like N'Bùi%' or Sinhvien.Gioitinh=N'Nữ';

--5.2 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Hiển thị phòng 
SELECT Phong.Maphong, Phong.Tenphong, Phong.Succhua, Phong.Tinhtrang
FROM Phong
LEFT JOIN Hopdongthue ON Phong.Maphong = Hopdongthue.Maphong
WHERE Hopdongthue.Maphong IS NULL;

--5.3 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển- Đếm số lượng 
select PhieuTraPhong.Maphieutra ,PhieuTraPhong.Ngaytra, COUNT(Hopdongthue.Mahdong) as SLHD 
from PhieuTraPhong INNER JOIN Hopdongthue on PhieuTraPhong.Mahdong= Hopdongthue.Mahdong
where Hopdongthue.Mahdong= 'MHD01'
group by PhieuTraPhong.Maphieutra ,PhieuTraPhong.Ngaytra

--5.4 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển - Hiển thị sinh viên có tuổi lớn nhất
select top (1) with ties Sinhvien.Masv,Sinhvien.Hoten, DATEDIFF ( Year,Sinhvien.Ngaysinh,getdate()) as Tuoi
from Sinhvien
order by  Tuoi asc ---tuổi tăng dần của sinh viên----

---5.5  Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển - Hiển thị tổng số sinh viên theo giới tính:
select Gioitinh, count(Gioitinh) as TongSoSinhVien
from Sinhvien
group by Gioitinh;

--5.6 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển - Hiển thị thông tin các phòng có sức chứa lớn hơn 3 người:
select Phong.Maphong,Phong.Succhua
FROM Phong
WHERE Succhua > 3;

--5.7 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển -Cập nhật thông tin của một sinh viên:
UPDATE Sinhvien 
SET  Hoten = 'Nguyễn Hoàng Anh', Ngaysinh = '2000-09-10', Gioitinh ='Nam', Sđt='09874256456'
WHERE Masv = 'Sv11';

--5.8 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Hiển thị mã các phòng và TÊN TOÀ NHÀ(thuộc tính tự đặt)
select Maphong,Tenphong,Succhua, Tinhtrang ,count(Maphong) AS Tentoanha
from Phong 
group by Maphong,Tenphong,Succhua, Tinhtrang;

--5.9 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Hiển thị các danh mục có hoá đơn là trang thái đã nộp 
select Phong.Maphong,Hoadon.Trangthai
from Phong inner join Hoadon on Phong.Maphong=Hoadon.Maphong 
where Hoadon.Trangthai=N'Đã nộp' ;

--5.10 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Hiển thị thông tin sinh viên theo tên trong thứ tự bảng chữ cái 
select Masv,Hoten,Gioitinh,Ngaysinh,Sđt
from Sinhvien
order by Hoten;

--5.11 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Tìm phòng có số lượng sức chứa lớn nhất:
SELECT Max(Succhua) FROM Phong;

--5.12 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển - Hiển thị danh sách hợp đồng thuê phòng theo thứ tự giảm dần của ngày bắt đầu thuê:
select Hopdongthue.Mahdong, Hopdongthue.Ngaybatdau
from Hopdongthue
order by Ngaybatdau desc;

--5.13 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển - Hiển thị thông tin sinh viên thuê phòng có mã phòng cụ thể:
select Sinhvien.Masv,Sinhvien.Hoten,Sinhvien.Ngaysinh,Sinhvien.Sđt
from Sinhvien
inner join Hopdongthue on Sinhvien.Masv = Hopdongthue.Masv
where Hopdongthue.Maphong = 'MP07';

--5.14 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Kiểm tra xem phòng nào có sức chứa ít hơn 5 không?
SELECT Maphong FROM Phong WHERE Succhua < 5;

--5.15 Câu truy vấn với toán tử nâng cao và cấu trúc điều khiển-Hiển thị Phòng có sức chứa trong khoảng từ 6 đến 8 
SELECT *
FROM Phong
WHERE Succhua BETWEEN 6 AND 8;

----------------6Viết được các thủ tục lưu và các hàm đáp ứng các chức năng (tối thiểu 10 thủ tục, 5 hàm)----------
---Thủ tục thêm sinhvien
create proc usp_themsinhvien
    @Masv char(10),
    @Hoten nvarchar(50),
    @Ngaysinh date,
    @GioiTinh nvarchar(20),
    @Sđt char(11)
as
begin
   if exists (select Sinhvien.Masv from Sinhvien where  Masv=@Masv )
		begin
			print('Mã sinh viên đã tồn tại')
		end
	else
		begin
			insert into Sinhvien values (@Masv,@Hoten,@Ngaysinh,@GioiTinh,@Sđt)
		end
end
go
drop proc usp_themsinhvien

--test
exec usp_themsinhvien 'Sv011',N'Nguyễn Kim Anh','2003-08-20',N'Nữ','0949822530'
select * from Sinhvien
exec usp_themsinhvien 'Sv02',N'Nguyễn Kim Anh','2003-08-20',N'Nữ','0949822530'

--Thêm phòng 
create proc usp_themphong 
		@Maphong char(10),
		@Tenphong nvarchar(50),
		@Succhua char(11)  ,
		@Tinhtrang nvarchar(10)
as
BEGIN
	if exists(select * from Phong where Maphong = @Maphong)
		begin
			print(N'Mã phòng đã tồn tại ')
		end
	else
		begin
			insert into Phong values (@Maphong,@Tenphong,@Succhua,@Tinhtrang)
			print(N'Thành công')
		end
    
END
GO
--test
exec usp_themphong 'MP11','TP11','8',N'Chưa thuê'
select * from Phong



--Thêm phiếu trả phòng 
create proc usp_themphieutraphong
		@Maphieutra char(10),
		@Mahdong char(10) ,
		@Ngaytra date
as
begin
   if exists(select * from PhieuTraPhong where Maphieutra = @Maphieutra)
		begin
			print(N'Mã phiếu trả phòng đã tồn tại ')
		end
	else
		begin
			insert into PhieuTraPhong values (@Maphieutra,@Mahdong,@Ngaytra)
			print(N'Thành công')
		end
END
GO
exec usp_themphieutraphong 'T12','MHD10' ,'2025-05-07'
select * from PhieuTraPhong


---Thêm hợp đồng thuê
create proc usp_themhopdongthue
		@Mahdong char(10) ,
		@Masv char(10),
		@Maphong char(10),
		@Ngaybatdau date,
		@Ngayketthuc date
as
begin
    insert into Hopdongthue values(@Mahdong,@Masv,@Maphong,@Ngaybatdau,@Ngayketthuc)
end
go
exec usp_themhopdongthue 'MHD11','Sv10','MP11','2023-04-02','2024-04-02'
select * from Hopdongthue

--Thêm hoá đơn 
create proc usp_themhoadon 
		@Mahdon char(10) ,
		@Maphong char(10) ,
		@Ngaylap date,
		@Ngaydaohan date,
		@Tongtien float,
		@Trangthai nvarchar(30)
AS
BEGIN
			insert into Hoadon values (@Mahdon,@Maphong,@Ngaylap,@Ngaydaohan,@Tongtien,@Trangthai)
END
GO
exec usp_themhoadon 'MHD011','MP09', '2023-06-10','2023-06-20','850000',N'Đã nộp'
select * from Hoadon

---2Thủ tục xoá
---Xoá sinh viên--
CREATE PROCEDURE sp_xoasv
	@Masv char(10)
AS 
BEGIN 
	IF EXISTS (SELECT * FROM Sinhvien WHERE Masv = @Masv)
	BEGIN 
		DELETE FROM Hopdongthue WHERE Masv = @Masv;
		DELETE FROM Sinhvien WHERE Masv = @Masv;
		PRINT N'Xoá sinh viên thành công!';
	END
	ELSE
	BEGIN
		PRINT N'Mã sinh viên không tồn tại trong bảng Sinhvien.';
	END
END
exec sp_xoasv 'Sv011'
select * from Sinhvien
--xoá thông tin phòng có mã bất kỳ 
CREATE PROCEDURE sp_xoaphong
	@Maphong char(10)
AS 
BEGIN 
	IF EXISTS (SELECT * FROM Phong WHERE Maphong = @Maphong)
	BEGIN 
		DELETE FROM Hoadon WHERE Maphong = @Maphong
		DELETE FROM Phong WHERE Maphong = @Maphong;
		PRINT N'Xoá Phòng thành công!';
	END
	ELSE
	BEGIN
		PRINT N'Mã phòng không tồn tại trong bảng Phong.';
	END
END
exec sp_xoaphong 'MP11'
select * from Phong


---3 Thủ tục sửa
---Sửa sinh viên--
create proc usp_suasinhvien 
				@Masv char(10),
				@Hoten nvarchar(50),
				@Ngaysinh date,
				@GioiTinh nvarchar(20),
				@Sđt char(11)
as 
BEGIN
    update Sinhvien set Hoten=@Hoten,Ngaysinh=@Ngaysinh,Gioitinh= @GioiTinh ,Sđt=@Sđt where Masv = @Masv
END
GO
exec usp_suasinhvien 'Sv08',N'Đỗ Hương Ly','2003-07-07',N'Nữ','0253330558'
select * from Sinhvien
--Sửa thông tin phòng
create proc usp_suaphong
				@Maphong char(10),
				@Tenphong nvarchar(50),
				@Succhua char(11)  ,
				@Tinhtrang nvarchar(10)
as 
BEGIN
    update Phong set Tenphong=@Tenphong,Succhua=@Succhua,Tinhtrang=@Tinhtrang where Maphong = @Maphong
END
GO
exec usp_suaphong 'MP09','TP09','10','Trống'
select * from Phong

----Thủ tục thực hiện chức năng tìm kiếm------------
CREATE PROCEDURE usp_timkiemsinhvien
    @tukhoa NVARCHAR(50)
AS
BEGIN
    SELECT * FROM Sinhvien WHERE Masv = @tukhoa OR Hoten = @tukhoa
END
GO
EXEC usp_timkiemsinhvien @tukhoa = N'Đỗ Hương Ly'



-- Thủ tục tim kiem phong
create proc usp_timkiemphong @tukhoa nvarchar(50) as
BEGIN
   select * from Phong where contains(Tenphong,@tukhoa)
END
go
exec usp_timkiemphong @tukhoa= N'TP01'

---HÀM FUNTIONS
--TIM Tên sinh viên
create function FUNC_TIMTENsinhvien
(@Masv char(10))
returns nvarchar(50)
as
begin 
    declare @Hoten NVARCHAR(50)
    SET @Hoten = (SELECT Hoten FROM Sinhvien WHERE Masv =@Masv)
    RETURN @Hoten
END
GO
SELECT dbo.FUNC_TIMTENsinhvien('Sv07')
GO

-- Đếm số lượng hợp đồng thuê
create function func_demsoluongHDT()
returns int
AS
BEGIN
    declare @tong int
    set @tong =(select count(Hopdongthue.Masv) from Sinhvien,Hopdongthue where Sinhvien.Masv = Hopdongthue.Masv and day(Hopdongthue.Ngaybatdau) = day(getdate()) and month(Hopdongthue.Ngaybatdau) = month(getdate()) and year(Hopdongthue.Ngaybatdau) = year(getdate()))
    return @tong
END
GO
SELECT dbo.func_demsoluongHDT() AS SoLuongHDT
---Hàm lấy thông tin sinh viên theo mã sinh viên--
CREATE FUNCTION dbo.ThongTinSinhVienTheoMaSV (@Masv char(10))
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM SinhVien WHERE Masv = @Masv
)
SELECT * FROM dbo.ThongTinSinhVienTheoMaSV('Sv09')

---Hàm lấy thông tin phòng theo mã phòng---
CREATE FUNCTION dbo.func_ThongTinPhongTheoMaPhong (@Maphong char(10))
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM Phong WHERE Maphong = @Maphong
)
SELECT * FROM dbo.func_ThongTinPhongTheoMaPhong('MP10')

--Hàm lấy thông tin hoá đơn theo mã hoá đơn
CREATE FUNCTION dbo.func_ThongTinKTXTheoMaKTX (@Mahdon char(10))
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM Hoadon WHERE Mahdon = @Mahdon
)
SELECT * FROM dbo.func_ThongTinKTXTheoMaKTX('MHD08')

---7 Viết được các trigger đảm bảo dữ liệu thỏa mãn thế giới thực ----
--TRIGGER FOR
--for insert
drop trigger check_nv_for_insert
create trigger check_nv_for_insert on Sinhvien
for insert as
BEGIN
    if exists(select inserted.Masv from Sinhvien,inserted where Sinhvien.Masv = inserted.Masv)
    BEGIN
    print N'mã sinh viên đã tồn tại'
    rollback tran
    END
END

--for update
drop trigger check_nv_for_update
GO
create trigger check_nv_for_update on Sinhvien
for update as 
BEGIN
    if not exists(select deleted.Masv from Sinhvien,deleted where Sinhvien.Masv = deleted.Masv)
    print N'Mã sinh viên không tồn tại'
END

--for delete
drop trigger check_nv_for_delete
go
create trigger check_nv_for_delete on Sinhvien
for update as 
BEGIN
    if not exists(select deleted.Masv from Sinhvien,deleted where Sinhvien.Masv = deleted.Masv)
    print N'Mã sinh viên không tồn tại'
END

--TRIGGER instead of
--instead of insert
drop trigger check_sv_insteadof_insert
go
create trigger check_sv_insteadof_insert on Sinhvien
instead of insert
as
BEGIN
    if exists(select inserted.Masv from Sinhvien,inserted where Sinhvien.Masv = inserted.Masv)
    BEGIN
    print N'mã sinh viên đã tồn tại'
    rollback tran
    END
END
--instead of update
DROP TRIGGER check_sv_insteadof_update 

CREATE TRIGGER check_sv_insteadof_update ON Sinhvien
INSTEAD OF UPDATE
AS 
BEGIN
    IF NOT EXISTS(SELECT Masv FROM Sinhvien WHERE Masv IN (SELECT Masv FROM deleted))
    BEGIN
        ROLLBACK TRANSACTION
        PRINT N'Mã sinh viên không tồn tại'
    END
END


--instead of delete
go
drop trigger check_nv_insteadof_delete
create trigger check_nv_insteadof_delete on Sinhvien
instead of update as 
BEGIN
    if not exists(select deleted.Masv from Sinhvien,deleted where Sinhvien.Masv = deleted.Masv)
	rollback tran
    print N'Mã sinh viên không tồn tại'
	
END
go
disable trigger check_nv_insteadof_insert on Sinhvien
go
disable trigger check_nv_insteadof_delete on Sinhvien
GO
DISABLE TRIGGER check_nv_insteadof_update ON Sinhvien;

go

----TRIGGER TU DONG CAP NHAT DU LIEU
drop TRIGGER tg_capnhatdulieusinhvien
CREATE TRIGGER tg_capnhatdulieusinhvien ON Sinhvien
INSTEAD OF INSERT 
AS
BEGIN
    UPDATE Sinhvien SET Sinhvien.Hoten = (Sinhvien.Hoten- inserted. Hoten) FROM INSERTED WHERE Sinhvien.Masv= INSERTED.Masv
END
GO

-- trigger xóa sinh viên
drop trigger xoa_Sinhvien
go
create trigger xoa_Sinhvien on Sinhvien
for delete AS
BEGIN
    delete Hopdongthue from Hopdongthue,deleted where Hopdongthue.Masv = deleted.Masv
	rollback tran
END
go
select * from Sinhvien
--trigger xóa hợp đồng thuê
create trigger xoa_Hopdongthue 
on Hopdongthue
for delete as
begin
    delete PhieuTraPhong from PhieuTraPhong,deleted where PhieuTraPhong.Mahdong = deleted.Mahdong
	rollback tran
END
go
-- trigger xóa hoá đơn
create trigger xoa_Hoadon on Hoadon
for delete as
begin
    delete Phong from Phong,deleted where Phong.Maphong = deleted.Maphong
	rollback tran
END
GO




