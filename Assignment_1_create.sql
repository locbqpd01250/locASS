-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-27 06:01:46.349


create database Locbqpd01250_ASS
use Locbqpd01250_ASS
-- tables
-- Table: Chi tiết Hóa Đơn
CREATE TABLE ChitietHóaĐơn (
    Masp char(5)  NOT NULL,
    MaHD char(5)  NOT NULL,
    soluongmua char(10)  NOT NULL,
    Donggiaban money  NOT NULL,
    SảnPhẩm_Masp char(5)  NOT NULL,
    Hoadon_MaHD char(5)  NOT NULL,
    CONSTRAINT ChitiếtHóaĐơn_pk PRIMARY KEY  (Masp,MaHD)
)
;





-- Table: Hoadon
CREATE TABLE Hoadon (
    MaHD char(5)  NOT NULL,
    MaKH char(5)  NOT NULL,
    NgayLap datetime  NOT NULL,
    Kháchhàng_MaKH char(5)  NOT NULL,
    CONSTRAINT Hoadon_pk PRIMARY KEY  (MaHD)
)
;





-- Table: Khách hàng
CREATE TABLE Kháchhàng (
    MaKH char(5)  NOT NULL,
    TênKH nvarchar(50)  NOT NULL,
    SốDT nvarchar(15)  NOT NULL,
    Điachi nvarchar(50)  NOT NULL,
    CONSTRAINT Kháchhàng_pk PRIMARY KEY (MaKH)
)
;
insert into Kháchhàng values ('001',N'Võ Hưng','01222434334',N'Đà Nẵng')
insert into Kháchhàng values ('002',N'Thành Trung','01222434335',N'Đà Nẵng')
insert into Kháchhàng values ('003',N'Kim Quyết','01222434336',N'Đà Nẵng')
insert into Kháchhàng values ('004',N'Hồng Thắm','01222434337',N'Đà Nẵng')
insert into Kháchhàng values ('005',N'Quang Lộc','01222434338',N'Đà Nẵng')




-- Table: Loai Sản Phẩm
CREATE TABLE LoaiSảnPhẩm (
    Maloaisp char(5)  NOT NULL,
    Tenloaisp nvarchar(30)  NOT NULL,
    CONSTRAINT LoaiSảnPhẩm_pk PRIMARY KEY  (Maloaisp)
)
;





-- Table: Sản Phẩm
CREATE TABLE SảnPhẩm (
    Masp char(5)  NOT NULL,
    Maloaisp char(5)  NOT NULL,
    Tensp nvarchar(30)  NOT NULL,
    Soluong char(10)  NOT NULL,
    Mota nvarchar(100)  NOT NULL,
    LoaiSảnPhẩm_Maloaisp char(5)  NOT NULL,
    CONSTRAINT SảnPhẩm_pk PRIMARY KEY  (Masp)
)
;









-- foreign keys
-- Reference:  Chi tiết Hóa Đơn_Hoadon (table: Chi tiết Hóa Đơn)

ALTER TABLE ChitiếtHóaĐơn ADD CONSTRAINT ChitiếtHóaĐơn_Hoadon 
    FOREIGN KEY (Hoadon_MaHD)
    REFERENCES Hoadon (MaHD)
;

-- Reference:  Chi tiết Hóa Đơn_Sản Phẩm (table: Chi tiết Hóa Đơn)

ALTER TABLE Chi tiết Hóa Đơn ADD CONSTRAINT Chi tiết Hóa Đơn_Sản Phẩm 
    FOREIGN KEY (Sản Phẩm_Masp)
 Sản Phẩm (Masp)
;

-- Reference:  Hoadon_Khách hàng (table: Hoadon)

ALTER TABLE Hoadon ADD CONSTRAINT Hoadon_Khách hàng 
    FOREIGN KEY (Khách hàng_MaKH)
    REFERENCES Khách hàng (MaKH)
;

-- Reference:  Sản Phẩm_Loai Sản Phẩm (table: Sản Phẩm)

ALTER TABLE Sản Phẩm ADD CONSTRAINT Sản Phẩm_Loai Sản Phẩm 
    FOREIGN KEY (Loai Sản Phẩm_Maloaisp)
    REFERENCES Loai Sản Phẩm (Maloaisp)
;





-- End of file.

