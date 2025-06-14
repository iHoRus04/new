use master
go 
if exists (select name from sysdatabases where name='QuanLyDeAn_THI_QT')
	drop database [QuanLyDeAn_THI_QT]
go
create database [QuanLyDeAn_THI_QT]
go
USE [QuanLyDeAn_THI_QT]
GO
/****** Object:  Table [dbo].[DDIEMPHG]    Script Date: 5/21/2024 10:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDIEMPHG](
	[MAPHG] [int] NOT NULL,
	[DDIEM] [nchar](15) NOT NULL,
 CONSTRAINT [PK_DDPHG] PRIMARY KEY CLUSTERED 
(
	[MAPHG] ASC,
	[DDIEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEAN]    Script Date: 5/21/2024 10:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEAN](
	[TENDA] [nchar](15) NULL,
	[MADA] [int] NOT NULL,
	[DDIEM_DA] [nchar](15) NULL,
	[PHONG] [int] NULL,
 CONSTRAINT [PK_DeAn] PRIMARY KEY CLUSTERED 
(
	[MADA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/21/2024 10:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [char](9) NOT NULL,
	[HONV] [nchar](15) NOT NULL,
	[TENNV] [nchar](15) NOT NULL,
	[NGAYSINH] [datetime] NULL,
	[DCHI] [nchar](30) NULL,
	[PHAI] [nchar](3) NULL,
	[LUONG] [float] NULL,
	[MA_NQL] [char](9) NULL,
	[PHONG] [int] NULL,
	[phucapcv] [money] NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 5/21/2024 10:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[MA_NVIEN] [char](9) NOT NULL,
	[MADA] [int] NOT NULL,
	[TUAN] [int] NOT NULL,
	[THOIGIAN] [float] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MA_NVIEN] ASC,
	[MADA] ASC,
	[TUAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGBAN]    Script Date: 5/21/2024 10:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGBAN](
	[TENPHG] [nchar](15) NULL,
	[MAPHG] [int] NOT NULL,
	[TRUONGPHG] [char](9) NULL,
	[NG_NHANCHUC] [datetime] NULL,
	[TONGSONV] [int] NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MAPHG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANNHAN]    Script Date: 5/21/2024 10:36:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANNHAN](
	[MA_NVIEN] [char](9) NOT NULL,
	[TENTN] [nchar](15) NOT NULL,
	[PHAI] [nchar](3) NULL,
	[NGAYSINH] [datetime] NULL,
	[QUANHE] [nchar](15) NULL,
 CONSTRAINT [PK_ThanNhan] PRIMARY KEY CLUSTERED 
(
	[MA_NVIEN] ASC,
	[TENTN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DDIEMPHG] ([MAPHG], [DDIEM]) VALUES (1, N'TP HCM         ')
INSERT [dbo].[DDIEMPHG] ([MAPHG], [DDIEM]) VALUES (4, N'Hà Nội         ')
INSERT [dbo].[DDIEMPHG] ([MAPHG], [DDIEM]) VALUES (5, N'NHA TRANG      ')
GO
INSERT [dbo].[DEAN] ([TENDA], [MADA], [DDIEM_DA], [PHONG]) VALUES (N'Sản Phẩm X     ', 1, N'Vũng Tàu       ', 5)
INSERT [dbo].[DEAN] ([TENDA], [MADA], [DDIEM_DA], [PHONG]) VALUES (N'Sản Phẩm Y     ', 2, N'Nha Trang      ', 5)
INSERT [dbo].[DEAN] ([TENDA], [MADA], [DDIEM_DA], [PHONG]) VALUES (N'Sản Phẩm Z     ', 3, N'Nha Trang      ', 5)
INSERT [dbo].[DEAN] ([TENDA], [MADA], [DDIEM_DA], [PHONG]) VALUES (N'Tin Học Hóa    ', 10, N'Hà Nội         ', 4)
INSERT [dbo].[DEAN] ([TENDA], [MADA], [DDIEM_DA], [PHONG]) VALUES (N'Cáp Quang      ', 20, N'TP HCM         ', 1)
INSERT [dbo].[DEAN] ([TENDA], [MADA], [DDIEM_DA], [PHONG]) VALUES (N'Ðào Tạo        ', 30, N'TP HCM         ', 4)
GO
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'001      ', N'Lê Quỳnh       ', N'Như            ', CAST(N'1967-02-01T00:00:00.000' AS DateTime), N'291 Hồ Văn Huê, TP HCM        ', N'Nữ ', 5000000, N'006      ', 4, 2500000.0000, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'003      ', N'Trần Minh      ', N'Tâm            ', CAST(N'1957-05-04T00:00:00.000' AS DateTime), N'34 Mai Thị Lự, TP HCM         ', N'Nam', 2500000, N'005      ', 5, NULL, N'đã nghĩ hưu')
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'004      ', N'Nguyễn Thanh   ', N'Hùng           ', CAST(N'1967-03-04T00:00:00.000' AS DateTime), N'95 Bà Rịa, Vũng Tàu           ', N'Nam', 4500000, N'005      ', 5, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'005      ', N'Nguyễn Danh    ', N'Tùng           ', CAST(N'1962-08-20T00:00:00.000' AS DateTime), N'222 Nguyễn Văn Cừ, TP HCM     ', N'Nam', 6000000, N'006      ', 5, 3000000.0000, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'006      ', N'Phạm Quang     ', N'Vinh           ', CAST(N'1965-01-01T00:00:00.000' AS DateTime), N'45 Trưng Vương,Hà Nội         ', N'Nam', 9000000, NULL, 1, 4500000.0000, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'007      ', N'Bùi Lệ         ', N'Hằng           ', CAST(N'1954-03-11T00:00:00.000' AS DateTime), N'332 Nguyễn Thái Học, TP HCM   ', N'Nữ ', 2500000, N'001      ', 4, NULL, N'đã nghĩ hưu')
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'008      ', N'Trần           ', N'Quang          ', CAST(N'1967-09-01T00:00:00.000' AS DateTime), N'80 Lê Hồng Phong, TP HCM      ', N'Nam', 2500000, N'001      ', 4, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'009      ', N'Đinh Bá        ', N'Tiến           ', CAST(N'1960-02-11T00:00:00.000' AS DateTime), N'119 Cống Quỳnh, TP HCM        ', N'Nam', 3000000, N'005      ', 5, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'010      ', N'Lê Như         ', N'Anh            ', CAST(N'1960-09-09T00:00:00.000' AS DateTime), N'180 Cao lỗ                    ', N'Nam', 3000000, NULL, 2, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HONV], [TENNV], [NGAYSINH], [DCHI], [PHAI], [LUONG], [MA_NQL], [PHONG], [phucapcv], [ghichu]) VALUES (N'011      ', N'Trần           ', N'Tiến           ', CAST(N'1978-10-12T00:00:00.000' AS DateTime), N'20 Trần Phú                   ', N'Nam', 3000000, NULL, 2, NULL, NULL)
GO
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'001      ', 20, 1, 25)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'001      ', 30, 1, 25)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'003      ', 1, 2, 20)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'003      ', 2, 1, 20)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'004      ', 3, 1, 40)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'005      ', 3, 1, 10)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'005      ', 10, 2, 30)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'006      ', 20, 1, 30)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'007      ', 10, 2, 10)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'007      ', 30, 2, 30)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'008      ', 10, 1, 35)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'008      ', 30, 2, 5)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'009      ', 1, 1, 32)
INSERT [dbo].[PHANCONG] ([MA_NVIEN], [MADA], [TUAN], [THOIGIAN]) VALUES (N'009      ', 2, 2, 8)
GO
INSERT [dbo].[PHONGBAN] ([TENPHG], [MAPHG], [TRUONGPHG], [NG_NHANCHUC], [TONGSONV]) VALUES (N'Quản Lý        ', 1, N'006      ', CAST(N'1971-12-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PHONGBAN] ([TENPHG], [MAPHG], [TRUONGPHG], [NG_NHANCHUC], [TONGSONV]) VALUES (N'Kinh Doanh     ', 2, NULL, NULL, NULL)
INSERT [dbo].[PHONGBAN] ([TENPHG], [MAPHG], [TRUONGPHG], [NG_NHANCHUC], [TONGSONV]) VALUES (N'Tài Vụ         ', 3, NULL, NULL, NULL)
INSERT [dbo].[PHONGBAN] ([TENPHG], [MAPHG], [TRUONGPHG], [NG_NHANCHUC], [TONGSONV]) VALUES (N'Ðiều Hành      ', 4, N'001      ', CAST(N'1985-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PHONGBAN] ([TENPHG], [MAPHG], [TRUONGPHG], [NG_NHANCHUC], [TONGSONV]) VALUES (N'Nghiên Cứu     ', 5, N'005      ', CAST(N'1978-12-10T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'001      ', N'Be 4           ', N'Nam', CAST(N'1905-06-08T00:00:00.000' AS DateTime), N'Con gai        ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'001      ', N'Minh           ', N'Nam', CAST(N'1967-02-27T00:00:00.000' AS DateTime), N'Vợ Chồng       ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'001      ', N'Toan           ', N'Nam', CAST(N'1999-05-05T00:00:00.000' AS DateTime), N'Chong          ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'005      ', N'Khang          ', N'Nam', CAST(N'2010-10-25T00:00:00.000' AS DateTime), N'Con Trai       ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'005      ', N'Phương         ', N'Nữ ', CAST(N'1968-05-03T00:00:00.000' AS DateTime), N'Vợ Chồng       ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'005      ', N'Trinh          ', N'Nữ ', CAST(N'2015-04-05T00:00:00.000' AS DateTime), N'Con Gái        ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'009      ', N'Châu           ', N'Nữ ', CAST(N'2016-12-30T00:00:00.000' AS DateTime), N'Con Gái        ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'009      ', N'Phương         ', N'Nữ ', CAST(N'1965-05-05T00:00:00.000' AS DateTime), N'Vợ Chồng       ')
INSERT [dbo].[THANNHAN] ([MA_NVIEN], [TENTN], [PHAI], [NGAYSINH], [QUANHE]) VALUES (N'009      ', N'Tiến           ', N'Nam', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'Con Trai       ')
GO
ALTER TABLE [dbo].[DDIEMPHG]  WITH CHECK ADD  CONSTRAINT [FK_DDPHG] FOREIGN KEY([MAPHG])
REFERENCES [dbo].[PHONGBAN] ([MAPHG])
GO
ALTER TABLE [dbo].[DDIEMPHG] CHECK CONSTRAINT [FK_DDPHG]
GO
ALTER TABLE [dbo].[DEAN]  WITH CHECK ADD  CONSTRAINT [FK_DeAn] FOREIGN KEY([PHONG])
REFERENCES [dbo].[PHONGBAN] ([MAPHG])
GO
ALTER TABLE [dbo].[DEAN] CHECK CONSTRAINT [FK_DeAn]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK1_NhanVien] FOREIGN KEY([MA_NQL])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK1_NhanVien]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK2_NhanVien] FOREIGN KEY([PHONG])
REFERENCES [dbo].[PHONGBAN] ([MAPHG])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK2_NhanVien]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_DEAN] FOREIGN KEY([MADA])
REFERENCES [dbo].[DEAN] ([MADA])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_DEAN]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK1_PhanCong] FOREIGN KEY([MA_NVIEN])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK1_PhanCong]
GO
ALTER TABLE [dbo].[PHONGBAN]  WITH CHECK ADD  CONSTRAINT [FK_PhongBan] FOREIGN KEY([TRUONGPHG])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHONGBAN] CHECK CONSTRAINT [FK_PhongBan]
GO
ALTER TABLE [dbo].[THANNHAN]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan] FOREIGN KEY([MA_NVIEN])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[THANNHAN] CHECK CONSTRAINT [FK_ThanNhan]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [C_PHAI_NHANVIEN] CHECK  (([PHAI]=N'Nữ' OR [PHAI]=N'Nam'))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [C_PHAI_NHANVIEN]
GO
ALTER TABLE [dbo].[THANNHAN]  WITH CHECK ADD  CONSTRAINT [C_PHAI_THANNHAN] CHECK  (([PHAI]=N'Nữ' OR [PHAI]=N'Nam'))
GO
ALTER TABLE [dbo].[THANNHAN] CHECK CONSTRAINT [C_PHAI_THANNHAN]
GO
