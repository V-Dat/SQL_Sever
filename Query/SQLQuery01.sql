CREATE DATABASE QL_SanPham
GO
USE QL_SanPham
GO
CREATE TABLE LoaiTaiKhoan(
	MaLoaiTaiKhoan	INT PRIMARY KEY NOT NULL,
	TenLoaiTaiKhoan	NVARCHAR(30) NOT NULL
);
GO
CREATE TABLE LoaiSanPham(
	MaLoaiSanPham	INT PRIMARY KEY NOT NULL,
	TenLoaiSanPham	NVARCHAR(64) NOT NULL,
	BiXoa			BIT NOT NULL
);
GO
CREATE TABLE HangSanXuat(
	MaHangSanXuat	INT PRIMARY KEY NOT NULL,
	TenHangSanXuat	NVARCHAR(64) NOT NULL,
	BiXoa			BIT NOT NULL
);
GO
CREATE TABLE TinhTrang(
	MaTinhTrang		INT PRIMARY KEY NOT NULL,
	TenTinhTrang	NVARCHAR(45) NOT NULL
);
GO
CREATE TABLE TaiKhoan(
	MaTaiKhoan		INT PRIMARY KEY NOT NULL,
	TenDangNhap		VARCHAR(30) NOT NULL, 
	MatKhau			VARCHAR(30) NOT NULL, 
	TenHienThi		NVARCHAR(64) NOT NULL, 
	DiaChi			NVARCHAR(256),
	SoDienThoai		VARCHAR(11) NOT NULL,
	Email			VARCHAR(64) NOT NULL, 
	BiXoa			BIT NOT NULL, 
	MaLoaiTaiKhoan	INT NOT NULL
);
GO
CREATE TABLE SanPham(
	MaSanPham		INT PRIMARY KEY NOT NULL,
	TenSanPham		NVARCHAR(256) NOT NULL, 
	HinhURL			VARCHAR(256) NOT NULL, 
	GiaSanPham		MONEY NOT NULL, 
	SoLuongTon		INT NOT NULL, 
	SoLuongBan		INT NOT NULL, 
	SoLuocXem		INT NOT NULL, 
	BiXoa			BIT NOT NULL, 
	MaLoaiSanPham	INT NOT NULL, 
	MaHangSanXuat	INT NOT NULL
);
GO
CREATE TABLE DonDatHang(
	MaDonDatHang	VARCHAR(9) PRIMARY KEY NOT NULL, 
	NgayLapPhieu	DATETIME NOT NULL, 
	TongThanhTien	INT NOT NULL, 
	MaTaiKhoan		INT NOT NULL, 
	MaTinhTrang		INT NOT NULL
);
GO
CREATE TABLE ChiTietDonDatHang(
	MaChiTietDonDatHang		VARCHAR(11) PRIMARY KEY NOT NULL, 
	SoLuong					INT NOT NULL, 
	GiaBan					INT NOT NULL, 
	MaDonDatHang			VARCHAR(9) NOT NULL, 
	MaSanPham				INT NOT NULL
);