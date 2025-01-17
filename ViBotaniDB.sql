USE [master]
GO
/****** Object:  Database [VibotaniDB]    Script Date: 8/2/2019 3:05:35 PM ******/
CREATE DATABASE [VibotaniDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VibotaniDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VibotaniDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VibotaniDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VibotaniDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VibotaniDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VibotaniDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VibotaniDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VibotaniDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VibotaniDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VibotaniDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VibotaniDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VibotaniDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VibotaniDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VibotaniDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VibotaniDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VibotaniDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VibotaniDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VibotaniDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VibotaniDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VibotaniDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VibotaniDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VibotaniDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VibotaniDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VibotaniDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VibotaniDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VibotaniDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VibotaniDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VibotaniDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VibotaniDB] SET  MULTI_USER 
GO
ALTER DATABASE [VibotaniDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VibotaniDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VibotaniDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VibotaniDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [VibotaniDB]
GO
/****** Object:  Table [dbo].[News]    Script Date: 8/2/2019 3:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Category] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nchar](250) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/2/2019 3:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Product_Line] [nvarchar](250) NULL,
	[Image_Main] [nvarchar](250) NULL,
	[Detail] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[List_Image] [nvarchar](max) NULL,
	[Heading] [nvarchar](500) NULL,
	[Kindof_Product] [nvarchar](250) NULL,
	[Meta_ProductLine] [varchar](250) NULL,
	[Meta_Kindof] [varchar](250) NULL,
	[Image_Outside] [nvarchar](250) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (15, N'Thực hư chuyện làm đẹp từ đông trùng hạ thảo', N'thuc-hu-chuyen-lam-dep-tu-dong-trung-ha-thao', N'Đông Trùng Hạ Thảo vốn nổi tiếng là một loại biệt dược quý hiếm trong Đông y. Ngoài khả năng...', N'Nghiên cứu sản phẩm', N'/Uploads/images/tin-tuc/front/max/dong-trung-ha-thao-3.jpg', N'<p><strong><span style="font-size:14px">Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo vốn nổi tiếng l&agrave; một loại biệt dược qu&yacute; hiếm trong Đ&ocirc;ng y. Ngo&agrave;i khả năng chữa bệnh v&agrave; chứa h&agrave;ng trăm dưỡng chất cần thiết cho sức khoẻ, liệu lo&agrave;i đ&ocirc;ng dược qu&yacute; n&agrave;y c&oacute; thể gi&uacute;p cải thiện v&agrave; mang lại l&agrave;n da trắng khoẻ, mịn m&agrave;ng?</span></strong></p>

<p><strong><span style="font-size:14px">Sự kết tinh kỳ diệu giữa động vật v&agrave; thực vật</span></strong></p>

<p><span style="font-size:14px">Xưa nay Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo kh&ocirc;ng chỉ được biết đến như một vị thuốc đặc biệt qu&yacute; hiếm, m&agrave; c&ograve;n bởi c&aacute;i t&ecirc;n đầy b&iacute; ẩn của m&igrave;nh. Đ&oacute; l&agrave; sự kết hợp th&uacute; vị của c&ocirc;n tr&ugrave;ng v&agrave; lo&agrave;i nấm Cordyceps Sinensis. Khi m&ugrave;a đ&ocirc;ng đến, lo&agrave;i s&acirc;u non n&agrave;y ngủ trong đất bị nấm k&yacute; sinh, h&uacute;t chất dinh dưỡng từ s&acirc;u. Đến m&ugrave;a h&egrave;, s&acirc;u non chết đi v&igrave; bị h&uacute;t hết c&aacute;c chất dinh dưỡng th&igrave; c&acirc;y nấm đ&atilde; khoẻ mạnh, mọc ra khỏi th&acirc;n s&acirc;u, trở th&agrave;nh một loại thực vật qu&yacute; với nhiều dưỡng chất.</span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="" src="/Uploads/images/tin-tuc/inside/max/Anh-dong-trung-ha-thao-1.jpg" style="width:100%" /></span><span style="color:#2ecc71"><span style="font-family:Courier New,Courier,monospace"><span style="font-size:12px"><u>&nbsp;Đ&ocirc;ng tr&ugrave;ng hạ thảo được xem như &ldquo;v&agrave;ng mềm&rdquo; bởi sự qu&yacute; hiếm v&agrave; độc đ&aacute;o</u></span></span></span></p>

<p><span style="font-size:14px">Ch&iacute;nh sự kết tinh kỳ diệu giữa động vật v&agrave; thực vật, cũng như sự t&ocirc;i luyện, trải qua thời tiết khắc nghiệt đ&atilde; khiến Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo trở th&agrave;nh một loại dược liệu qu&yacute; hiếm đến như vậy. Trong tự nhi&ecirc;n, Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo được t&igrave;m thấy nhiều ở c&aacute;c v&ugrave;ng n&uacute;i, cao nguy&ecirc;n với độ cao từ 4.000 - 6.500m so với mặt nước biển v&agrave; hầu hết l&agrave; ở c&aacute;c d&atilde;y n&uacute;i ở Bhutan, Nepal, v&ugrave;ng T&acirc;y Tạng,&hellip; Đ&acirc;y l&agrave; c&aacute;c cao nguy&ecirc;n c&oacute; kh&iacute; hậu đặc th&ugrave;, khắc nghiệt nhưng lại l&agrave; m&ocirc;i trường l&yacute; tưởng để Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo sinh trưởng v&agrave; ph&aacute;t triển.&nbsp;<a href="https://www.academia.edu/20332538/Healing_Mushrooms_by_Georges_Halpern">(Halpern, 2007))</a></span></p>

<p><span style="font-size:16px"><strong>Biệt dược trong trẻ h&oacute;a l&agrave;n da</strong></span></p>

<p><span style="font-size:14px">Tốt cho sức khoẻ l&agrave; thế, nhưng Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo c&ograve;n g&acirc;y ngạc nhi&ecirc;n hơn khi &ldquo;lấn s&acirc;n&rdquo; sang l&atilde;nh địa của thế giới mỹ phẩm, với nhiều c&ocirc;ng dụng bất ngờ, đặc biệt l&agrave; dưỡng da v&agrave; gi&uacute;p da trắng s&aacute;ng. B&iacute; quyết đ&oacute; nằm ở th&agrave;nh phần Adenosine c&oacute; trong lo&agrave;i &ldquo;biệt dược&rdquo; n&agrave;y.</span></p>

<p><span style="font-size:14px"><img alt="" src="/Uploads/images/tin-tuc/inside/max/dong-trung-ha-thao-3.jpg" style="width:100%" /></span></p>

<p style="text-align:center"><span style="font-family:Courier New,Courier,monospace"><span style="font-size:14px"><u><span style="color:#2ecc71">Nhiều nghi&ecirc;n cứu chỉ ra được lợi &iacute;ch của Adenosine, một loại dưỡng chất cũng c&oacute; trong đ&ocirc;ng tr&ugrave;ng hạ thảo</span></u></span></span></p>

<p><span style="font-size:14px">C&oacute; nhiều nhận định v&agrave; nghi&ecirc;n cứu đ&atilde; n&ecirc;u ra rằng, Adenosine c&oacute; những th&agrave;nh phần th&acirc;n thiện, mang lại nhiều lợi &iacute;ch cho da, nhất l&agrave; c&ocirc;ng dụng kh&aacute;ng vi&ecirc;m, kh&aacute;ng lại k&iacute;ch ứng, chống l&atilde;o ho&aacute; v&agrave; gi&uacute;p da trắng s&aacute;ng hơn. Nhờ c&oacute; Adenosine, c&aacute;c tế b&agrave;o của da sẽ khoẻ mạnh v&agrave; t&aacute;i tạo tế b&agrave;o da nhanh hơn, da cũng sẽ trắng s&aacute;ng, mịn m&agrave;ng hơn tr&ocirc;ng thấy bằng c&aacute;ch đ&agrave;o thải c&aacute;c tế b&agrave;o chứa melanin &ndash; thủ phạm g&acirc;y n&ecirc;n hiện tượng đen da, n&aacute;m, t&agrave;n nhang,&hellip; dưới t&aacute;c hại của m&ocirc;i trường xung quanh.</span></p>

<p><span style="font-size:14px">Theo một nghi&ecirc;n cứu đ&aacute;nh gi&aacute; hiệu quả chống lại nếp nhăn của Adenosine bằng kỹ thuật FOITS đăng tr&ecirc;n Tạp ch&iacute; Khoa học Mỹ phẩm Quốc tế, Adenosine được chứng minh c&oacute; khả năng l&agrave;m giảm c&aacute;c nếp nhăn xuất hiện xung quanh mắt v&agrave; c&aacute;c nếp nhăn ở giữa ấn đường. Đ&atilde; c&oacute; 126 nữ t&igrave;nh nguyện từ 45 đến 65 tuổi đ&atilde; tham gia thử nghiệm, mỗi người được gửi hai trong ba sản phẩm bao gồm: kem chứa Adenosine, m&agrave;ng ho&agrave; tan chứa Adenosine v&agrave; một loại giả dược, để được sử dụng cho c&aacute;c v&ugrave;ng c&oacute; vết nhăn ở mỗi b&ecirc;n mặt. C&aacute;c sản phẩm n&agrave;y đ&atilde; được sử dụng đều đặn 2 lần/ ng&agrave;y trong suốt 2 th&aacute;ng, kết quả cho thấy hai sản phẩm c&oacute; chứa Adenosine đều mang lại kết quả tốt gi&uacute;p c&aacute;c v&ugrave;ng da quanh mắt trở n&ecirc;n mịn m&agrave;ng hơn. Kem c&oacute; chứa Adonesine cũng cải thiện đ&aacute;ng kể c&aacute;c vết nhăn giữa ấn đường, đồng thời nghi&ecirc;n cứu c&ograve;n cho thấy t&aacute;c dụng tiềm năng của Adenosine đối với dấu ch&acirc;n chim v&agrave; những nếp nhăn kh&aacute;c tr&ecirc;n mặt.&nbsp;<a href="https://sci-hub.tw/10.1111/j.1467-2494.2006.00349.x?fbclid=IwAR3awJMt0yJmE88RzWyA8nGz0r9VxTUaFdhNu1bFStT3Imsg1tLT01bHZ5k">(Abella, 2006)</a></span></p>

<p><span style="font-size:14px">Tuy nhi&ecirc;n, Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo vốn được xem l&agrave; loại &ldquo;v&agrave;ng mềm&rdquo; với gi&aacute; cả đắt đỏ, kh&ocirc;ng phải l&agrave; nguy&ecirc;n liệu phổ th&ocirc;ng c&oacute; thể được sử dụng đại tr&agrave;. V&igrave; thế, để c&oacute; thể ứng dụng v&agrave; đưa h&agrave;m lượng dưỡng chất Adenosine c&oacute; trong Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo, nhiều thương hiệu mỹ phẩm quốc tế đ&atilde; phải sử dụng c&ocirc;ng nghệ cao để chiết xuất Adenosine v&agrave; sản xuất ra c&aacute;c d&ograve;ng mỹ phẩm c&oacute; c&ocirc;ng dụng vượt bậc. Nhiều thương hiệu nổi tiếng h&agrave;ng đầu đ&atilde; từng đưa Adenosine v&agrave;o c&aacute;c d&ograve;ng sản phẩm của m&igrave;nh v&agrave; rất th&agrave;nh c&ocirc;ng.</span></p>

<p>&nbsp;</p>

<div class="clearfix p-2" style="background:#d9e6f0">
<p>Tại thị trường Việt Nam, kh&ocirc;ng nhiều mỹ phẩm sử dụng nguy&ecirc;n liệu từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo bởi t&iacute;nh phức tạp, đ&ograve;i hỏi c&ocirc;ng nghệ cao của n&oacute;. Kh&ocirc;ng phải l&agrave; thương hiệu ti&ecirc;n phong trong việc đưa hoạt chất Adenosine v&agrave;o mỹ phẩm, nhưng Mỹ phẩm Trắng da BiOshi đang l&agrave; c&aacute;i t&ecirc;n g&acirc;y ch&uacute; &yacute; khi ra mắt d&ograve;ng sản phẩm l&agrave;m trắng da c&oacute; sử dụng Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo. Sử dụng b&iacute; quyết l&agrave;m đẹp từ c&aacute;c quốc gia Nhật, H&agrave;n, Ph&aacute;p, &Uacute;c,&hellip; với to&agrave;n bộ nguy&ecirc;n liệu đều l&agrave; nhập ngoại, BiOshi đang từng bước khẳng định vị tr&iacute; &ldquo;ng&ocirc;i sao mới&rdquo; trong lĩnh vực l&agrave;m đẹp.</p>

<div class="card col-md-4 float-left image__container mb-3 mr-2 px-0"><img alt="..." class="w-100" src="/Uploads/images/tin-tuc/inside/max/8U9A9664 logo.jpg" />
<div class="card-body">
<p><small>Nhiều thương hiệu sử dụng Adenosine l&agrave;m nguy&ecirc;n liệu, trong đ&oacute; c&oacute; Mỹ phẩm Trắng da BiOshi</small></p>
</div>
</div>

<p>Hơn thế nữa, c&aacute;c sản phẩm của BiOshi đều được sản xuất theo c&ocirc;ng thức đặc biệt, gi&uacute;p dưỡng chất Adenosine c&oacute; trong Đ&ocirc;ng Tr&ugrave;ng Hạ Thảohoạt động một c&aacute;ch tốt nhất, từ đ&oacute; k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen gi&uacute;p cải thiện da, chống l&atilde;o ho&aacute;, mang lại l&agrave;n da trắng hồng, mịn m&agrave;ng cho phụ nữ Việt.</p>

<p>BiOshi đ&atilde; v&agrave; đang ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm ch&iacute;nh từ trắng da mặt, trắng da to&agrave;n th&acirc;n v&agrave; trắng cấp tốc th&ocirc;ng qua hệ thống sản phẩm đa dạng từ sữa rửa mặt, serum, đến sữa tắm, kem dưỡng trắng da,&hellip;. Bạn c&oacute; muốn một lần đ&iacute;ch th&acirc;n trải nghiệm ?</p>
</div>
', CAST(N'2019-07-30T00:01:43.000' AS DateTime), N'Sao Băng (kinhtevn.com.vn)                                                                                                                                                                                                                                ')
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (16, N'Khám phá quyền năng làm trắng da từ trà xanh', N'kham-pha-quyen-nang-lam-trang-da-tu-tra-xanh', N'Các nhà khoa học đã chứng minh EGCG, Polyphenol, Tocopherols, Carotenoid, vitamin E...', N'Nghiên cứu sản phẩm', N'/Uploads/images/tin-tuc/front/max/0628_Hinh_2.jpg', N'<p class="description">Các nhà khoa học đã chứng minh EGCG, Polyphenol, Tocopherols, Carotenoid, vitamin E... trong trà xanh chứa nhiều chất chống oxy hóa có lợi, giúp da tăng độ đàn hồi, tươi trẻ, trắng mịn hơn. </p>

        <p class="normal">Những năm gần đây, xu hướng làm đẹp và chăm sóc da với các sản phẩm chiết xuất từ thiên nhiên ngày càng được phái đẹp săn đón. Nhiều chị em tận dụng các nguyên liệu làm đẹp từ thiên nhiên, lành tính để hạn chế làm tổn thương da, trong đó, nổi bật là trà xanh.</p>

        <p class="normal">
            Có rất nhiều nghiên cứu khoa học cho thấy trà xanh chứa EGCG - Epigallocatechin Gallate chống ôxy hóa cùng một số chất khác góp phần giảm cholesterol, chống ung thư, bệnh tim, tiểu đường, bệnh nướu răng và nhiễm trùng. Một nghiên cứu kéo dài 11 năm trên 40.000 người ở Nhật đã công bố trên Tạp chí khoa học của Hiệp hội Y khoa Mỹ cho thấy sự khác biệt đáng kể về sức khỏe và tuổi thọ của những người uống ít hơn một tách trà xanh so với uống nhiều hơn 5 cốc mỗi ngày. Cụ thể, những người uống trà xanh nhiều hơn thì khả năng tử vong vì bệnh tim thấp hay đột quỵ thấp hơn.
        </p>
        <p class="normal">
            Theo một báo cáo được công bố trên báo chí của JBC (Journal of Biological Chemistry), một nhóm các chuyên gia nghiên cứu đến từ Đại học Lancasters, Đại học Leeds, Trung tâm Sinh học Phân tử Cấu trúc và Trường Sinh học Phân tử &amp; Tế bào tại vương quốc Anh, cũng cho biết, những đặc tính của EGCG mang lại rất nhiều lợi ích trị liệu tiềm năng, thậm chí các thử nghiệm lâm sàng về EGCG trong việc điều trị bệnh Alzheimer cũng đã được hoàn thành và đưa vào hoạt động.
        </p>
        <div class="card w-100 my-3 image__container">
            <img src="/Content/Image/tin-tuc/inside/max/0628_hinh_1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <p class="card-text text-center"><small class="text-muted">Trà xanh vừa tốt cho sức khỏe, vừa là giải pháp làm trắng da lành tính, được trồng và sử dụng nhiều ở Nhật Bản</small></p>
            </div>
        </div>

        <p class="normal">Trà xanh cũng nổi tiếng tại nhiều quốc gia, trong đó có Nhật Bản. Người dân ở đây vừa sử dụng trà xanh làm thực phẩm, vừa kết hợp chúng như một phương thức làm đẹp trong chu trình chăm sóc da hàng ngày. Đó cũng là một trong những lý do khiến phụ nữ Nhật Bản sở hữu làn da không tuổi, trắng mịn, trẻ trung.</p>
        <p class="normal">
            Ngoài EGCG, trong trà xanh còn chứa nhiều chất chống ôxy hóa mạnh như Polyphenol, Tocopherols, Carotenoid có lợi, giúp da tươi trẻ, trắng sáng mịn màng. Các chuyên gia còn cho biết, trà xanh bổ sung lượng vitamin C và vitamin E tốt cho việc nuôi dưỡng da trắng sáng, tăng cường độ đàn hồi và tươi trẻ. Hơn nữa, dưỡng chất Catechins có trong trà xanh còn có khả năng chống lại tác động xấu của tia UV, triệt tiêu các yếu tố gây độc hại cho da.
        </p>

        <div class="card w-100 my-3 image__container">
            <img src="/Content/Image/tin-tuc/inside/max/0628_Hinh_2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <p class="card-text text-center"><small class="text-muted">Phụ nữ Việt sử dụng trà xanh như một phương pháp làm đẹp thủ công đơn giản và tiết kiệm</small></p>
            </div>
        </div>

        <p class="normal">Tại Việt Nam, trà xanh được nhiều chị em dùng để làm đẹp với các phương pháp thủ công như đun nước trà để rửa mặt, mát-xa mỗi ngày hoặc lấy bột trà xanh đắp mặt. Tuy nhiên, những cách làm này lại không tận dụng được hết các dưỡng chất có trong lá trà.</p>
        <p class="normal">Điều này tạo điều kiện để nhiều hãng mỹ phẩm tung ra sản phẩm làm đẹp từ trà xanh với những công thức và công nghệ hiện đại nhằm chuyển hoá tốt các dưỡng chất từ lá trà.</p>
        <div class="card w-100 my-3 image__container">
            <img src="/Content/Image/tin-tuc/inside/max/8U9A9542.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <p class="card-text text-center"><small class="text-muted">Mỹ phẩm trắng da BiOshi với Bí quyết từ Nhật Bản chứa nguyên liệu trà xanh ngoại nhập</small></p>
            </div>
        </div>
        <p class="normal">Được biết, mỹ phẩm trắng da BiOshi là thương hiệu cao cấp được điều chế theo bí quyết của Nhật Bản với 100% nguyên liệu ngoại nhập. Tất cả các dòng sản phẩm của BiOshi từ kem trắng da, serum trắng da, sữa rửa mặt, sữa tắm và các dòng chuyên biệt khác đều được bổ sung các dưỡng chất thiết yếu từ thiên nhiên, trong đó có tinh chất Trà xanh. Không chỉ thế, BiOshi còn khẳng định chất lượng thông qua tiêu chuẩn quốc tế ISO 9001 với thông điệp mang lại vẻ đẹp tự nhiên, góp phần làm rạng rỡ vẻ đẹp Việt.</p>
        <p class="normal">Có thể thấy, trong dòng chảy của những thương hiệu trắng da từ khắp mọi nơi đổ về, sẽ rất khó cho người tiêu dùng có thể chọn ra cho mình một sản phẩm tốt, phù hợp nhất với làn da và nhu cầu làm đẹp của bản thân. Nhưng với những ưu điểm của mình, biết đâu trong danh sách những sản phẩm làm đẹp da của bạn trong tương lai sẽ có cái tên BiOshi, một thương hiệu mỹ phẩm thiên nhiên với chất lượng Nhật Bản.</p>', CAST(N'2019-07-30T00:30:46.000' AS DateTime), N'Sao Băng (congthuong.vn)                                                                                                                                                                                                                                  ')
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (17, N'Công thức dưỡng trắng da với thành phần từ đông trùng hạ thảo', N'cong-thuc-duong-trang-da-voi-thanh-phan-tu-dong-trung-ha-thao', N'Thành phần Adenosine trong đông trùng hạ thảo có tác dụng nuôi dưỡng và giúp làn da thêm trắng...', N'Nghiên cứu sản phẩm', N'/Uploads/images/tin-tuc/front/max/Anh-dong-trung-ha-thao-1.jpg', N'<p><strong><span style="font-size:14px">Th&agrave;nh phần Adenosine trong đ&ocirc;ng tr&ugrave;ng hạ thảo c&oacute; t&aacute;c dụng nu&ocirc;i dưỡng v&agrave; gi&uacute;p l&agrave;n da th&ecirc;m trắng mịn.</span></strong></p>

<p><span style="font-size:14px">L&agrave; một loại biệt dược qu&yacute; hiếm trong Đ&ocirc;ng y, ngo&agrave;i khả năng chữa bệnh v&agrave; chứa h&agrave;ng trăm dưỡng chất cần thiết cho sức khoẻ, đ&ocirc;ng tr&ugrave;ng hạ thảo c&oacute; thể cải thiện l&agrave;n da cho người d&ugrave;ng.</span></p>

<p><strong><span style="font-size:14px">M&oacute;n qu&agrave; tinh t&uacute;y từ thi&ecirc;n nhi&ecirc;n</span></strong></p>

<p><span style="font-size:14px">Đ&ocirc;ng tr&ugrave;ng hạ thảo l&agrave; sự kết hợp th&uacute; vị của c&ocirc;n tr&ugrave;ng v&agrave; lo&agrave;i nấm Cordyceps Sinensis. Khi m&ugrave;a đ&ocirc;ng đến, lo&agrave;i s&acirc;u non n&agrave;y ngủ trong đất bị nấm k&yacute; sinh, h&uacute;t chất dinh dưỡng từ s&acirc;u. Đến m&ugrave;a h&egrave;, s&acirc;u non chết đi v&igrave; bị h&uacute;t hết c&aacute;c chất dinh dưỡng th&igrave; c&acirc;y nấm đ&atilde; khoẻ mạnh, mọc ra khỏi th&acirc;n s&acirc;u, trở th&agrave;nh một loại thực vật qu&yacute; với nhiều dưỡng chất.</span></p>

<p><span style="font-size:14px">Sự kết tinh giữa động vật v&agrave; thực vật, cũng như sự t&ocirc;i luyện, trải qua thời tiết khắc nghiệt khiến đ&ocirc;ng tr&ugrave;ng hạ thảo trở th&agrave;nh loại dược liệu qu&yacute; hiếm. Trong tự nhi&ecirc;n, đ&ocirc;ng tr&ugrave;ng hạ thảo được t&igrave;m thấy nhiều ở c&aacute;c v&ugrave;ng n&uacute;i, cao nguy&ecirc;n với độ cao từ 4.000 - 6.500m so với mặt nước biển v&agrave; hầu hết l&agrave; ở c&aacute;c d&atilde;y n&uacute;i ở Bhutan, Nepal, v&ugrave;ng T&acirc;y Tạng... Đ&acirc;y l&agrave; c&aacute;c cao nguy&ecirc;n c&oacute; kh&iacute; hậu đặc th&ugrave;, khắc nghiệt nhưng lại l&agrave; m&ocirc;i trường l&yacute; tưởng để đ&ocirc;ng tr&ugrave;ng hạ thảo sinh trưởng v&agrave; ph&aacute;t triển.</span></p>

<div class="card image__container my-3 w-100"><img alt="..." class="card-img-top" src="/Content/Image/tin-tuc/inside/max/Anh-dong-trung-ha-thao-1.jpg" />
<div class="card-body">
<p style="text-align:center"><small>Đ&ocirc;ng tr&ugrave;ng hạ thảo l&agrave; một loại biệt dược qu&yacute; hiếm trong Đ&ocirc;ng y.</small></p>
</div>
</div>

<p><span style="font-size:14px">Kh&ocirc;ng chỉ tốt cho sức khỏe, đ&ocirc;ng tr&ugrave;ng hạ thảo c&ograve;n c&oacute; nhiều c&ocirc;ng dụng về dưỡng da v&agrave; gi&uacute;p da trắng s&aacute;ng nhờ th&agrave;nh phần Adenosine. Một số nghi&ecirc;n cứu cho thấy, Adenosine c&oacute; t&aacute;c dụng kh&aacute;ng vi&ecirc;m, chống l&atilde;o h&oacute;a v&agrave; gi&uacute;p da trắng s&aacute;ng hơn. Nhờ c&oacute; Adenosine, c&aacute;c tế b&agrave;o của da sẽ khoẻ mạnh v&agrave; t&aacute;i tạo nhanh hơn, da cũng sẽ trắng s&aacute;ng, mịn m&agrave;ng hơn bằng c&aacute;ch đ&agrave;o thải c&aacute;c tế b&agrave;o chứa melanin - thủ phạm g&acirc;y n&ecirc;n hiện tượng đen da, n&aacute;m, t&agrave;n nhang... dưới t&aacute;c hại của m&ocirc;i trường xung quanh.</span></p>

<p><span style="font-size:14px">Theo nghi&ecirc;n cứu đăng tr&ecirc;n Tạp ch&iacute; Khoa học Mỹ phẩm Quốc tế, Adenosine được chứng minh c&oacute; khả năng l&agrave;m giảm c&aacute;c nếp nhăn xuất hiện xung quanh mắt v&agrave; c&aacute;c nếp nhăn ở giữa ấn đường. Cụ thể, c&oacute; 126 nữ t&igrave;nh nguyện từ 45-65 tuổi đ&atilde; tham gia thử nghiệm. Mỗi người được gửi hai trong ba sản phẩm bao gồm: kem chứa Adenosine, m&agrave;ng h&ograve;a tan chứa Adenosine v&agrave; một loại giả dược, để sử dụng hai lần mỗi ng&agrave;y cho c&aacute;c v&ugrave;ng c&oacute; vết nhăn ở mỗi b&ecirc;n mặt trong suốt 2 th&aacute;ng. Kết quả cho thấy hai sản phẩm c&oacute; chứa Adenosine gi&uacute;p c&aacute;c v&ugrave;ng da quanh mắt trở n&ecirc;n mịn m&agrave;ng hơn. Kem c&oacute; chứa Adonesine cũng cải thiện đ&aacute;ng kể c&aacute;c vết nhăn giữa ấn đường. Nghi&ecirc;n cứu c&ograve;n cho thấy t&aacute;c dụng của Adenosine đối với dấu ch&acirc;n chim v&agrave; những nếp nhăn kh&aacute;c tr&ecirc;n mặt.</span></p>

<div class="card image__container my-3 w-100"><img alt="..." class="card-img-top" src="/Content/Image/tin-tuc/inside/max/dong-trung-ha-thao-2.jpg" />
<div class="card-body">
<p style="text-align:center"><small>Nhiều b&agrave;i thuốc sử dụng đ&ocirc;ng tr&ugrave;ng hạ thảo để bồi dưỡng cơ thể v&agrave; cải thiện sắc đẹp.</small></p>
</div>
</div>

<p><span style="font-size:14px">Hiện nay, để ứng dụng v&agrave; đưa h&agrave;m lượng dưỡng chất Adenosine c&oacute; trong đ&ocirc;ng tr&ugrave;ng hạ thảo, nhiều thương hiệu mỹ phẩm quốc tế đ&atilde; sử dụng c&ocirc;ng nghệ cao để chiết xuất Adenosine. Tại Việt Nam, BiOshi l&agrave; một trong số &iacute;t c&aacute;c thương hiệu mỹ phẩm sử dụng nguy&ecirc;n liệu từ đ&ocirc;ng tr&ugrave;ng hạ thảo kết hợp c&ocirc;ng nghệ l&agrave;m đẹp từ c&aacute;c quốc gia Nhật, H&agrave;n, Ph&aacute;p, Australia...</span></p>

<p>&nbsp;</p>

<div class="card image__container my-3 w-100"><img alt="..." class="card-img-top" src="/Content/Image/tin-tuc/inside/max/8U9A9660.jpg" />
<div class="card-body">
<p style="text-align:center"><small>BiOshi ứng dụng th&agrave;nh c&ocirc;ng th&agrave;nh phần Adenosine c&oacute; trong đ&ocirc;ng tr&ugrave;ng hạ thảo để sản xuất mỹ phẩm.</small></p>
</div>
</div>

<p><span style="font-size:14px">C&aacute;c sản phẩm của BiOshi sản xuất theo c&ocirc;ng thức ri&ecirc;ng, gi&uacute;p c&aacute;c dưỡng chất Adenosine c&oacute; trong đ&ocirc;ng tr&ugrave;ng hạ thảo hoạt động tốt, từ đ&oacute; k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi ellastin v&agrave; collagen gi&uacute;p cải thiện l&agrave;n da da, chống l&atilde;o h&oacute;a. BiOshi đang ph&aacute;t triển c&aacute;c d&ograve;ng như trắng da mặt, trắng da to&agrave;n th&acirc;n v&agrave; trắng cấp tốc th&ocirc;ng qua hệ thống sản phẩm đa dạng từ sữa rửa mặt, serum, đến sữa tắm, kem dưỡng trắng da...</span></p>
', CAST(N'2019-07-30T00:42:21.000' AS DateTime), N'Mai Anh (vnexpress.net)                                                                                                                                                                                                                                   ')
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (18, N'Sản phẩm luôn được cải tiến liên tục', N'san-pham-luon-duoc-cai-tien-lien-tuc', N'Tại ViBotani, công tác nghiên cứu và phát triển sản phẩm mới (R&D) rất được quan tâm đầu tư...', N'Nghiên cứu sản phẩm', N'/Uploads/images/tin-tuc/front/max/blog-l1.png', N'
<p><em>Tại ViBotani, c&ocirc;ng t&aacute;c nghi&ecirc;n cứu v&agrave; ph&aacute;t triển sản phẩm mới (R&amp;D) rất được quan t&acirc;m đầu tư. Ch&uacute;ng t&ocirc;i tin rằng chỉ c&oacute; c&ocirc;ng thức lu&ocirc;n được nghi&ecirc;n cứu cải tiến mới thật sự mang lại gi&aacute; trị cho kh&aacute;ch h&agrave;ng</em></p>

<div class="mb-4 text-center"><img class="w-75" src="/Content/Image/blog-l1.png" /></div>

', CAST(N'2019-07-30T00:48:37.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (19, N'Sản xuất theo tiêu chuẩn quốc tế ISO 9001', N'san-xuat-theo-tieu-chuan-quoc-te-iso-9001', N'Quá trình sản xuất tại ViBotani Việt Nam luôn tuân thủ theo tiêu chuẩn quốc tế ISO 9001 từ khâu...', N'Nghiên cứu sản phẩm', N'/Uploads/images/tin-tuc/front/max/blog-l2.png', N'
<p>Qu&aacute; tr&igrave;nh sản xuất tại ViBotani Việt Nam lu&ocirc;n tu&acirc;n thủ theo ti&ecirc;u chuẩn quốc tế ISO 9001 từ kh&acirc;u nghi&ecirc;n cứu tạo ra c&ocirc;ng thức sản phẩm đến kh&acirc;u vận h&agrave;nh v&agrave; đ&oacute;ng g&oacute;i để mang lại những sản phẩm chất lượng, đ&aacute;p ứng thị hiếu kh&aacute;ch h&agrave;ng.</p>

<div class="mb-4 text-center"><img class="w-75" src="/Content/Image/blog-l2.png" /></div>

<div class="mb-4 text-center"><img class="w-75" src="/Content/Image/blog-l3.png" /></div>

<div class="mb-4 text-center"><img class="w-75" src="/Content/Image/blog-l4.png" /></div>

', CAST(N'2019-07-30T00:49:45.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (20, N'Bí kíp dưỡng da trắng hồng tự nhiên của Sao sau 01 tuần', N'bi-kip-duong-da-trang-hong-tu-nhien-cua-sao-sau-01-tuan', N'Da trắng mặc gì cũng xinh là quan niệm làm đẹp của người Á Đông. Vì thế, chị em luôn quan tâm...', N'Sự kiện tung hàng', N'/Uploads/images/tin-tuc/front/max/cac-sao.jpg', N'
<p>Da trắng mặc g&igrave; cũng xinh l&agrave; quan niệm l&agrave;m đẹp của người &Aacute; Đ&ocirc;ng. V&igrave; thế, chị em lu&ocirc;n quan t&acirc;m đến phương ph&aacute;p dưỡng trắng s&aacute;ng da m&agrave; an to&agrave;n. Những b&iacute; k&iacute;p dưỡng da từ &Aacute; hậu Trịnh Kim Chi, V&acirc;n Trang, Phương Trinh Jolie, C&aacute;t Tường, Mai Phương sẽ gi&uacute;p nhan sắc của bạn trắng khỏe tự nhi&ecirc;n sau hơn 1 tuần</p>

<p>&Aacute; hậu Trịnh Kim Chi: l&agrave;n da cần &ldquo;trắng an to&agrave;n&rdquo;</p>

<p>&Aacute; hậu &ndash; Nghệ sỹ Ưu t&uacute; Trịnh Kim Chi nổi tiếng với nhan sắc &ldquo;th&aacute;ch thức thời gian&rdquo; v&agrave; &ldquo;l&agrave;n da kh&ocirc;ng tuổi&rdquo; trắng hồng rạng rỡ. N&oacute;i về b&iacute; quyết l&agrave;m đẹp, &Aacute; hậu Việt Nam năm 1994 chia sẻ: &ldquo;Ai cũng biết chu kỳ để l&agrave;n da được t&aacute;i tạo &iacute;t nhất phải đủ 28 ng&agrave;y, vậy m&agrave; chỉ sau một hai lần b&ocirc;i thuốc da đ&atilde; trắng n&otilde;n chứng tỏ l&agrave;n da đ&atilde; bị &ldquo;&eacute;p&rdquo; phải bong tr&oacute;c lớp biểu b&igrave; v&agrave; da non b&ecirc;n trong đ&atilde; bị tổn thương nghi&ecirc;m trọng... C&aacute;i g&igrave; cũng vậy, n&ecirc;n &ldquo;chậm m&agrave; chắc&rdquo;, c&aacute;c bạn c&oacute; thể l&agrave;m s&aacute;ng da từ từ bằng nguy&ecirc;n liệu tự nhi&ecirc;n như Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo (ĐTHT), Tr&agrave; xanh, &hellip;</p>

<p>Với Adenosine trong ĐTHT c&oacute; t&aacute;c dụng kh&aacute;ng vi&ecirc;m, chống l&atilde;o h&oacute;a v&agrave; gi&uacute;p da trắng s&aacute;ng hơn; nhờ th&agrave;nh phần n&agrave;y, c&aacute;c tế b&agrave;o khoẻ mạnh v&agrave; t&aacute;i tạo nhanh hơn, da trắng s&aacute;ng, mịn m&agrave;ng hơn bằng c&aacute;ch đ&agrave;o thải c&aacute;c tế b&agrave;o chứa melanin - thủ phạm g&acirc;y đen da, n&aacute;m, t&agrave;n nhang... dưới t&aacute;c hại của m&ocirc;i trường. Hiện nay, nhiều thương hiệu mỹ phẩm quốc tế sử dụng c&ocirc;ng nghệ cao để chiết xuất Adenosine trong ĐTHT đưa v&agrave;o sản phẩm. Tại Việt Nam, BiOshi l&agrave; một trong số &iacute;t mỹ phẩm sử dụng nguy&ecirc;n liệu từ ĐTHT theo b&iacute; quyết dưỡng trắng da của Nhật Bản n&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m lựa chọn v&agrave; sử dụng l&acirc;u d&agrave;i&rdquo;.</p>

<div class="card col-9 col-md-6 image__container mb-3 mx-auto px-0"><img alt="..." class="w-100" src="/Content/Image/tin-tuc/inside/max/15622.jpg" /></div>

<p>Diễn vi&ecirc;n V&acirc;n Trang: d&ugrave;ng thử mới tin, chỉ hơn 01 tuần l&agrave;n da đ&atilde; kh&aacute;c biệt</p>

<p>Nổi tiếng với đ&ocirc;i mắt tr&ograve;n, l&agrave;n da trắng v&agrave; nụ cười tỏa nắng, diễn vi&ecirc;n V&acirc;n Trang tiết lộ &ldquo;mặc d&ugrave; mới sử dụng sản phẩm gần đ&acirc;y nhưng BiOshi đ&atilde; thực sự mang lại hiệu quả cho l&agrave;n da căng mọng, trắng khỏe v&agrave; tr&agrave;n đầy sức sống. BiOshi chinh phục tr&aacute;i tim ph&aacute;i đẹp ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n, từ bao b&igrave; dễ thương bắt mắt, cực k&igrave; th&iacute;ch hợp l&agrave;m qu&agrave; tặng y&ecirc;u thương, cho đến m&ugrave;i hương dịu nhẹ tự nhi&ecirc;n, dễ chịu v&ocirc; c&ugrave;ng, kh&ocirc;ng k&eacute;n da. C&ocirc;ng thức đặc biệt với Adenosine dưỡng da trắng hồng kh&ocirc;ng t&igrave; vết c&oacute; trong ĐTHT đang l&agrave; &ldquo;xu hướng l&ecirc;n ng&ocirc;i&rdquo;, gi&uacute;p da trắng ho&agrave;n to&agrave;n tự nhi&ecirc;n, an to&agrave;n, kh&ocirc;ng hề bị b&agrave;o m&ograve;n hay bắt nắng&rdquo;. Sau khi sử dụng BiOshi, V&acirc;n Trang ho&agrave;n to&agrave;n tự tin khoe l&agrave;n da mộc khi ra đường với gia đ&igrave;nh.</p>

<div class="card col-9 col-md-6 image__container mb-3 mx-auto px-0"><img alt="..." class="w-100" src="/Content/Image/tin-tuc/inside/max/8U9A5312.jpg" /></div>

<p>Ca sĩ &ndash; Diễn vi&ecirc;n Phương Trinh Jolie: n&ecirc;n sử dụng trọn bộ chăm s&oacute;c da của 01 thương hiệu tin cậy, l&agrave;m đẹp từ s&acirc;u b&ecirc;n trong</p>

<p>Nổi tiếng xinh đẹp, n&oacute;ng bỏng, &iacute;t ai ngờ Ca sĩ &ndash; Diễn vi&ecirc;n Phương Trinh Jolie cực k&igrave; trung th&agrave;nh với bộ sản phẩm chăm s&oacute;c da trắng đẹp &ldquo;Sữa rửa mặt &ndash; Serum &ndash; Kem dưỡng trắng da mặt v&agrave; to&agrave;n th&acirc;n&rdquo; BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo. Với thương hiệu BiOshi uy t&iacute;n được ph&aacute;i đẹp y&ecirc;u th&iacute;ch, th&iacute;ch hợp với mọi l&agrave;n da, đặc biệt l&agrave; sử dụng trọn bộ sẽ gi&uacute;p c&aacute;c bạn nhận được hiệu quả tối ưu, tr&aacute;nh sử dụng nhiều thương hiệu mỹ phẩm v&agrave;o quy tr&igrave;nh chăm s&oacute;c da, d&ugrave;ng qu&aacute; nhiều th&agrave;nh phần c&ugrave;ng một l&uacute;c sẽ kh&ocirc;ng tốt cho l&agrave;n da. C&ocirc; đặc biệt ch&uacute; &yacute; đến việc sử dụng BiOshi m&ocirc;̃i ngày để giúp làm ch&acirc;̣m quá trình oxy hóa, tái tạo làn da căng mịn, đ&acirc;̀y sức s&ocirc;́ng, giúp giảm n&ecirc;́p nhăn tr&ecirc;n da, giảm nám, sạm da hi&ecirc;̣u quả.</p>

<div class="card col-9 col-md-6 image__container mb-3 mx-auto px-0"><img alt="..." class="w-100" src="/Content/Image/tin-tuc/inside/max/8U9A9229.jpg" /></div>

<p>Diễn vi&ecirc;n &ndash; MC C&aacute;t Tường: da đẹp bằng c&aacute;ch l&agrave;m sạch da v&agrave; bảo vệ da đ&uacute;ng c&aacute;ch</p>

<p>Diễn vi&ecirc;n &ndash; MC C&aacute;t Tường c&oacute; phương ph&aacute;p chăm s&oacute;c da cực k&igrave; hữu &iacute;ch. C&ocirc; cho biết để c&oacute; l&agrave;n da trắng s&aacute;ng cần l&agrave;m sạch da v&agrave; bảo vệ đ&uacute;ng c&aacute;ch bởi mỹ phẩm ph&ugrave; hợp. B&iacute; k&iacute;p l&agrave; chọn sữa rửa mặt th&iacute;ch hợp với mọi loại da, kh&aacute;ng vi&ecirc;m, kh&ocirc;ng k&iacute;ch ứng, m&ugrave;i hương nhẹ, kh&ocirc;ng b&agrave;o m&ograve;n da; kh&ocirc;ng chỉ rửa mặt khi đi ngo&agrave;i đường để sạch bụi m&agrave; c&ograve;n phải rửa mặt sau một đ&ecirc;m, l&agrave;m sạch những độc tố m&agrave; da đ&agrave;o thải ra. C&ocirc; cực k&igrave; y&ecirc;u th&iacute;ch Sữa rửa mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&igrave; gi&uacute;p &ldquo;da trắng thật, kh&ocirc;ng trắng ảo, kh&ocirc;ng tẩy da&rdquo;. Đặc biệt, C&ocirc; chia sẻ quy tr&igrave;nh chăm s&oacute;c da trắng s&aacute;ng cần d&ugrave;ng Serum cung cấp độ ẩm, t&aacute;i tạo da cũng như l&agrave;m chất dẫn, thẩm thấu nhanh kem dưỡng BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo gi&uacute;p da trắng s&acirc;u từ b&ecirc;n trong.</p>

<div class="card col-9 image__container mb-3 mx-auto px-0"><img alt="..." class="w-100" src="/Content/Image/tin-tuc/inside/max/1562.jpg" /></div>

<p>Diễn vi&ecirc;n Mai Phương: lắng nghe tiếng n&oacute;i của l&agrave;n da</p>

<p>Diễn vi&ecirc;n Mai Phương chia sẻ để chăm s&oacute;c da trắng hồng hiệu quả, trước hết cần lắng nghe tiếng n&oacute;i của l&agrave;n da, t&igrave;m hiểu thật kỹ th&agrave;nh phần, nguy&ecirc;n liệu của sản phẩm c&oacute; an to&agrave;n với da kh&ocirc;ng, đặc biệt l&agrave; đối với da nhạy cảm. C&ocirc; cực k&igrave; y&ecirc;u th&iacute;ch xu hướng l&agrave;m đẹp tự nhi&ecirc;n của phụ nữ Nhật. Sau nhiều trải nghiệm, Diễn vi&ecirc;n đ&atilde; tin tưởng v&agrave;o BiOshi v&igrave; d&ugrave;ng ĐTHT kết hợp c&ocirc;ng nghệ l&agrave;m đẹp từ c&aacute;c nước ti&ecirc;n tiến.</p>

<div class="card col-9 image__container mb-3 mx-auto px-2" style="background:#f7d8e3"><img alt="..." class="p-3 w-100" src="/Content/Image/tin-tuc/inside/max/8U9A9734logo 2.jpg" />
<p>Bộ BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo gồm Kem mặt, Sữa rửa mặt, Serum mặt, Kem &ldquo;body&rdquo; v&agrave; sữa tắm; ngo&agrave;i ra, c&ograve;n c&oacute; d&ograve;ng dưỡng trắng da Tr&agrave; xanh ph&ugrave; hợp với bạn trẻ, năng động, th&iacute;ch dưỡng trắng từ nguy&ecirc;n liệu c&oacute; trong thi&ecirc;n nhi&ecirc;n. Sản phẩm kh&ocirc;ng c&oacute; corticoid.</p>
</div>


', CAST(N'2019-07-30T00:51:37.000' AS DateTime), N'Khám phá (theo www.eva.vn)                                                                                                                                                                                                                                ')
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (21, N'ViBotani tổ chức tung hàng liên tục mỗi 02 tháng năm 2019', N'vibotani-to-chuc-tung-hang-lien-tuc-moi-02-thang-nam-2019', N'Trong năm 2019, ViBotani sẽ tổ chức tung hàng liên tục mỗi 02 tháng, bắt đầu từ dòng sản phẩm...', N'Nghiên cứu sản phẩm', N'/Uploads/images/tin-tuc/front/max/8U9A5237.jpg', N'
<p>Trong năm 2019, ViBotani sẽ tổ chức tung h&agrave;ng li&ecirc;n tục mỗi 02 th&aacute;ng, bắt đầu từ d&ograve;ng sản phẩm Trắng da với thương hiệu BiOshi, sau đ&oacute; l&agrave; c&aacute;c d&ograve;ng Đẹp da, Mỹ phẩm v&agrave; d&ograve;ng Đặc trị da. Ch&uacute;ng t&ocirc;i tin rằng với 04 d&ograve;ng sản phẩm n&agrave;y sẽ g&oacute;p phần l&agrave;m phong ph&uacute; th&ecirc;m thị trường mỹ phẩm cao cấp l&agrave;m từ thi&ecirc;n nhi&ecirc;n tại Việt Nam.</p>

<div class="blog-carousel owl-carousel owl-drag owl-loaded owl-theme p-2">
<div class="owl-stage-outer">
<div class="owl-stage" style="transform:translate3d(0px, 0px, 0px); transition:all 0s ease 0s; width:2712px">
<div class="active owl-item" style="margin-right:10px; width:893.75px">
<div class="item"><img class="w-100" src="/Content/Image/slide/san-pham/max/8U9A9240.JPG" /></div>
</div>

<div class="owl-item" style="margin-right:10px; width:893.75px">
<div class="item"><img class="w-100" src="/Content/Image/slide/san-pham/max/8U9A9358.JPG" /></div>
</div>

<div class="owl-item" style="margin-right:10px; width:893.75px">
<div class="item"><img class="w-100" src="/Content/Image/slide/san-pham/max/8U9A9361.JPG" /></div>
</div>
</div>
</div>

<div class="owl-nav">&lsaquo;&rsaquo;</div>

<div class="owl-dots">&nbsp;</div>
</div>

', CAST(N'2019-07-30T00:52:43.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (22, N'ViBotani luôn gắn kết sự phát triển với Cộng đồng tại Việt Nam', N'vibotani-luon-gan-ket-su-phat-trien-voi-cong-dong-tai-viet-nam', N'Gắn kết với cộng đồng cũng là phương châm hoạt động của ViBotani Việt Nam, chúng tôi sẽ không ngừng tham gia các hoạt động phát triển cộng đồng để phần nào chia sẻ với một số hoàn cảnh khó khăn...', N'Gắn kết cộng đồng', NULL, NULL, CAST(N'2019-07-30T00:53:32.030' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (23, N'ViBotani luôn quan tâm đào tạo phát triển nhân sự', N'vibotani-luon-quan-tam-dao-tao-phat-trien-nhan-su', N'Tại ViBotani, công tác đào tạo nhân sự rất được chú trọng. Chúng tôi cho rằng sự thành công của ViBotani Việt Nam gắn liền với công tác đào tạo nhân sự. Do đó, chúng tôi...', N'Gắn kết cộng đồng', N'/Uploads/images/tin-tuc/front/max/blog-l8.jpg', N'<div class="col-lg-9 col-md-12 shadow-s bg--s">
        

        <p class="text-green">Tại ViBotani, công tác đào tạo nhân sự rất được chú trọng. Chúng tôi cho rằng sự thành công của ViBotani Việt Nam gắn liền với công tác đào tạo nhân sự. Do đó, chúng tôi hướng đến thành lập Học viện Sắc đẹp ViBotani (ViBotani Beauty Academy) để không ngừng nâng cao chất lượng đội ngũ nhân viên – cộng tác viên.</p>
        <div class="text-center mb-4">
            <img class="w-75" src="/Content/Image/blog-l8.png">
        </div>
        


    </div>', CAST(N'2019-07-30T00:57:10.150' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (24, N'SO SÁNH CÁC PHƯƠNG PHÁP LÀM TRẮNG DA TOÀN THÂN', N'so-sanh-cac-phuong-phap-lam-trang-da-toan-than', N'Phần lớn phụ nữ đều ao ước mình có một làn da trắng sáng để trở nên quyến rũ hơn. Có thể nói, một làn da trắng giúp người phụ nữ trở nên xinh đẹp và tự tin hơn. Đó là lý do có khá nhiều chị em phụ nữ tìm đến các liệu pháp làm trắng da để làm làn da mình trở nên đẹp và trắng sáng.', N'Tư vấn da', N'/Uploads/images/so-sanh-cac-phuong-phap-lam-trang-da-toan-than.jpg', N'<p><strong>L&agrave;n da quan trọng đối với chị em phụ nữ như thế n&agrave;o? </strong></p>

<p>&Ocirc;ng b&agrave; xưa thường c&oacute; c&acirc;u: &ldquo; nhất d&aacute;ng nh&igrave; da, thứ ba d&agrave;i t&oacute;c &ldquo; tức l&agrave; &aacute;m chỉ ti&ecirc;u chuẩn người phụ nữ đẹp phải c&oacute; d&aacute;ng đẹp, l&agrave;n da trắng mịn v&agrave; m&aacute;i t&oacute;c d&agrave;i thướt tha. Nhưng ng&agrave;y nay, chuẩn mực về m&aacute;i t&oacute;c d&agrave;i dần bị l&atilde;ng qu&ecirc;n nhưng về d&aacute;ng v&oacute;c v&agrave; l&agrave;n da th&igrave; kh&ocirc;ng thay đổi. Phần lớn phụ nữ đều ao ước m&igrave;nh c&oacute; một l&agrave;n da trắng s&aacute;ng để trở n&ecirc;n quyến rũ hơn. C&oacute; thể n&oacute;i, một l&agrave;n da trắng gi&uacute;p người phụ nữ trở n&ecirc;n xinh đẹp v&agrave; tự tin hơn. Đ&oacute; l&agrave; l&yacute; do c&oacute; kh&aacute; nhiều chị em phụ nữ t&igrave;m đến c&aacute;c liệu ph&aacute;p l&agrave;m trắng da để l&agrave;m l&agrave;n da m&igrave;nh trở n&ecirc;n đẹp v&agrave; trắng s&aacute;ng.</p>

<p><img class="col-10 col-md-8 d-block mb-3 mx-auto" src="/Content/Image/tu-van/inside/max/so-sanh-cac-phuong-phap-lam-trang-da-toan-than-1.jpg" /></p>

<p><strong>Vậy để c&oacute; một l&agrave;n da trắng s&aacute;ng, cần thực hiện những c&aacute;ch g&igrave;? </strong></p>

<p>C&oacute; kh&aacute; nhiều c&aacute;ch để dưỡng trắng da to&agrave;n th&acirc;n, nhưng 2 c&aacute;ch phổ biến nhất m&agrave; ph&aacute;i nữ hay lựa chọn như sau:</p>

<h5>1. Sử dụng liệu ph&aacute;p thi&ecirc;n nhi&ecirc;n</h5>

<p>Từ l&acirc;u, liệu ph&aacute;p thi&ecirc;n nhi&ecirc;n như l&agrave; một liệu ph&aacute;p được chị em phụ nữ tin d&ugrave;ng với ưu điểm an to&agrave;n, dễ sử dụng, kh&ocirc;ng g&acirc;y k&iacute;ch ứng v&agrave; dễ t&igrave;m mua, nhưng mặc hạn chế đi k&egrave;m thường l&agrave; kh&oacute; bảo quản, mất thời gian v&agrave; l&agrave;m kh&aacute; rườm r&agrave;, c&ocirc;ng dụng lại kh&ocirc;ng ho&agrave;n to&agrave;n tuyệt đối v&agrave; nếu ra đường kh&ocirc;ng bảo quản da kỹ th&igrave; da sẽ trở lại trạng th&aacute;i ban đầu.</p>

<p><img class="col-11 col-md-9 d-block mb-3 mx-auto" src="/Content/Image/tu-van/inside/max/so-sanh-cac-phuong-phap-lam-trang-da-toan-than-2.jpg" /></p>

<h5>2. Sử dụng mỹ phẩm</h5>

<p>B&ecirc;n cạnh việc sử dụng c&aacute;c liệu ph&aacute;p thi&ecirc;n nhi&ecirc;n, mỹ phẩm cũng rất được ch&uacute; trọng. Kh&aacute; nhiều loại mỹ phẩm cao cấp ra đời phục vụ cho l&agrave;n da của ph&aacute;i đẹp. Bạn sẽ phải ngạc nhi&ecirc;n v&igrave; sự đa dạng m&agrave; d&ograve;ng kem dưỡng da to&agrave;n th&acirc;n mang lại, từ ph&acirc;n kh&uacute;c cao cấp đến ph&acirc;n kh&uacute;c trung b&igrave;nh, loại n&agrave;o cũng mang một đặc t&iacute;nh ri&ecirc;ng v&agrave; gi&uacute;p da trở n&ecirc;n đẹp hơn cả. N&oacute;i đến ph&acirc;n kh&uacute;c cao cấp, phải kể đến d&ograve;ng kem Shiseido của Nhật Bản, cụ thể l&agrave; kem dưỡng thể Shiseido Total Regenerating Body Cream, chứa th&agrave;nh phần Skingenecell 1P gi&uacute;p ngăn chặn những dấu hiệu l&atilde;o h&oacute;a trong tương lai, k&egrave;m theo chiết xuất Houttuynia Cordata v&agrave; chiết xuất từ c&acirc;y bạch chỉ (Angelica) mang lại một l&agrave;n da cực mịn m&agrave;ng, giữ ẩm từ b&ecirc;n trong v&agrave; gi&uacute;p da trắng s&aacute;ng.</p>

<p><img class="col-11 col-md-9 d-block mb-3 mx-auto" src="/Content/Image/tu-van/inside/max/8U9A9373.jpg" /></p>

<p>B&ecirc;n cạnh đ&oacute;, c&oacute; những loại mỹ phẩm nằm trong ph&acirc;n kh&uacute;c cao cấp như Olay, Pond, Nivea,.. cũng rất được ưa chuộng; cụ thể như sữa tắm trắng da Olay Total Effects Deep Penetrating Moisture Body Wash nhờ c&ocirc;ng thức phức hợp VitaNiacin Complex II với c&aacute;c vitamin C, E, B3 v&agrave; B5 gi&uacute;p n&acirc;ng cao độ ẩm của da, th&uacute;c đẩy qu&aacute; tr&igrave;nh tự trẻ h&oacute;a của l&agrave;n da, l&agrave;m da s&aacute;ng, khỏe v&agrave; mịn m&agrave;ng hơn.</p>

<p>Mặc d&ugrave; kem dưỡng da to&agrave;n th&acirc;n l&agrave; một sản phẩm gi&uacute;p da trắng s&aacute;ng, nhưng ng&agrave;y nay cũng c&oacute; kh&aacute; nhiều loại kem chứa chất cấm mặc d&ugrave; nằm ở ph&acirc;n kh&uacute;c cao cấp, điều n&agrave;y l&agrave; một điều hết sức nguy hiểm v&agrave; c&aacute;c chị em cần ch&uacute; &yacute; khi sử dụng, đọc v&agrave; t&igrave;m hiểu kỹ những th&agrave;nh phần l&agrave;m n&ecirc;n kem dưỡng thể để c&oacute; thể t&igrave;m ra cho m&igrave;nh một loại kem tốt nhất v&agrave; kh&ocirc;ng g&acirc;y hại cho cơ thể.</p>

<p><img class="col-11 col-md-9 d-block mb-3 mx-auto" src="/Content/Image/tu-van/inside/max/so-sanh-cac-phuong-phap-lam-trang-da-toan-than-3.jpg" /></p>

<p>B&ecirc;n cạnh những d&ograve;ng sản phẩm đ&oacute;, phải kể đến sản phẩm dưỡng trắng da to&agrave;n th&acirc;n được chiết xuất từ thi&ecirc;n nhi&ecirc;n, đ&oacute; ch&iacute;nh l&agrave; d&ograve;ng sản phẩm mang t&ecirc;n BiOshi được sản xuất theo B&iacute; quyết dưỡng trắng da của Nhật Bản. Đến với BiOshi, ta c&oacute; sữa tắm v&agrave; kem trắng da to&agrave;n th&acirc;n BiOshi tr&agrave; xanh với th&agrave;nh phần ch&iacute;nh l&agrave; tr&agrave; xanh, gi&uacute;p nu&ocirc;i dưỡng da s&acirc;u từ b&ecirc;n trong, b&ecirc;n cạnh đ&oacute;, C12-15 Alkyl Benzoate trong kem c&ograve;n gi&uacute;p kiềm dầu v&agrave; chống nắng hiệu quả, kh&ocirc;ng lo hư tổn da khi bị tia UV t&aacute;c động.</p>

<h5>C&aacute;ch sử dụng kem dưỡng trắng da to&agrave;n th&acirc;n một c&aacute;ch hiệu quả nhất:</h5>

<p>Th&ocirc;ng thường, thời gian hấp thụ kem hiệu quả nhất l&agrave; v&agrave;o ban đ&ecirc;m v&igrave; ban đ&ecirc;m l&agrave; l&uacute;c l&agrave;n da bắt đầu quy tr&igrave;nh t&aacute;i tạo v&agrave; thẩm thấu, sử dụng kem trắng da to&agrave;n th&acirc;n v&agrave;o thời điểm n&agrave;y gi&uacute;p kem thấm s&acirc;u hơn, nu&ocirc;i dưỡng da trắng s&aacute;ng từ b&ecirc;n trong, gi&uacute;p da trắng hồng rạng rỡ. Ngo&agrave;i việc dưỡng da to&agrave;n th&acirc;n, bạn cũng phải ch&uacute; &yacute; đến da mặt của m&igrave;nh, một l&agrave;n da đẹp sẽ khiến bạn tự tin hơn khi bước xuống phố v&agrave; l&agrave;m việc hằng ng&agrave;y, do vậy, giải ph&aacute;p l&agrave; b&ecirc;n cạnh d&ugrave;ng kem dưỡng trắng to&agrave;n th&acirc;n th&igrave; n&ecirc;n d&ugrave;ng k&egrave;m với sữa tắm trắng.</p>

<p><img class="col-11 col-md-9 d-block mb-3 mx-auto" src="/Content/Image/tu-van/inside/max/so-sanh-cac-phuong-phap-lam-trang-da-toan-than-4.jpg" /></p>

<p>Hiện nay, tr&ecirc;n thị trường kem trắng da to&agrave;n th&acirc;n được b&aacute;n kh&aacute; nhiều, với đủ mọi mức gi&aacute; kh&aacute;c nhau. Mọi người n&ecirc;n c&acirc;n nhắc kỹ v&agrave; chọn mua loại kem ph&ugrave; hợp với t&uacute;i tiền của m&igrave;nh m&agrave; đảm bảo chất lượng. Muốn chắc chắn h&atilde;y chọn mua kem dưỡng da c&oacute; thương hiệu tin cậy.</p>

<p>Hy vọng b&agrave;i viết tr&ecirc;n đ&atilde; gi&uacute;p mọi người giải đ&aacute;p thắc mắc l&agrave;m thế n&agrave;o để sở hữu một l&agrave;n da trắng s&aacute;ng, thu h&uacute;t mọi &aacute;nh nh&igrave;n. T&igrave;m v&agrave; chọn một sản phẩm th&iacute;ch hợp để dưỡng l&agrave;n da của bạn trở n&ecirc;n đẹp hơn.</p>
', CAST(N'2019-07-30T12:32:08.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (25, N'TRẮNG DA TOÀN THÂN HIỆU QUẢ NHẤT', N'trang-da-toan-than-hieu-qua-nhat', N'Không ai muốn mình sở hữu một làn da đen sạm, xấu xí, bởi vì nó sẽ làm mất đi vẻ quyến rũ và kém phần xinh đẹp của đa số chị em. Qua bài viết này, chị em sẽ biết cách làm thế nào để làm trắng da toàn thân an toàn và hiệu quả nhất!', N'Tư vấn da', N'/Uploads/images/tu-van/front/max/trang-da-toan-than-hieu-qua.jpg', N'     <p>
                            Không ai muốn mình sở hữu một làn da đen sạm, xấu xí, bởi vì nó sẽ làm mất đi vẻ quyến rũ và kém phần xinh đẹp của đa số chị em. Qua bài viết này, chị em sẽ biết cách làm thế nào để làm trắng da toàn thân an toàn và hiệu quả nhất!
                        </p>
                        <p>
                            Có 3 cách làm trắng da tiêu biểu:
                        </p>
                        <h5 class=" text-green-s">
                            1. Sử dụng phương pháp làm trắng da tại nhà:
                        </h5>
                        <p>

                            </p><ul>
                                <li>
                                    <b>Cám gạo:</b> Bột cám gạo chứa hàm lượng dinh dưỡng khá cao, các loại vitamin A, vitamin nhóm B, vitamin E đều được tìm thấy trong cám gạo có tác dụng làm sạch tế bào chết trên da mặt, giúp chống lão hóa và làm trắng da toàn thân rất hiệu quả. Bạn có thể sử dụng liệu pháp này 1-2 lần trong tuần để đạt được hiệu quả cao nhất.
                                </li>
                            </ul>
                            <img class="px-3 w-100 mb-3" src="/Content/Image/tu-van/inside/max/trang-da-toan-than-hieu-qua-1.jpg">
                            <ul>
                                <li>
                                    <b> Đu đủ:</b> trong đu đủ có chứa nhiều hợp chất papain- một loại enzym có tác dụng giúp tẩy trắng da rất an toàn. Đặc biệt trong đu đủ chín còn chứa nhiều vitamin E và C cùng nhiều khoáng chất thiết yếu cho da như kali, canxi, magie… Đây được xem là một loại thực phẩm giúp làm trắng da an toàn và hiệu quả nhất, nếu kết hợp nó với sữa tươi và sử dụng 2 lần trong tuần, làn da cơ thể bạn sẽ trở nên mịn màng và sáng lên trông thấy!
                                </li>
                            </ul>

                        <p></p>
                        <h5 class=" text-green-s">2. Làm trắng da bằng phương pháp ăn uống:</h5>
                        <p>
                            Theo nghiên cứu chỉ ra thì các thực phẩm có chứa Vitamin C giúp kích thích tái tạo tế bào da mới, ngăn chặn sự hình thành của các hắc tố melanin gây sạm da, kích thích sản sinh collagen tăng độ săn chắc và đàn hồi cho da, bạn có thể tìm thấy loại vitamin này trong cam, xoài, bưởi,... Thêm vào đó, bổ sung các loại đậu và rau quả cũng làm cho làn da bạn tươi trẻ và sáng mịn hơn trông thấy. Và điều dễ thấy hơn là bổ sung nước hằng ngày cho cơ thể. Nước giúp da có độ ẩm tốt, chắc khỏe và mịn màng hơn.
                        </p>
                        <img class="px-3 w-100 mb-3" src="/Content/Image/tu-van/inside/max/trang-da-toan-than-hieu-qua-2.jpg">

                        <h5 class=" text-green-s">
                            3. Sử dụng mỹ phẩm làm trắng da toàn thân
                        </h5> Có khá nhiều loại kem làm trắng da được bày bán trên thị trường. Và thời gian gần đây, Kem dưỡng trắng da Nhật Bản là một trong những dòng được ưa chuộng nhất bởi yếu tố chiết xuất từ thiên nhiên, an toàn cho da. Phải kể đến dòng kem cao cấp như Shiseido, Victoria, Botanic,... tiêu biểu như: Kem dưỡng body Shiseido Urea Body Milk (150ml) – Hàng nội địa Nhật, cung cấp độ ẩm cho da, làm cho da thêm mềm mại, có hương thơm nhẹ nhàng và quyến rũ, làm cho làn da trở nên trắng sáng.
                        <p>
                            Bên cạnh đó, còn có những loại kem trắng da toàn thân ở phân khúc trung bình như: Olay, Vaseline,..
                            Bên cạnh đó, phải kể đến kem trắng da BiOshi, một loại mỹ phẩm Nhật Bản cực kỳ chất lượng. Tiêu biểu như 2 loại kem trắng da toàn thân BiOshi đông trùng hạ thảo và BiOshi trà xanh. Nói đến BiOshi đông trùng hạ thảo, chắc hẳn ai cũng biết rằng thành phần chính của nó là đông trùng hạ thảo, một loại thảo dược chống kích ứng, kháng viêm da; chống lão hóa bởi giảm các vết rạn chân chim, làm đầy rãnh nhăn, bên cạnh đó C12-15 Alkyl Benzoate là hoạt chất làm mềm da, ngoài đặc tính thông thường còn có thêm dưỡng da, dưỡng ẩm, chống lão hóa,…
                        </p>
                        <img class="col-md-7 d-block mx-auto mb-3" src="/Content/Image/tu-van/inside/max/8U9A9416.jpg">
                        <p>
                            Những phương pháp làm trắng da bằng rau củ quả, chế biến thành hỗn hợp thường tốn khá nhiều thời gian, hiệu quả mang lại không chắc chắn, bên cạnh đó, khi ra nắng cũng dễ bắt nắng nếu không bao bọc cẩn thận. Nhưng đối với mỹ phẩm làm trắng da, người dùng có thể sử dụng khá nhanh, chỉ tốn một ít thời gian, có chất bảo vệ da giúp da ít bị bắt nắng, nhưng suy cho cùng, nếu sử dụng kem mà không dùng các biện pháp bảo vệ như mặc áo chống nắng thì kem cũng sẽ không phát huy được tác dụng vốn có của nó.
                        </p>
                        <img class="px-3 w-100 mb-3" src="/Content/Image/tu-van/inside/max/trang-da-toan-than-hieu-qua-3.jpg">
                        <h5 class=" text-green-s">
                            Làm thế nào để phân biệt được kem thật và giả?
                        </h5><ul>
                            <li>
                                Xem mã vạch: Thông thường, mã vạch của kem thường xuất hiện ở phần vỏ hộp và được in khá rõ, nếu mã vạch bị in mờ, hoặc dán thì mặc nhiên, đó là kem kém chất lượng.
                            </li>
                            <li>
                                Xem màu sắc kem: Đối với những loại kem thật, màu sắc có phần khác biệt hơn, chất kem mềm hơn và không bết rít, có mùi thơm dễ chịu.
                            </li>
                        </ul>
                        <p>
                            Thông qua bài viết này, mong là chị em có thêm hiểu biết trong việc dưỡng trắng da toàn thân an toàn và hiệu quả.
                        </p>', CAST(N'2019-07-30T13:04:03.373' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (26, N'Cách làm trắng da mặt hỗn hợp', N'cach-lam-trang-da-mat-loai-da-hon-hop', N'Da hỗn hợp là một loại da bao gồm cả da khô, da nhờn và da mụn. Vùng da nhờn thường là ở cằm, cánh mũi và trán, còn hai bên má thường là da khô. Muốn chăm sóc loại da này, bạn cần phải biết rõ thuộc tính ở nhiều vùng da trên khuôn mặt bạn, qua đó bạn có thể chăm sóc da một cách tốt nhất.', N'Tư vấn da', N'/Uploads/images/cach_lam_trang_da_mat_hon_hop.jpg', N' <p>
                            Da hỗn hợp là một loại da bao gồm cả da khô, da nhờn và da mụn. Vùng da nhờn thường là ở cằm, cánh mũi và trán, còn hai bên má thường là da khô. Muốn chăm sóc loại da này, bạn cần phải biết rõ thuộc tính ở nhiều vùng da trên khuôn mặt bạn, qua đó bạn có thể chăm sóc da một cách tốt nhất. Đối với những ai muốn làn da mình trở nên sáng mịn, căng bóng. Bạn phải tuân thủ nhiều bước chăm sóc da tiêu biểu là:
                        </p>

                        <p>
                            </p><h4 class=" text-green-s">Làm sạch da</h4>
                            Điều này là điều đầu tiên trong quá trình làm da trở nên chắc khỏe. Và muốn làm sạch da thì cách tốt nhất nên sử dụng sữa rửa mặt. Rửa mặt hằng ngày giúp làn da được nuôi dưỡng chắc khỏe hơn, loại bỏ được nhiều bụi bẩn,bạn có thể mua sữa rữa mặt nằm trong phân khúc cấp cao như là sữa rửa mặt của olay, shiseido,...tiêu biểu như sữa rửa mặt Shiseido Ibuki Gentle Cleanser với thành phần Butylene Glycol giúp làm trắng da và giảm độ nhờn cho da, thích hợp với loại da hỗn hợp.
                            <img class="col-md-8 mx-auto d-block my-3" src="/Content/Image/Advisory/lam trang da mat hon hop 1.jpg">
                            Mẹo: Dùng trước khi đi ngủ hay mỗi sáng thức dậy giúp làn da hấp thụ tốt hơn. Nặn lớp sữa lên lòng bàn tay, xoa nhẹ nhàng theo hình xoắn ốc lên 2 gò má và khắp vùng mặt. Điều này làm cho dưỡng chất thấm sâu hơn vào bên trong da, làm sáng da. Sau đó, rửa thật sạch bằng nước lạnh để lỗ chân lông se khít lại, dùng trong khoảng 1 tháng làn da sẽ đổi tone rõ rệt.
                            <h4 class=" text-green-s">Chăm sóc da - cân bằng độ ẩm</h4>
                        <p></p><p>
                            Muốn chăm sóc da tốt, cần tìm hiểu kỹ những loại kem chất lượng trên thị trường hiện nay, đồng thời, nó còn phải phù hợp đối với làn da của bạn. Có 2 loại kem dưỡng trắng da mặt mà da hỗn hợp hoàn toàn có thể sử dụng được, đó chính là kem dưỡng da mặt của Ponds và kem dưỡng da mặt BiOshi.<br>
                            Thương hiệu Ponds vốn nổi tiếng với những sản phẩm có công dụng làm trắng thần kỳ, trong đó nổi tiếng nhất là flawless white POND’S với tinh chất Nhân Sâm Hàn Quốc và Nghệ Tây quí hiếm giúp nuôi dưỡng làn da từ bên trong, làm mờ các vết thâm nám, giúp da trở nên đều màu, cho bạn làn da trắng hồng rạng rỡ và vẻ đẹp tinh khiết.<br>
                            <img class="col-md-8 mx-auto d-block my-3" src="/Content/Image/Advisory/lam trang da mat hon hop 2.jpg">
                            Cùng với Ponds, kem dưỡng trắng da mặt BiOshi cũng có kết quả tốt không kém giúp cải thiện làn da với chiết xuất từ Đông Trùng Hạ Thảo làm sáng da, chống lão hóa, làm mờ vết nhăn giúp da trẻ hóa, đảm bảo sắc xuân. Với những thành phần như Squalane là một loại dầu tự nhiên giúp cho vùng da khô cân bằng được độ ẩm, cùng chiết xuất nấm linh chi (Ganodrma Sinensis Extract) hay Adenosine trong Đông Trùng Hạ Thảo giúp nuôi dưỡng da sâu từ bên trong, khiến da trắng sáng.<br>

                        </p><p>
                            <b> Mẹo:</b> Rửa mặt thật sạch, sau đó lau thật khô và thoa một lớp kem mỏng lên, sử dụng tốt nhất vào buổi tối trước khi đi ngủ vì thời điểm này kem thẩm thấu vào da nhanh và sâu hơn. Sử dụng liên tụng 2-3 lần trong một ngày. Sau 2 tuần bạn sẽ có làn da trắng sáng.<br>
                        </p><p>
                            Ngoài ra, đối với những vùng da khô, không thể không kể đến serum, serum là một loại mỹ phẩm giúp cân bằng độ ẩm cho da khá tốt, phải kể đến serum trắng da mặt BiOshi trà xanh. Được chiết xuất hoàn toàn từ lá trà xanh (EGCG), cùng chiết xuất lô hội (Aloe Vera Extract) giúp cho da cân bằng được độ ẩm, nuôi dưỡng da khỏe mạnh và trắng sáng<br>
                            <img class="col-md-8 mx-auto d-block my-3" src="/Content/Image/Advisory/lam trang da mat hon hop 3.jpg">
                            <b> Mẹo:</b> Rửa mặt thật sạch, lau thật khô rồi dùng serum thoa đều lên mặt, massage sau đó vỗ nhẹ cho dưỡng chất thấm sâu vào bên trong. Giúp da không còn bị khô và bong tróc, bổ sung lượng dưỡng ẩm nhất định cho da, đồng thời nuôi dưỡng làn da trắng sáng ngay từ bên trong.
                            </p><h4 class=" text-green-s"> Điểm khác biệt khi sử dụng liệu pháp từ thiên nhiên và mỹ phẩm là gì?</h4>

                            Đối với liệu pháp thiên nhiên, tuy lành tính và cho công dụng tốt, nhưng nó lại khá tốn thời gian, bảo quản trong thời gian ngắn gây phiền phức trong quá trình sử dụng.
                        <p></p><p>
                            Còn đối với mỹ phẩm, có hạn sử dụng rõ ràng, dễ bảo quản và cho hiệu quả khá tốt.<br>
                            <img class="col-md-10 mx-auto d-block my-3" src="/Content/Image/Advisory/lam trang da mat hon hop 4.jpg">
                            Thông thường, các dòng kem trên thị trường đều được quảng bá có công dụng tốt cho làn da, nhưng không phải loại kem nào cũng thế. Ngày nay, có một số loại kem làm giả chất lượng, gây mất lòng tin ở người tiêu dùng. Chính vì thế, muốn làm người tiêu dùng thông minh phải tìm hiểu thật kỹ công dụng cùng xuất xứ của kem để có thể đảm bảo sức khỏe cho làn da của chị em phụ nữ.<br>
                        </p><p>
                            Gía thành của các loại kem hiện nay rất đa dạng nhưng xu hướng chung mọi người lại chuộng dòng kem chiết xuất từ thiên nhiên, thích hợp với mọi loại da và hoàn toàn lành tính. Chính vì thế, dòng kem này mới hot trong những năm gần đây.<br>
                        </p><p>
                            Thông qua bài viết này, hi vọng mọi người sẽ tìm được loại kem thích hợp cho da hỗn hợp, chăm sóc da đúng cách góp phần làm cho làn da trở nên chắc khỏe, ngăn ngừa được những tác nhân từ môi trường bên ngoài. Da hỗn hợp từ nay đã không còn là mối lo cho nhiều chị em phụ nữ mỗi khi chăm sóc chúng.

                        </p>
', CAST(N'2019-07-30T13:06:59.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (27, N'Cách làm trắng da mặt khô', N'cach-lam-trang-da-mat-kho', N'Da khô là một loại da cũng khá nhạy cảm, khi thời tiết trở nên hanh nóng, da bắt đầu bong tróc từng mảng khiến các chị em rất khó chịu, có cảm giác đau rát. Làn da khô rất hiếm khi bị ảnh hưởng bởi bã nhờn hay mụn, nhưng lại hay bị rơi vào tình trạng thiếu nước, bong tróc da nếu không được chăm sóc một cách cẩn thận.', N'Tư vấn da', N'/Uploads/images/Advisory/front/cach_lam_trang_da_mat_kho.jpg', N'<p>&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Da kh&ocirc; l&agrave; một loại da cũng kh&aacute; nhạy cảm, khi thời tiết trở n&ecirc;n hanh n&oacute;ng, da bắt đầu bong tr&oacute;c từng mảng khiến c&aacute;c chị em rất kh&oacute; chịu, c&oacute; cảm gi&aacute;c đau r&aacute;t. L&agrave;n da kh&ocirc; rất hiếm khi bị ảnh hưởng bởi b&atilde; nhờn hay mụn, nhưng lại hay bị rơi v&agrave;o t&igrave;nh trạng thiếu nước, bong tr&oacute;c da nếu kh&ocirc;ng được chăm s&oacute;c một c&aacute;ch cẩn thận. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
Việc chăm s&oacute;c loại da kh&ocirc; n&agrave;y cũng kh&aacute; l&agrave; kh&oacute;, bởi v&igrave; nếu kh&ocirc;ng chăm s&oacute;c đ&uacute;ng c&aacute;ch, t&igrave;nh trạng da sẽ trở n&ecirc;n trầm trọng hơn, d&ugrave;ng kem dưỡng trắng cho da kh&ocirc; cũng phải c&acirc;n nhắc kỹ c&agrave;ng để gi&uacute;p l&agrave;n da trở n&ecirc;n chắc khỏe, mịn m&agrave;ng v&agrave; trắng s&aacute;ng. H&ocirc;m nay, trong b&agrave;i viết n&agrave;y sẽ giới thiệu đến c&aacute;c chị em phụ nữ phương ph&aacute;p l&agrave;m trắng da kh&ocirc;, c&aacute;c loại kem tr&ecirc;n thị trường gi&uacute;p l&agrave;n da kh&ocirc; trở n&ecirc;n chắc khỏe, mịn m&agrave;ng. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat kho 1.jpg" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<h4>Liệu ph&aacute;p l&agrave;m trắng da kh&ocirc; tự nhi&ecirc;n</h4>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Liệu ph&aacute;p tự nhi&ecirc;n lu&ocirc;n l&agrave; ưu ti&ecirc;n số một h&agrave;ng đầu của chị em phụ nữ, bởi v&igrave; theo quan điểm của hầu hết mọi người th&igrave; liệu ph&aacute;p tự nhi&ecirc;n &iacute;t tốn k&eacute;m, lại đem lại lợi &iacute;ch nhiều hơn cho da, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da v&agrave; kh&ocirc;ng g&acirc;y hại cho da. Đối với l&agrave;n da kh&ocirc;, n&ecirc;n bổ sung lượng độ ẩm ph&ugrave; hợp gi&uacute;p da mịn m&agrave;ng hơn, kh&ocirc;ng bị bong tr&oacute;c khi thời tiết hanh kh&ocirc;. Ch&uacute;ng ta n&ecirc;n sử dụng dầu &ocirc; liu thoa l&ecirc;n mặt hằng ng&agrave;y để bổ sung độ ẩm cho da tuyệt đối. Ngo&agrave;i ra, c&oacute; thể d&ugrave;ng dầu dừa nguy&ecirc;n chất hoặc mặt nạ bơ, những loại n&agrave;y c&oacute; chứa c&aacute;c vitamin kho&aacute;ng chất tạo độ ẩm cho da từ s&acirc;u b&ecirc;n trong, gi&uacute;p da dần trắng s&aacute;ng v&agrave; mịn m&agrave;ng hơn bao giờ hết. Tuy vậy, điểm trừ l&agrave; những liệu ph&aacute;p n&agrave;y đa phần kh&aacute; tốn thời gian. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat kho 2.jpg" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<h4>Liệu ph&aacute;p l&agrave;m trắng da kh&ocirc; bằng mỹ phẩm</h4>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&ecirc;n thị trường hiện nay c&oacute; kh&aacute; nhiều loại mỹ phẩm d&agrave;nh cho da kh&ocirc;, phải kể đến đ&oacute; ch&iacute;nh l&agrave; kem dưỡng trắng da mặt Shiseido 5 trong 1 của Nhật Bản. Nằm trong ph&acirc;n kh&uacute;c cấp cao, loại kem n&agrave;y c&oacute; cả năm c&ocirc;ng dụng, bao gồm: nước hoa hồng, sữa dưỡng da, tinh chất dưỡng ẩm, kem dưỡng, mặt nạ ngủ. Trong kem n&agrave;y c&oacute; chứa th&agrave;nh phần Aqualabel, cung cấp dưỡng chất ho&agrave;n hảo, đồng thời,bổ sung collagen hỗ trợ t&aacute;i tạo tế b&agrave;o mới. Th&iacute;ch hợp cho những ai sở hữu l&agrave;n da kh&ocirc;. C&ugrave;ng sự kết hợp của &nbsp;Vitamin A, HA v&agrave; chiết xuất thảo dược gi&uacute;p ngăn ngừa c&aacute;c dấu hiệu l&atilde;o h&oacute;a, tăng độ đ&agrave;n hồi cho da, gi&uacute;p l&agrave;n da trở n&ecirc;n tươi trẻ hơn, mịn m&agrave;ng hơn. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C&aacute;c b&aacute;c sĩ cũng khuy&ecirc;n d&ugrave;ng chị em sử dụng loại kem dưỡng ẩm cho da kh&ocirc; Pond Mỹ. Loại kem n&agrave;y giữ độ ẩm tốt cho da, kem thẩm thấu s&acirc;u b&ecirc;n trong, tăng sự đ&agrave;n hồi v&agrave; l&agrave;m cho da th&ecirc;m phần mềm mịn. Kem d&agrave;nh cho da mặt v&agrave; rất l&agrave;nh t&iacute;nh, ho&agrave;n to&agrave;n kh&ocirc;ng g&acirc;y dị ứng cho da. Ponds được c&aacute;c b&aacute;c sĩ da liễu khuy&ecirc;n d&ugrave;ng đối với c&aacute;c bạn c&oacute; l&agrave;n da kh&ocirc;. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat kho 3.jpg" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C&oacute; một số d&ograve;ng mỹ phẩm cao cấp hiện nay tuy l&agrave; giải quyết được nhiều vấn đề cho da, l&agrave;m da s&aacute;ng l&ecirc;n nhanh ch&oacute;ng, nhưng n&oacute; c&oacute; chứa một v&agrave;i th&agrave;nh phần g&acirc;y hại cho da, chỉ giải quyết vấn đề cho da tạm thời m&agrave; kh&ocirc;ng nu&ocirc;i dưỡng da l&acirc;u d&agrave;i. Đ&ocirc;i khi những sản phẩm n&agrave;y c&ograve;n g&acirc;y k&iacute;ch ứng cho người sử dụng. Mối lo ngại của người sử dụng l&agrave; l&agrave;m thế n&agrave;o để t&igrave;m được d&ograve;ng sản phẩm ưng &yacute; tr&ecirc;n thị trường, vừa c&oacute; gi&aacute; cả phải chăng vừa an to&agrave;n khi sử dụng. Nếu bạn c&oacute; chung nỗi lo th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua thương hiệu BiOshi. Kem BiOshi được chiết xuất từ tr&agrave; xanh với th&agrave;nh phần như dầu kho&aacute;ng (Paraffinum Liquidum) gi&uacute;p da hấp thụ &aacute;nh s&aacute;ng mặt trời m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; hoặc ch&aacute;y qu&aacute; mức, ngo&agrave;i ra c&ograve;n c&oacute; chứa Glyceryl Glucoside, l&agrave; một loại ph&acirc;n tử gi&uacute;p giữ ẩm cho da thế hệ mới, gi&uacute;p da c&oacute; thể khỏe mạnh, tr&aacute;nh được t&igrave;nh trạng kh&ocirc; r&aacute;p, ngăn ngừa l&atilde;o h&oacute;a v&agrave; x&oacute;a mờ t&agrave;n nhang. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat kho 4.jpg" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Những loại kem tr&ecirc;n đều l&agrave; những loại kem c&oacute; khả năng cải thiện l&agrave;n da của chị em phụ nữ một c&aacute;ch tốt nhất. T&ugrave;y theo ph&acirc;n kh&uacute;c sản phẩm m&agrave; c&aacute;c loại kem n&agrave;y c&oacute; một mức gi&aacute; kh&aacute;c nhau. Nếu chị em phụ nữ n&agrave;o cảm thấy th&iacute;ch th&uacute; với d&ograve;ng kem n&agrave;o th&igrave; h&atilde;y nhanh tay tậu về một bộ để sử dụng, gi&uacute;p l&agrave;n da trở n&ecirc;n mịn m&agrave;ng hơn tr&ocirc;ng thấy! &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mỗi ng&agrave;y n&ecirc;n sử dụng 1-2 lần, gi&uacute;p cho l&agrave;n da c&oacute; thể thẩm thấu nhanh hơn, kh&ocirc;ng thoa qu&aacute; nhiều sẽ l&agrave;m b&iacute;t lỗ ch&acirc;n l&ocirc;ng, g&acirc;y n&ecirc;n mụn hoặc t&aacute;c dụng phụ trong qu&aacute; tr&igrave;nh sử dụng. S&agrave;i kết hợp với c&aacute;c loại serum để gi&uacute;p da trở n&ecirc;n chắc khỏe hơn tr&ocirc;ng thấy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat kho 5.jpg" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Đ&acirc;y l&agrave; b&agrave;i viết d&agrave;nh cho c&aacute;c chị em tham khảo, đối với những ai c&oacute; t&igrave;nh trạng da kh&ocirc; r&aacute;p, tốt nhất n&ecirc;n d&ugrave;ng liệu ph&aacute;p từ thi&ecirc;n nhi&ecirc;n, sử dụng c&aacute;c d&ograve;ng mỹ phẩm sẽ th&uacute;c đẩy nhanh qu&aacute; tr&igrave;nh đ&agrave;o thải độc tố trong da, đồng thời, gi&uacute;p da c&oacute; độ ẩm nhất định, theo sau đ&oacute; l&agrave; đẩy mạnh qu&aacute; tr&igrave;nh trắng s&aacute;ng của l&agrave;n da.<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hi vọng qua b&agrave;i viết n&agrave;y, chị em sẽ được tham khảo th&ecirc;m nhiều phương ph&aacute;p l&agrave;m trắng da hiệu quả ngay tại nh&agrave;, kh&ocirc;ng cần tốn tiền đến spa, đồng thời c&ograve;n biết được nhiều loại mỹ phẩm gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng, mịn m&agrave;ng m&agrave; kh&ocirc;ng bị bất kỳ sự k&iacute;ch ứng n&agrave;o. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
', CAST(N'2019-07-30T14:22:27.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (28, N'Cách làm trắng da mặt dầu (nhờn)', N'cach-lam-trang-da-mat-loai-da-dau-nhon', N'Bạn đã quá mệt mỏi khi mỗi lần thức dậy, làn da bạn lại trở nên bết dính khó chịu? Bạn đã thử đủ mọi cách, thậm chí là dùng cả những liệu pháp đến từ thiên nhiên vẫn không cải thiện được tình trạng da nhờn- dầu? Bạn đã thử sử dụng mỹ phẩm để can thiệp chưa? Nếu rồi mà tình trạng da vẫn không cải thiện, thì hãy đọc bài viết sau đây, tin chắc rằng các bạn sẽ tìm cho mình một liệu pháp đúng đắn khi đọc xong bài viết này đấy!', N'Tư vấn da', N'/Uploads/images/Advisory/front/cach_lam_trang_da_mat_dau_nhon.jpg', N'<p>Bạn đ&atilde; qu&aacute; mệt mỏi khi mỗi lần thức dậy, l&agrave;n da bạn lại trở n&ecirc;n bết d&iacute;nh kh&oacute; chịu? Bạn đ&atilde; thử đủ mọi c&aacute;ch, thậm ch&iacute; l&agrave; d&ugrave;ng cả những liệu ph&aacute;p đến từ thi&ecirc;n nhi&ecirc;n vẫn kh&ocirc;ng cải thiện được t&igrave;nh trạng da nhờn- dầu? Bạn đ&atilde; thử sử dụng mỹ phẩm để can thiệp chưa? Nếu rồi m&agrave; t&igrave;nh trạng da vẫn kh&ocirc;ng cải thiện, th&igrave; h&atilde;y đọc b&agrave;i viết sau đ&acirc;y, tin chắc rằng c&aacute;c bạn sẽ t&igrave;m cho m&igrave;nh một liệu ph&aacute;p đ&uacute;ng đắn khi đọc xong b&agrave;i viết n&agrave;y đấy!</p>

<p>&nbsp;</p>

<h4>Đ&ocirc;i n&eacute;t về da nhờn-dầu</h4>

<p>C&oacute; thể n&oacute;i, da nhờn-dầu l&agrave; một loại da kh&aacute; dễ gặp ở chị em phụ nữ, nguy&ecirc;n nh&acirc;n g&acirc;y ra t&igrave;nh trạng n&agrave;y l&agrave; do sự hoạt động mạnh mẽ của c&aacute;c tuyến nhờn tr&ecirc;n da, l&agrave;m da l&uacute;c n&agrave;o cũng trong t&igrave;nh trạng nhờn r&iacute;t, v&ugrave;ng nhờn- dầu tập trung nhiều nhất ở điểm T của khu&ocirc;n mặt, đ&oacute; ch&iacute;nh l&agrave; tr&aacute;n, mũi, 2 b&ecirc;n g&ograve; m&aacute; v&agrave; cằm. Để khắc phục t&igrave;nh trạng tr&ecirc;n, chị em phụ nữ n&ecirc;n sử dụng sữa rửa mặt v&agrave; kem dưỡng trắng da mặt để gi&uacute;p da bớt nhờn, dầu, đồng thời l&agrave;m da trở n&ecirc;n trắng s&aacute;ng. Vậy th&igrave; n&ecirc;n sử dụng loại n&agrave;o để đạt được hiệu quả tốt nhất!</p>

<p>&nbsp;</p>

<p><img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhon-dau 1.jpg" /></p>

<h4>Liệu ph&aacute;p l&agrave;m trắng da từ thi&ecirc;n nhi&ecirc;n</h4>

<p>Liệu ph&aacute;p n&agrave;y được kh&aacute; nhiều chị em tin d&ugrave;ng bởi v&igrave; n&oacute; cho hiệu quả tuyệt đối v&agrave; ho&agrave;n to&agrave;n l&agrave;nh t&iacute;nh. Đối với da mặt nhờn dầu, c&oacute; thể d&ugrave;ng mặt nạ mật ong hay mặt nạ chanh v&agrave; trứng g&agrave;. Những loại mặt nạ n&agrave;y gi&uacute;p kiềm dầu kh&aacute; tốt, hơn thế nữa, ch&uacute;ng c&ograve;n gi&uacute;p da trắng s&aacute;ng mịn m&agrave;ng.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhon-dau 2.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Mỹ phẩm l&agrave;m trắng da nhờn - dầu</h4>

<p>Trong ph&acirc;n kh&uacute;c cao cấp, phải kể đến Shiseido hay Olay,.. v&agrave; loại kem Olay Regenerist Whip Face Moisturizer mang đến khả năng dưỡng ẩm v&agrave; chống l&atilde;o h&oacute;a mạnh mẽ cho l&agrave;n da của bạn. Kem dưỡng ẩm với Hyaluronic Acid gi&uacute;p cải thiện độ ẩm cho da đồng thời gi&uacute;p l&agrave;m mềm da hiệu quả. Vitamin B3 kh&ocirc;ng chỉ c&oacute; khả năng cải thiện vẻ ngo&agrave;i của da, m&agrave; c&ograve;n tăng cường sức khỏe cho l&agrave;n da. Ngo&agrave;i ra c&ograve;n một số loại kem như Pond hay Nivea cũng gi&uacute;p l&agrave;n da nhờn dầu trở n&ecirc;n đẹp hơn. Đặc biệt phải kể đến mỹ phẩm của BiOshi, với nhiều dạng như sữa rửa mặt, kem trắng da,... cũng được kh&aacute; nhiều người ưa chuộng hiện nay.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Sữa rửa mặt BiOshi tr&agrave; xanh</h4>

<p>Đối với những c&ocirc; n&agrave;ng c&oacute; l&agrave;n da nhờn- dầu th&igrave; sữa rửa mặt l&agrave; một loại mỹ phẩm kh&ocirc;ng thể bỏ qua. Nhưng c&oacute; kh&aacute; nhiều loại sữa rửa mặt tr&ecirc;n thị trường v&agrave; rất kh&oacute; để t&igrave;m ra một loại sữa rửa mặt kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho da nhờn, đến với sữa rửa mặt BiOshi tr&agrave; xanh, bạn sẽ kh&ocirc;ng phải lo k&iacute;ch ứng hay bất kỳ t&aacute;c dụng phụ g&igrave;, bởi v&igrave; sao?<br />
Bioshi l&agrave; một loại sữa rửa mặt được chiết xuất ho&agrave;n to&agrave;n từ tr&agrave; xanh, bao gồm c&aacute;c th&agrave;nh phần như EGCG v&agrave; Polyphenol c&oacute; c&ocirc;ng dụng trong việc chống l&atilde;o h&oacute;a, kh&aacute;ng vi&ecirc;m da, kh&aacute;ng khuẩn tốt, đồng thời, loại bỏ được những sắc tố đen da, l&agrave;m sạch da, loại bỏ b&atilde; nhờn v&agrave; bụi bẩn, đem lại l&agrave;n da sạch, mịn m&agrave;ng v&agrave; trắng s&aacute;ng. Sau khi sử dụng sản phẩm n&agrave;y, độ đ&agrave;n hồi của l&agrave;n da bạn sẽ được n&acirc;ng l&ecirc;n đ&aacute;ng kể. <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhon-dau 3.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Mỹ phẩm l&agrave;m trắng da nhờn - dầu</h4>

<p>Trong ph&acirc;n kh&uacute;c cao cấp, phải kể đến Shiseido hay Olay,.. v&agrave; loại kem Olay Regenerist Whip Face Moisturizer mang đến khả năng dưỡng ẩm v&agrave; chống l&atilde;o h&oacute;a mạnh mẽ cho l&agrave;n da của bạn. Kem dưỡng ẩm với Hyaluronic Acid gi&uacute;p cải thiện độ ẩm cho da đồng thời gi&uacute;p l&agrave;m mềm da hiệu quả. Vitamin B3 kh&ocirc;ng chỉ c&oacute; khả năng cải thiện vẻ ngo&agrave;i của da, m&agrave; c&ograve;n tăng cường sức khỏe cho l&agrave;n da. Ngo&agrave;i ra c&ograve;n một số loại kem như Pond hay Nivea cũng gi&uacute;p l&agrave;n da nhờn dầu trở n&ecirc;n đẹp hơn. Đặc biệt phải kể đến mỹ phẩm của BiOshi, với nhiều dạng như sữa rửa mặt, kem trắng da,... cũng được kh&aacute; nhiều người ưa chuộng hiện nay.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Th&agrave;nh phần trong sữa rửa mặt Bioshi tr&agrave; xanh</h4>

<p>C&oacute; chất l&ocirc; hội gi&uacute;p l&agrave;n da dưỡng ẩm s&acirc;u từ b&ecirc;n trong, ngo&agrave;i ra c&ograve;n chứa Phenoxy Ethanol gi&uacute;p triệt ti&ecirc;u những tế b&agrave;o g&acirc;y hại cho da, l&agrave;m sạch da, giảm độ nhờn một c&aacute;ch nhanh ch&oacute;ng.<br />
Bất kỳ loại sữa rửa mặt n&agrave;o cũng vậy, chỉ n&ecirc;n d&ugrave;ng 2 lần/ ng&agrave;y, bạn sẽ cảm thấy hiệu quả r&otilde; rệt trong 2 tuần đầu sử dụng.<br />
Nếu đ&atilde; sử dụng sữa rửa mặt rồi th&igrave; kh&ocirc;ng thể kh&ocirc;ng sử dụng kem dưỡng trắng da, gi&uacute;p l&agrave;n da trở n&ecirc;n trắng s&aacute;ng mịn m&agrave;ng hơn. Đi k&egrave;m với sữa rửa mặt BiOshi tr&agrave; xanh th&igrave; c&ograve;n c&oacute; loại kem trắng da BiOshi tr&agrave; xanh, đ&acirc;y l&agrave; một loại kem ho&agrave;n to&agrave;n ph&ugrave; hợp với da nhờn, kh&ocirc;ng g&acirc;y k&iacute;ch ứng trong qu&aacute; tr&igrave;nh sử dụng.<br />
<img class="col-md-8 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhon-dau 4.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Kem trắng da BiOshi tr&agrave; xanh</h4>

<p><strong>C&ocirc;ng dụng:</strong> Được chiết xuất ho&agrave;n to&agrave;n từ l&aacute; tr&agrave; xanh, trong m&ocirc;i trường l&agrave;m việc kh&eacute;p k&iacute;n, kem trắng da BiOshi c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, đẩy l&ugrave;i c&aacute;c nếp nhăn, l&agrave;m cho l&agrave;n da trở n&ecirc;n căng b&oacute;ng, mịn m&agrave;ng, c&ugrave;ng với th&agrave;nh phần chiết xuất từ hoa Crocus Sativus gi&uacute;p da c&oacute; thể khỏe mạnh hơn, c&ugrave;ng với nấm linh chi gi&uacute;p t&aacute;i tạo v&agrave; phục hồi da s&acirc;u từ b&ecirc;n trong, l&agrave;m da trở n&ecirc;n trắng s&aacute;ng tuyệt đối.<br />
Bioshi l&agrave; một loại sữa rửa mặt được chiết xuất ho&agrave;n to&agrave;n từ tr&agrave; xanh, bao gồm c&aacute;c th&agrave;nh phần như EGCG v&agrave; Polyphenol c&oacute; c&ocirc;ng dụng trong việc chống l&atilde;o h&oacute;a, kh&aacute;ng vi&ecirc;m da, kh&aacute;ng khuẩn tốt, đồng thời, loại bỏ được những sắc tố đen da, l&agrave;m sạch da, loại bỏ b&atilde; nhờn v&agrave; bụi bẩn, đem lại l&agrave;n da sạch, mịn m&agrave;ng v&agrave; trắng s&aacute;ng. Sau khi sử dụng sản phẩm n&agrave;y, độ đ&agrave;n hồi của l&agrave;n da bạn sẽ được n&acirc;ng l&ecirc;n đ&aacute;ng kể.<br />
<strong>C&aacute;ch sử dụng:</strong> Thoa một lớp kem mỏng l&ecirc;n bề mặt da sau khi rửa mặt thật sạch. Một ng&agrave;y sử dụng từ 2-3 lần, sau 2 tuần th&igrave; da bạn sẽ trở n&ecirc;n trắng s&aacute;ng hơn tr&ocirc;ng thấy.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhon-dau 5.jpg" /> Ngo&agrave;i ra, bạn c&ograve;n c&oacute; thể sử dụng th&ecirc;m serum l&agrave;m trắng da của bioshi, kết hợp 3 loại n&agrave;y th&igrave; l&agrave;n da của bạn sẽ nhanh ch&oacute;ng rạng ngời.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>C&oacute; thể n&oacute;i, da nhờn l&agrave; một loại da kh&aacute; kh&oacute; chăm s&oacute;c, nhưng nếu biết c&aacute;ch chăm s&oacute;c th&igrave; n&oacute; sẽ trở n&ecirc;n đẹp kh&ocirc;ng thua k&eacute;m bất kỳ loại da n&agrave;o kh&aacute;c. C&aacute;c sản phẩm m&agrave; b&agrave;i viết n&agrave;y giới thiệu đều l&agrave; những sản phẩm đ&atilde; được chứng nhận, kiểm định kỹ c&agrave;ng, ho&agrave;n to&agrave;n chiết xuất 100% từ thi&ecirc;n nhi&ecirc;n. Hiện nay, sản phẩm của BiOshi được b&aacute;n ra thị trường với mức gi&aacute; vừa phải nhưng chất lượng cao, gi&uacute;p cho chị em phụ nữ c&oacute; thể y&ecirc;n t&acirc;m tậu cho m&igrave;nh bộ sản phẩm n&agrave;y về để sử dụng.</p>

<p>Th&ocirc;ng qua b&agrave;i viết n&agrave;y, hi vọng c&aacute;c chị em phụ nữ c&oacute; thể nhận biết được l&agrave;n da của m&igrave;nh, qua đ&oacute;, lựa chọn cho m&igrave;nh một sản phẩm l&agrave;m s&aacute;ng da v&agrave; l&agrave;m sạch da một c&aacute;ch ph&ugrave; hợp nhất. Xin cảm ơn đ&atilde; đ&oacute;n đọc b&agrave;i viết, hy vọng l&agrave; sẽ gặp lại c&aacute;c bạn ở những b&agrave;i viết sau.</p>
', CAST(N'2019-07-30T14:24:17.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (29, N'Cách làm trắng da mặt thường', N'cach-lam-trang-da-mat-loai-da-thuong', N'Sở hữu một làn da trắng không tỳ vết luôn là khao khát của hầu hết các cô gái. Việc chăm sóc da hàng ngày là một việc không kém phần quan trọng giúp làn da trở nên đẹp hơn, đặc biệt là da mặt. Một khuôn mặt trắng sáng sẽ làm các cô nàng tự tin hơn khi đi ra phố, thu hút mọi ánh nhìn và làm cô nàng trở nên rạng rỡ hơn. Nhưng không phải bất kỳ loại da mặt nào cũng giống nhau. Da mặt được chia làm 5 loại chính, đó chính là: da bình thường, da hỗn hợp, da nhạy cảm, da nhờn - dầu và da khô. Hôm nay, bài viết này sẽ giới thiệu đến các chị em cách làm trắng da thường, hãy cùng tham khảo dưới bài viết sau đây.', N'Tư vấn da', N'/Uploads/images/Advisory/front/cach_lam_trang_da_mat_thuong.jpg', N'<p>Sở hữu một l&agrave;n da trắng kh&ocirc;ng tỳ vết lu&ocirc;n l&agrave; khao kh&aacute;t của hầu hết c&aacute;c c&ocirc; g&aacute;i. Việc chăm s&oacute;c da h&agrave;ng ng&agrave;y l&agrave; một việc kh&ocirc;ng k&eacute;m phần quan trọng gi&uacute;p l&agrave;n da trở n&ecirc;n đẹp hơn, đặc biệt l&agrave; da mặt. Một khu&ocirc;n mặt trắng s&aacute;ng sẽ l&agrave;m c&aacute;c c&ocirc; n&agrave;ng tự tin hơn khi đi ra phố, thu h&uacute;t mọi &aacute;nh nh&igrave;n v&agrave; l&agrave;m c&ocirc; n&agrave;ng trở n&ecirc;n rạng rỡ hơn. Nhưng kh&ocirc;ng phải bất kỳ loại da mặt n&agrave;o cũng giống nhau. Da mặt được chia l&agrave;m 5 loại ch&iacute;nh, đ&oacute; ch&iacute;nh l&agrave;: da b&igrave;nh thường, da hỗn hợp, da nhạy cảm, da nhờn - dầu v&agrave; da kh&ocirc;. H&ocirc;m nay, b&agrave;i viết n&agrave;y sẽ giới thiệu đến c&aacute;c chị em c&aacute;ch l&agrave;m trắng da thường, h&atilde;y c&ugrave;ng tham khảo dưới b&agrave;i viết sau đ&acirc;y.</p>

<p>&nbsp;</p>

<h4>Đ&ocirc;i n&eacute;t về da thường</h4>

<p>Đối với những ai sở hữu l&agrave;n da thường th&igrave; quả l&agrave; một người may mắn, bởi v&igrave; da thường l&agrave; một loại da đẹp nhất v&agrave; khỏe mạnh nhất, nhưng bất kỳ loại da n&agrave;o cũng vậy, nếu kh&ocirc;ng dưỡng v&agrave; chăm ch&uacute;t th&igrave; n&oacute; cũng sẽ xuất hiện c&aacute;c vấn đề như nổi mụn, đen sạm,... Để bảo vệ một l&agrave;n da khỏe mạnh v&agrave; trắng kh&ocirc;ng t&igrave; vết, người ta thường t&igrave;m đến c&aacute;c c&aacute;ch chăm s&oacute;c từ thi&ecirc;n nhi&ecirc;n, nhưng b&ecirc;n cạnh đ&oacute;, cũng c&oacute; kh&ocirc;ng &iacute;t loại kem dưỡng da v&agrave; sữa rửa mặt được b&aacute;n ra tr&ecirc;n thị trường được c&aacute;c chị em ưa chuộng. Ti&ecirc;u biểu như Olay Luminous Whip Face Moisturizer gi&uacute;p bạn sở hữu l&agrave;n da ẩm mượt v&agrave; trắng s&aacute;ng tự nhi&ecirc;n. Ngo&agrave;i ra, c&ograve;n phải kể đến một loại kem được chiết xuất từ thi&ecirc;n nhi&ecirc;n kh&ocirc;ng k&eacute;m phần chất lượng mang t&ecirc;n BiOshi. <img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat thuong 1.jpg" /> Dưới đ&acirc;y l&agrave; một v&agrave;i d&ograve;ng mỹ phẩm của BiOshi cho độc giả tham khảo:</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Kem trắng da mặt BiOshi</h4>

<p>Đ&acirc;y l&agrave; một loại kem được chiết xuất từ đ&ocirc;ng tr&ugrave;ng hạ thảo, được l&agrave;m với c&ocirc;ng thức v&ocirc; c&ugrave;ng đặc biệt c&oacute; chứa adenosine. Loại kem n&agrave;y gi&uacute;p kh&aacute;ng vi&ecirc;m da, chống k&iacute;ch ứng v&agrave; đặc biệt l&agrave; ngăn chặn sự l&atilde;o h&oacute;a của l&agrave;n da. L&agrave;m đầy r&atilde;nh nhăn, khiến l&agrave;n da trở n&ecirc;n căng b&oacute;ng hơn. Đặc biệt, loại kem n&agrave;y c&ograve;n gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng, đ&agrave;o thải được c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang, kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho da. Với th&agrave;nh phần như Glyceryl Stearate l&agrave; một loại dầu thực vật gi&uacute;p c&acirc;n bằng độ ẩm da tốt, c&ugrave;ng với chiết xuất nh&acirc;n s&acirc;m (Panax Ginseng Extract) nu&ocirc;i dưỡng da s&acirc;u từ b&ecirc;n trong, l&agrave;m da s&aacute;ng mịn rạng ngời hơn tr&ocirc;ng thấy.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat thuong 2.jpg" /> <strong>C&aacute;ch sử dụng:</strong> Thoa một lớp kem mỏng l&ecirc;n da sau khi đ&atilde; rửa mặt thật sạch. Thoa đều theo chiều xoắn ốc rồi vỗ nhẹ cho kem thẩm thấu v&agrave;o da mặt. Với tần suất sử dụng kem 2-3 lần mỗi ng&agrave;y, chỉ trong v&ograve;ng 2 tuần bạn sẽ sở hữu được một l&agrave;n da trắng s&aacute;ng kh&ocirc;ng t&igrave; vết.</p>

<p>&nbsp;</p>

<p>Nếu bạn muốn tăng cường sự trắng s&aacute;ng v&agrave; mịn m&agrave;ng cho da, bạn c&oacute; thể sử dụng kết hợp với serum trắng da BiOshi.</p>

<p>Để gi&uacute;p l&agrave;n da bổ sung đủ dưỡng chất v&agrave; loại bỏ được bụi bẩn, bạn cũng n&ecirc;n sử dụng sữa rửa mặt trắng da tr&agrave; xanh BiOshi.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat thuong 3.jpg" /> Được chiết xuất từ l&aacute; tr&agrave; xanh, với c&ocirc;ng thức vượt trội c&oacute; chứa EGCG v&agrave; polyphenol g&oacute;p phần chống l&atilde;o h&oacute;a, gi&uacute;p kh&aacute;ng khuẩn, đồng thời, loại bỏ được c&aacute;c sắc tố đen tr&ecirc;n da gi&uacute;p dưỡng trắng da s&acirc;u từ b&ecirc;n trong. Ngăn được sự ph&aacute;t triển của c&aacute;c tế b&agrave;o ung thư da.</p>

<p>Đặc biệt, trong sản phẩm n&agrave;y c&oacute; chứa tanin v&agrave; một số vitamin, kho&aacute;ng chất gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, loại bỏ được b&atilde; nhờn, l&agrave;m tăng độ đ&agrave;n hồi gi&uacute;p da khỏe mạnh.</p>

<p><strong>Th&agrave;nh phần:</strong> Gồm c&oacute; tinh chất l&ocirc; hội c&ugrave;ng với Camelia Sinensis Polyphenol chống oxy h&oacute;a, gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng v&agrave; l&agrave;m sạch bụi bẩn b&aacute;m tr&ecirc;n da.</p>

<p>Bạn n&ecirc;n rửa mặt 2 lần trong ng&agrave;y v&agrave;o buổi s&aacute;ng v&agrave; buổi tối, thời điểm n&agrave;y l&agrave;n da sẽ hấp thụ dưỡng chất tốt hơn, v&agrave; bạn cũng c&oacute; thể d&ugrave;ng kết hợp với kem dưỡng da BiOshi hoặc Biori để gi&uacute;p da th&ecirc;m phần trắng s&aacute;ng v&agrave; mịn m&agrave;ng hơn sau 2 tuần sử dụng.</p>

<p>Serum cũng l&agrave; một sự lựa chọn ho&agrave;n hảo d&agrave;nh cho da thường. Gi&uacute;p dưỡng cho l&agrave;n da th&ecirc;m mịn m&agrave;ng trắng s&aacute;ng. Phải kể đến serum trắng da mặt BiOshi Tr&agrave; xanh, một loại serum đang hot nhất tr&ecirc;n thị trường hiện nay!</p>

<p>Serum BiOshi tr&agrave; xanh được chiết xuất từ l&aacute; tr&agrave; xanh, với 2 th&agrave;nh phần ch&iacute;nh l&agrave; EGCG v&agrave; polyphenol. C&ocirc;ng dụng của loại serum n&agrave;y gi&uacute;p chống l&atilde;o h&oacute;a, ngăn ngừa nếp nhăn, đẩy l&ugrave;i c&aacute;c loại độc tố tr&ecirc;n da mặt, thấm s&acirc;u v&agrave;o b&ecirc;n trong da, nu&ocirc;i dưỡng v&agrave; l&agrave;m cho l&agrave;n da trở n&ecirc;n trắng s&aacute;ng.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat thuong 4.jpg" /></p>

<p>Loại serum n&agrave;y c&oacute; thể kết hợp với sữa rửa mặt. Sau khi rửa mặt thật sạch, bạn thoa serum l&ecirc;n, thoa ng&agrave;y 2-3 lần để đạt được kết quả tối ưu nhất.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; combo 3 loại sản phẩm dưỡng da thần th&aacute;nh của BiOshi, bao gồm sữa rửa mặt, serum v&agrave; kem trắng da, bạn n&ecirc;n kết hợp ch&uacute;ng mỗi ng&agrave;y theo tr&igrave;nh tự: rửa mặt - thoa serum v&agrave; sau đ&oacute; l&agrave; thoa kem trắng da, l&agrave;n da bạn sẽ nhanh ch&oacute;ng được như &yacute; muốn, trắng s&aacute;ng rạng ngời!</p>

<p>Hy vọng b&agrave;i viết n&agrave;y sẽ hữu &iacute;t đối với những ai sở hữu loại da thường v&agrave; băn khoăn kh&ocirc;ng biết lựa chọn sản phẩm n&agrave;o để sử dụng.</p>
', CAST(N'2019-07-30T14:25:26.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (30, N'Cách làm trắng da mặt nhạy cảm', N'cach-lam-trang-da-mat-nhay-cam', N'Làn da nhạy cảm là một làn da khá phức tạp, những chị em sở hữu làn da này đa phần đều khá đau đầu trong việc dưỡng chúng. Bởi vì sao? Làn da nhạy cảm rất khó chăm sóc, dễ kích ứng và đặc biệt, khi thời tiết thay đổi, làn da sẽ nổi mẩn đỏ gây khó chịu, làm da xấu đi. Để chăm sóc da nhạy cảm, liệu pháp tốt nhất là nên dùng những loại thực phẩm từ thiên nhiên. Nhưng hiện nay, có một số loại mỹ phẩm làm trắng da có thể giúp da nhạy cảm cải thiện được tình trạng của mình.', N'Tư vấn da', N'/Uploads/images/Advisory/front/cach_lam_trang_da_mat_nhay_cam.jpg', N'<p>L&agrave;n da nhạy cảm l&agrave; một l&agrave;n da kh&aacute; phức tạp, những chị em sở hữu l&agrave;n da n&agrave;y đa phần đều kh&aacute; đau đầu trong việc dưỡng ch&uacute;ng. Bởi v&igrave; sao? L&agrave;n da nhạy cảm rất kh&oacute; chăm s&oacute;c, dễ k&iacute;ch ứng v&agrave; đặc biệt, khi thời tiết thay đổi, l&agrave;n da sẽ nổi mẩn đỏ g&acirc;y kh&oacute; chịu, l&agrave;m da xấu đi. Để chăm s&oacute;c da nhạy cảm, liệu ph&aacute;p tốt nhất l&agrave; n&ecirc;n d&ugrave;ng những loại thực phẩm từ thi&ecirc;n nhi&ecirc;n. Nhưng hiện nay, c&oacute; một số loại mỹ phẩm l&agrave;m trắng da c&oacute; thể gi&uacute;p da nhạy cảm cải thiện được t&igrave;nh trạng của m&igrave;nh.</p>

<p>&nbsp;</p>

<h4>Đ&ocirc;i n&eacute;t về da nhạy cảm</h4>

<p>Da nhạy cảm l&agrave; một l&agrave;n da kh&aacute; mỏng manh, dễ bị t&aacute;c động từ thời tiết, nổi mẫn v&agrave; rất dễ bị k&iacute;ch ứng khi sử dụng một số mỹ phẩm c&oacute; t&iacute;nh oxy h&oacute;a mạnh. Ngo&agrave;i ra, da nhạy cảm c&ograve;n kh&aacute; kh&oacute; chăm s&oacute;c, thường xuy&ecirc;n bị t&aacute;c động từ m&ocirc;i trường n&ecirc;n l&agrave;n da n&agrave;y được cho l&agrave; một c&ocirc; n&agrave;ng &ldquo; đỏng đảnh&rdquo; nhất trong tất cả c&aacute;c loại da.</p>

<p>&nbsp;</p>

<p>Để gi&uacute;p cải thiện l&agrave;n da nhạy cảm c&oacute; 2 c&aacute;ch.</p>

<p>&nbsp;</p>

<h4>1.Sử dụng c&aacute;c loại thực phẩm l&agrave;m trắng da từ thi&ecirc;n nhi&ecirc;n</h4>

<p>Bạn c&oacute; thể d&ugrave;ng sữa tươi kết hợp với d&acirc;u t&acirc;y, hoặc bột yến mạch l&agrave;m mặt nạ cho da nhạy cảm. Hay đơn giản l&agrave; d&ugrave;ng sữa chua, gi&uacute;p cho da ti&ecirc;u trừ được nhiều loại vi khuẩn, đ&agrave;o thải được độc tố c&oacute; trong da. Những loại thực phẩm n&agrave;y đều ho&agrave;n to&agrave;n l&agrave;nh t&iacute;nh, l&agrave;m trắng s&aacute;ng da hiệu quả, nhưng lại ti&ecirc;u tốn kh&aacute; nhiều thời gian v&agrave; hiệu quả cũng kh&ocirc;ng ho&agrave;n to&agrave;n tuyệt đối.<br />
<img class="d-block mx-auto my-3 w-100" src="/Content/Image/Advisory/lam trang da mat nhay cam 1.jpg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>2. Sử dụng c&aacute;c loại mỹ phẩm trắng da tr&ecirc;n thị trường</h4>

<p>Hiện nay, c&oacute; kh&aacute; nhiều d&ograve;ng mỹ phẩm được ph&acirc;n loại theo nhiều ph&acirc;n kh&uacute;c kh&aacute;c nhau, nếu kể đến d&ograve;ng mỹ phẩm cao cấp th&igrave; phải n&oacute;i đến d&ograve;ng kem Shisedo v&agrave; botanic. N&oacute;i đến Botanic, kh&ocirc;ng thể kh&ocirc;ng kể đến Kem dưỡng da nhạy cảm Sakura Botanical Sensitive Cream.<br />
Ngo&agrave;i ra, c&ograve;n c&oacute; c&aacute;c loại kem ở ph&acirc;n kh&uacute;c tầm trung như Olay, Pond,.. Trong đ&oacute;, Olay Total Effects Whip Face Moisturizer mang đến 7 lợi &iacute;ch chăm s&oacute;c da m&agrave; c&aacute;c n&agrave;ng hằng mong ước như: bổ sung độ ẩm cần thiết, c&acirc;n bằng da, l&agrave;m mềm mịn, săn chắc da, cải thiện m&agrave;u da, cải thiện độ đ&agrave;n hồi, v&agrave; giảm đốm n&acirc;u. Sản phẩm n&agrave;y c&oacute; vitamin C &amp; E dồi d&agrave;o, mang đến c&ocirc;ng dụng dưỡng da chống l&atilde;o h&oacute;a v&agrave; phục hồi sắc tố da. V&agrave; đối với những loại mỹ phẩm chiết xuất từ thi&ecirc;n nhi&ecirc;n th&igrave; cũng kh&ocirc;ng thể kh&ocirc;ng kể đến Kem l&agrave;m trắng da mặt BiOshi đ&ocirc;ng tr&ugrave;ng hạ thảo. C&oacute; chứa c&aacute;c th&agrave;nh phần như sữa ong ch&uacute;a (Ropyal Jelly Extract ), đ&ocirc;ng tr&ugrave;ng hạ thảo gi&uacute;p l&agrave;n da được nu&ocirc;i dưỡng s&acirc;u từ b&ecirc;n trong. C&ugrave;ng chiết xuất nấm linh chi, chống oxy h&oacute;a l&agrave;n da, l&agrave;m da trở n&ecirc;n săn chắc hơn, giảm đi qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a v&agrave; l&agrave;m mờ c&aacute;c nếp nhăn.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhay cam 2.jpg" /> C&oacute; thể n&oacute;i tr&ecirc;n thị trường hiện nay, c&oacute; rất nhiều d&ograve;ng mỹ phẩm tuy mang danh cao cấp nhưng lại c&oacute; chứa một số loại chất cấm, khiến l&agrave;n da đẹp trong một thời gian đầu sau khi sử dụng, nhưng nếu lạm dụng th&igrave; sẽ c&oacute; thể g&acirc;y nguy hại về sau. Dạo gần đ&acirc;y, thị hiếu của người ti&ecirc;u d&ugrave;ng tập trung v&agrave;o những d&ograve;ng mỹ phẩm chiết xuất từ thi&ecirc;n nhi&ecirc;n, v&agrave; d&ograve;ng kem của BiOshi l&agrave; d&ograve;ng kem l&yacute; tưởng được chiết xuất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da. Thay v&igrave; sử dụng những liệu ph&aacute;p tự nhi&ecirc;n mất thời gian th&igrave; chỉ cần bỏ một số tiền nhất định mua kem về sử dụng, hiệu quả sẽ gia tăng gấp bội. Th&ecirc;m v&agrave;o đ&oacute;, liệu ph&aacute;p tự nhi&ecirc;n sẽ kh&oacute; bảo quản l&acirc;u hơn mỹ phẩm.<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhay cam 3.jpg" /> Ngo&agrave;i ra, muốn kem được thẩm thấu s&acirc;u hơn, bạn n&ecirc;n d&ugrave;ng k&egrave;m với sữa rửa mặt, chọn mua sữa rửa mặt th&iacute;ch hợp với loại da của bạn, đặc biệt kh&ocirc;ng chứa chất tẩy qu&aacute; mạnh để gi&uacute;p da c&oacute; thể loại bỏ được bụi bẩn, đồng thời nu&ocirc;i dưỡng l&agrave;n da chắc khỏe hơn. C&oacute; thể chọn sữa rửa mặt của BiOshi đ&ocirc;ng tr&ugrave;ng hạ thảo, với tinh chất l&ocirc; hội (Alovera Extract) gi&uacute;p da được nu&ocirc;i dưỡng s&acirc;u từ b&ecirc;n trong, c&ugrave;ng với Sodium Chloride cung cấp dưỡng ẩm cho da, gi&uacute;p da trở n&ecirc;n ho&agrave;n hảo, s&aacute;ng mịn nhanh ch&oacute;ng, chống lại những t&aacute;c nh&acirc;n bụi bẩn l&agrave;m da trở n&ecirc;n xấu đi.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>L&agrave;m thế n&agrave;o để biết được mỹ phẩm giả v&agrave; thật?</h4>

<p>Ng&agrave;y nay, việc l&agrave;m giả mỹ phẩm tr&ecirc;n thị trường kh&aacute; phổ biến, c&aacute;c loại mỹ phẩm ở ph&acirc;n kh&uacute;c cấp cao được l&agrave;m giả ng&agrave;y c&agrave;ng nhiều, để ph&acirc;n biệt được mỹ phẩm thật hay giả, bạn cần lưu &yacute; những điểm sau:<br />
<img class="col-md-10 d-block mx-auto my-3" src="/Content/Image/Advisory/lam trang da mat nhay cam 4.jpg" /> So s&aacute;nh tem chống giả được d&aacute;n tr&ecirc;n loại mỹ phẩm đ&oacute;.<br />
So s&aacute;nh k&iacute;ch thướt, h&igrave;nh d&aacute;ng hộp.<br />
So s&aacute;nh mức gi&aacute;, th&ocirc;ng thường, mỗi loại mỹ phẩm đều được b&aacute;n theo một loại gi&aacute; được ni&ecirc;m yết nhất định, cho n&ecirc;n việc b&aacute;n gi&aacute; thấp hơn l&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng thể.<br />
Check m&atilde; vạch.</p>

<p>&nbsp;</p>

<p>Qua b&agrave;i viết n&agrave;y, hi vọng sẽ đem lại cho bạn lượng kiến thức đủ để bạn chọn mua những loại mỹ phẩm ph&ugrave; hợp với bản th&acirc;n, cũng như gi&uacute;p l&agrave;n da mặt trở n&ecirc;n rạng ngời v&agrave; tr&agrave;n đầy sức sống</p>
', CAST(N'2019-07-30T14:26:19.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (31, N'Cách chăm sóc da', N'cach-cham-soc-da', N'Với phái nữ, việc chăm sóc da là vô cùng quan trọng, để có một làn da đẹp, cần phải chăm sóc theo quy trình. Dĩ nhiên, tùy từng loại da mà có cách chăm sóc khác nhau, không nên chăm sóc tùy tiện dẫn đến những hậu quả không đáng có. Bài viết này sẽ hướng dẫn cho các bạn cách để chăm sóc từng loại da đạt hiệu quả cao và nhanh chóng nhất!', N'Tư vấn da', N'/Uploads/images/Advisory/front/1.jpg', N'<p>Với ph&aacute;i nữ, việc chăm s&oacute;c da l&agrave; v&ocirc; c&ugrave;ng quan trọng, để c&oacute; một l&agrave;n da đẹp, cần phải chăm s&oacute;c theo quy tr&igrave;nh. Dĩ nhi&ecirc;n, t&ugrave;y từng loại da m&agrave; c&oacute; c&aacute;ch chăm s&oacute;c kh&aacute;c nhau, kh&ocirc;ng n&ecirc;n chăm s&oacute;c t&ugrave;y tiện dẫn đến những hậu quả kh&ocirc;ng đ&aacute;ng c&oacute;. B&agrave;i viết n&agrave;y sẽ hướng dẫn cho c&aacute;c bạn c&aacute;ch để chăm s&oacute;c từng loại da đạt hiệu quả cao v&agrave; nhanh ch&oacute;ng nhất!</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/chamsocda2.jpg" /></p>

<h4>Những loại da thường gặp</h4>

<p>C&oacute; bao giờ bạn thắc mắc rằng tại sao da người đấy đẹp nhưng da m&igrave;nh th&igrave; kh&ocirc;ng? Tất cả l&agrave; do nội tiết tố g&acirc;y n&ecirc;n. Mỗi người mang một loại da kh&aacute;c nhau, c&oacute; 5 loại da cơ bản như sau:</p>

<ul>
	<li>Da thường</li>
	<li>Da kh&ocirc;</li>
	<li>Da dầu</li>
	<li>Da hỗn hợp</li>
	<li>Da nhạy cảm</li>
</ul>

<p>&nbsp;</p>

<p>Mỗi loại da c&oacute; một đặc t&iacute;nh ri&ecirc;ng biệt, v&iacute; dụ như da nhờn lu&ocirc;n l&agrave;m cho ch&uacute;ng ta c&oacute; cảm gi&aacute;c kh&oacute; chịu, bết r&iacute;t, da nhạy cảm th&igrave; lu&ocirc;n bị bong tr&oacute;c mỗi khi trời hanh kh&ocirc;, da hỗn hợp th&igrave; lại hay nổi mụn,... Để c&oacute; một l&agrave;n da đẹp kh&ocirc;ng tỳ vết, c&aacute;c bạn n&ecirc;n ph&acirc;n biệt loại da của m&igrave;nh trước ti&ecirc;n, sau đ&oacute;, sử dụng c&aacute;c c&aacute;ch chăm s&oacute;c da mặt ph&ugrave; hợp để c&oacute; thể sở hữu một l&agrave;n da trong mơ.</p>

<h4>Một số c&aacute;ch chăm s&oacute;c da mặt m&agrave; bạn n&ecirc;n biết:</h4>

<ol>
	<li><strong>Đối với da thường</strong>

	<p>Tuy da thường l&agrave; loại da kh&aacute; đẹp, nhưng cũng kh&ocirc;ng v&igrave; thế m&agrave; lơ l&agrave; đi việc chăm s&oacute;c. Bởi v&igrave; nếu bỏ b&ecirc; da l&acirc;u ng&agrave;y, da cũng c&oacute; thể trở n&ecirc;n l&atilde;o h&oacute;a, nổi mụn, thiếu ẩm,... ch&iacute;nh v&igrave; thế, những c&ocirc; n&agrave;ng sở hữu da thường n&ecirc;n d&ugrave;ng dưỡng ẩm h&agrave;ng ng&agrave;y để dưỡng da cũng như kem dưỡng ẩm, v&agrave; khi ra đường, đừng qu&ecirc;n thoa một lớp kem chống nắng để chống lại sự x&acirc;m hại từ tia cực t&iacute;m nh&eacute;.</p>
	<img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/chamsocda.jpg" /></li>
	<li><strong>Đối với da kh&ocirc;</strong>
	<p>Những ai sở hữu l&agrave;n da kh&ocirc; sẽ tho&aacute;t khỏi t&igrave;nh trạng bị mụn, nhưng thay v&agrave;o đ&oacute; th&igrave; lại nhanh ch&oacute;ng l&atilde;o h&oacute;a. Ch&iacute;nh v&igrave; thế, n&ecirc;n d&ugrave;ng c&aacute;c sản phẩm cấp ẩm, kh&oacute;a ẩm v&agrave; l&agrave;m ẩm để duy tr&igrave; l&agrave;n da tươi mới, mịn m&agrave;ng. Đặt biệt, sau khi trang điểm phải tẩy trang kỹ c&agrave;ng v&agrave; d&ugrave;ng những sản phẩm đem lại dưỡng chất s&acirc;u từ b&ecirc;n trong.</p>

	<p>Điều lưu &yacute; đối với những ai c&oacute; l&agrave;n da kh&ocirc; l&agrave; kh&ocirc;ng n&ecirc;n sử dụng sữa rửa mặt c&oacute; chất tẩy rửa mạnh, bởi v&igrave; ch&uacute;ng sẽ l&agrave;m cho t&igrave;nh trạng da bạn trở n&ecirc;n bong tr&oacute;c nặng, đau r&aacute;t. V&agrave; n&ecirc;n lưu &yacute; đối với mặt nạ đất s&eacute;t v&igrave; loại sản phẩm n&agrave;y sẽ l&agrave;m da bạn kh&ocirc; hơn. Bạn n&ecirc;n d&ugrave;ng m&aacute;y tạo độ ẩm kh&ocirc;ng kh&iacute; để cung cấp độ ẩm trong ph&ograve;ng, gi&uacute;p da bạn mịn m&agrave;ng hơn.</p>

	<p>Ngo&agrave;i ra, bạn c&oacute; thể thoa kem dưỡng l&ecirc;n mặt trước khi đi ngủ tầm 1 tiếng để gi&uacute;p da bạn trở n&ecirc;n mịn m&agrave;ng, khỏe mạnh hơn.</p>

	<p>&nbsp;</p>
	</li>
	<li><strong>Da dầu</strong>
	<p>Đối với da dầu, điều đầu ti&ecirc;n l&agrave; phải vệ sinh da sạch sẽ bằng c&aacute;ch sử dụng sữa rửa mặt đều đặn 2 lần/ ng&agrave;y để kh&ocirc;ng bị mất đi độ ẩm v&agrave; gi&uacute;p da sạch hơn. N&ecirc;n tr&aacute;nh rửa mặt bằng nước ấm để tr&aacute;nh t&igrave;nh trạng c&aacute;c tuyến nhờn c&oacute; thể hoạt động mạnh mẽ.</p>
	<img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/ruamat.jpg" />
	<p>Da dầu l&agrave; một loại da thiếu đi độ ẩm cao, cho n&ecirc;n bạn hạn chế d&ugrave;ng c&aacute;c sản phẩm c&oacute; chứa cồn, v&igrave; điều n&agrave;y sẽ gi&uacute;p da bạn tr&aacute;nh t&igrave;nh trạng bị kh&ocirc;. Thay v&agrave;o đ&oacute; l&agrave; sử dụng nước hoa hồng c&oacute; th&agrave;nh phần AHA hoặc Salicylic Acid để lấy đi lượng b&atilde; nhờn v&agrave; bụi bẩn tr&ecirc;n da.</p>

	<p>Bạn n&ecirc;n sử dụng những sản phẩm ở dạng nước hoặc dạng gel để dưỡng ẩm cho da, tr&aacute;nh t&igrave;nh trạng tắc nghẽn lỗ ch&acirc;n l&ocirc;ng. V&agrave; v&igrave; da dầu dễ bị mụn n&ecirc;n khuy&ecirc;n bạn n&ecirc;n d&ugrave;ng những sản phẩm c&oacute; chứa Retinoid, hoặc Benzoyl Peroxide, hay Salicylic Acid để hỗ trợ chữa trị mụn.</p>
	</li>
	<li><strong>Da hỗn hợp</strong>
	<p>Việc chăm s&oacute;c da hỗn hợp kh&aacute; phức tạp, v&igrave; loại da n&agrave;y vừa kh&ocirc; vừa dầu xuất hiện l&ecirc;n c&ugrave;ng một l&uacute;c cho n&ecirc;n bắt buộc phải t&aacute;ch ri&ecirc;ng c&aacute;c bước chăm s&oacute;c theo từng khu vực da. Những ai sở hữu loại da hỗn hợp th&igrave; n&ecirc;n sử dụng sản phẩm c&oacute; chứa Glycolic Acid, loại chất n&agrave;y hỗ trợ lấy đi lượng b&atilde; nhờn dư thừa tr&ecirc;n mặt v&agrave; loại bỏ tế b&agrave;o sừng, th&uacute;c đẩy qu&aacute; tr&igrave;nh sản sinh tế b&agrave;o mới cho khu&ocirc;n mặt.</p>
	</li>
	<li><strong>Da nhạy cảm</strong>
	<p>Da nhạy cảm l&agrave; l&agrave;n da rất kh&oacute; chăm s&oacute;c v&igrave; bản th&acirc;n n&oacute; kh&aacute; kh&oacute; chiều. Cho n&ecirc;n để chăm s&oacute;c l&agrave;n da n&agrave;y một c&aacute;ch hiệu quả, điều đầu ti&ecirc;n cần phải lập danh s&aacute;ch đen những th&agrave;nh phần g&acirc;y k&iacute;ch ứng l&agrave;n da. Khi c&oacute; &yacute; định mua bất kỳ d&ograve;ng mỹ phẩm n&agrave;o, cần test thử tr&ecirc;n tay trước xem c&oacute; phản ứng g&igrave; kh&ocirc;ng trước khi sử dụng. Điều quan trọng l&agrave; phải tẩy trang da thật sạch sẽ v&agrave; lựa chọn những sản phẩm th&acirc;n thiện với l&agrave;n da của bạn.</p>
	</li>
</ol>

<p>T&ugrave;y v&agrave;o từng loại da m&agrave; c&oacute; từng c&aacute;ch chăm s&oacute;c da kh&aacute;c nhau. Nếu x&aacute;c định sai loại da th&igrave; sẽ chọn sai sản phẩm v&agrave; g&oacute;p phần l&agrave;m hại cho da của ch&iacute;nh bạn. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao c&oacute; nhiều bạn đ&atilde; thực hiện rất b&agrave;i bản c&aacute;c quy tr&igrave;nh chăm s&oacute;c da nhưng da vẫn kh&ocirc;ng cải thiện v&agrave; c&oacute; chiều hướng tệ đi, khi bạn đ&atilde; am hiểu c&aacute;ch ph&acirc;n biệt c&aacute;c loại da th&igrave; việc chăm s&oacute;c da sẽ trở n&ecirc;n dễ d&agrave;ng hơn tr&ocirc;ng thấy.</p>

<p>Qua b&agrave;i viết n&agrave;y, hy vọng c&aacute;c bạn sẽ biết c&aacute;ch l&agrave;m thế n&agrave;o để chăm s&oacute;c da m&igrave;nh một c&aacute;ch tốt nhất, l&agrave;m đẹp cho bản th&acirc;n v&agrave; tự tin khi dạo phố. Xin cảm ơn đ&atilde; đ&oacute;n đọc b&agrave;i viết.</p>
', CAST(N'2019-07-30T14:27:19.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (32, N'Phân biệt các loại da', N'phan-biet-cac-loai-da', N'Da mặt luôn là một phần quan trọng nhất không thể nào lơ là, nhất là đối với phụ nữ. Với một làn da đẹp, ai cũng sẽ tự tin hơn khi bước ra đường, nhưng không phải ai sinh ra cũng có một làn da đẹp cả. Để có một làn da đẹp tuyệt đối, cần biết cách chăm sóc và bảo vệ chúng khỏi những tác nhân gây hại từ môi trường. Có rất nhiều vấn đề xoay quanh về da, nhưng trước tiên, nếu muốn biết cách khắc phục các vấn đề gây ảnh hưởng cho da thì ta cần biết cách phân biệt các loại da. Trong bài viết này, hãy cùng tìm hiểu xem có bao nhiêu loại da mặt nhé!', N'Tư vấn da', N'/Uploads/images/Advisory/front/2.jpg', N'<p>Da mặt lu&ocirc;n l&agrave; một phần quan trọng nhất kh&ocirc;ng thể n&agrave;o lơ l&agrave;, nhất l&agrave; đối với phụ nữ. Với một l&agrave;n da đẹp, ai cũng sẽ tự tin hơn khi bước ra đường, nhưng kh&ocirc;ng phải ai sinh ra c&oacute; một l&agrave;n da đẹp cả. Để c&oacute; một l&agrave;n da đẹp tuyệt đối, cần biết c&aacute;ch chăm s&oacute;c v&agrave; bảo vệ ch&uacute;ng khỏi những t&aacute;c nh&acirc;n g&acirc;y hại từ m&ocirc;i trường. C&oacute; rất nhiều vấn đề xoay quanh về da, nhưng trước ti&ecirc;n, nếu muốn biết c&aacute;ch khắc phục c&aacute;c vấn đề g&acirc;y ảnh hưởng cho da th&igrave; ta cần biết c&aacute;ch ph&acirc;n biệt c&aacute;c loại da. Trong b&agrave;i viết n&agrave;y, h&atilde;y c&ugrave;ng t&igrave;m hiểu xem c&oacute; bao nhi&ecirc;u loại da mặt nh&eacute;!</p>

<h4>Da thường</h4>

<div class="col-md-10 mb-4 mx-auto"><img alt="Da thường" class="h-auto w-100" src="/Content/Image/Advisory/dathuong.jpg" /></div>

<p>Da thường l&agrave; loại da dễ ph&acirc;n biệt nhất, th&ocirc;ng thường, ch&uacute;ng c&oacute; độ ẩm mướt nhẹ nh&agrave;ng,loại da n&agrave;y nh&igrave;n kh&ocirc;ng qu&aacute; kh&ocirc;, căng, nhưng cũng kh&ocirc;ng phải l&agrave; da b&oacute;ng nhờn, khi rửa mặt kh&ocirc;ng c&oacute; thay đổi đ&aacute;ng kể tr&ecirc;n da. Đ&acirc;y l&agrave; dấu hiệu cho thấy l&agrave;n da n&agrave;y rất khỏe v&agrave; c&oacute; độ c&acirc;n bằng tốt.</p>

<p>Bạn c&oacute; thể d&ugrave;ng giấy thấm dầu để thấm l&ecirc;n mặt xem thử c&oacute; bị ướt nhiều hay kh&ocirc;ng, nếu &iacute;t th&igrave; da của bạn l&agrave; một l&agrave;n da mọi người hằng mơ đến đấy.</p>

<h4>Da dầu</h4>

<div class="col-md-10 mb-4 mx-auto"><img alt="Da dầu" class="h-auto w-100" src="/Content/Image/Advisory/dadau.jpg" /></div>

<p>L&agrave; loại da phổ biến nhất, c&ograve;n gọi l&agrave; da nhờn. Đối với loại da n&agrave;y, c&aacute;ch ph&acirc;n biệt dễ nhất l&agrave; nh&igrave;n thấy da m&igrave;nh b&oacute;ng l&ecirc;n, chạm v&agrave;o c&oacute; cảm gi&aacute;c nhờn r&iacute;t, điểm nhờn nhiều nhất l&agrave; ở mũi, tr&aacute;n v&agrave; cằm. Đ&ocirc;i khi hai b&ecirc;n m&aacute; cũng c&oacute; thể tiết ra chất nhờn. Điều n&agrave;y l&agrave;m nguy cơ nổi mụn tăng cao bởi v&igrave; khi da tiết ra chất nhờn, c&aacute;c lỗ ch&acirc;n l&ocirc;ng gi&atilde;n nở ra v&agrave; tạo điều kiện cho vi khuẩn x&acirc;m nhập v&agrave; cư tr&uacute;, g&acirc;y n&ecirc;n mụn đầu đen hoặc mụn c&aacute;m, tuyến b&atilde; nhờn hoạt động kh&aacute; mạnh mẽ l&agrave;m da bạn c&oacute; thể nổi nhiều mụn hơn, nhất l&agrave; ở mũi v&agrave; tr&aacute;n.</p>

<p>Nếu bạn c&ograve;n nghi ngờ về l&agrave;n da của m&igrave;nh, bạn c&oacute; thể d&ugrave;ng giấy thấm dầu kiểm tra, nếu giấy thấm dầu ướt ở những v&ugrave;ng trọng điểm th&igrave; đ&iacute;ch thị da bạn thuộc kiểu da dầu rồi đấy!</p>

<h4>Da kh&ocirc;</h4>

<div class="col-md-10 mb-4 mx-auto"><img alt="Da khô" class="h-auto w-100" src="/Content/Image/Advisory/dakho.jpeg" /></div>

<p>Đối với l&agrave;n da kh&ocirc;, bạn lu&ocirc;n cảm thấy da mặt m&igrave;nh ở trong t&igrave;nh trạng căng l&ecirc;n, cảm gi&aacute;c sờ v&agrave;o kh&ocirc;ng mịn m&agrave;ng, đ&ocirc;i khi kh&ocirc; r&aacute;t kh&oacute; chịu, nhất l&agrave; v&agrave;o m&ugrave;a n&oacute;ng, da sẽ bị bong ra, nhiều nhất l&agrave; ở 2 b&ecirc;n c&aacute;nh mũi. Bởi v&igrave; bề mặt kh&aacute; sần v&agrave; kh&ocirc; n&ecirc;n dễ xuất hiện nếp nhăn sớm. V&agrave; khi bạn d&ugrave;ng kem dưỡng ẩm m&agrave; thấy n&oacute; thẩm thấu nhanh hơn b&igrave;nh thường, đ&oacute; ch&iacute;nh l&agrave; dấu hiệu của l&agrave;n da kh&ocirc; thiếu ẩm cần được chăm s&oacute;c.</p>

<p>Với những ai sở hữu l&agrave;n da kh&ocirc;, tốt nhất n&ecirc;n sử dụng kem hỗ trợ độ ẩm để gi&uacute;p da trở n&ecirc;n mịn m&agrave;ng, giảm thiểu t&igrave;nh trạng bong tr&oacute;c, đau r&aacute;t.</p>

<h4>Da hỗn hợp</h4>

<div class="col-md-10 mb-4 mx-auto"><img alt="Da hỗn hợp" class="h-auto w-100" src="/Content/Image/Advisory/dahonhop.jpg" /></div>

<p>C&oacute; thể n&oacute;i, da hỗn hợp l&agrave; loại da kh&aacute; phức tạp v&agrave; hơi kh&oacute; ph&acirc;n biệt đối với những loại da c&ograve;n lại, bởi v&igrave; bản chất của n&oacute; c&oacute; v&ugrave;ng dầu, v&ugrave;ng kh&ocirc; trải đều tr&ecirc;n c&ugrave;ng một gương mặt. Điều n&agrave;y khiến cho việc ph&acirc;n biệt da trở n&ecirc;n kh&oacute; khăn hơn, nếu v&ugrave;ng mũi bạn c&oacute; dầu nhưng hai m&aacute; bạn kh&ocirc; th&igrave; đ&iacute;ch thị bạn đang sở hữu một l&agrave;n da hỗn hợp rồi đấy.</p>

<p>Kh&ocirc;ng những thế, da hỗn hợp c&ograve;n được chia th&agrave;nh 2 loại như sau:</p>

<p>Hỗn hợp thi&ecirc;n dầu: tức l&agrave; l&agrave;n da c&oacute; nhiều dầu hơn ở v&ugrave;ng mũi v&agrave; v&ugrave;ng tr&aacute;n, cằm v&agrave; hai b&ecirc;n g&ograve; m&aacute;, c&ograve;n lại th&igrave; da kh&ocirc; thiếu ẩm.</p>

<p>Hỗn hợp thi&ecirc;n kh&ocirc;: Tr&aacute;i ngược với hỗn hợp thi&ecirc;n dầu, l&agrave;n da n&agrave;y c&oacute; độ dầu rất &iacute;t ở một v&agrave;i điểm, c&ograve;n lại ở trong t&igrave;nh trạng kh&ocirc; v&agrave; sần.</p>

<p>Đối với loại da n&agrave;y, nếu hỗn hợp thi&ecirc;n dầu th&igrave; n&ecirc;n mua sữa rửa mặt chống nhờn về d&ugrave;ng, c&ograve;n với hỗn hợp thi&ecirc;n kh&ocirc; th&igrave; n&ecirc;n mua dưỡng ẩm để bảo vệ độ đ&agrave;n hồi của da, chống l&atilde;o h&oacute;a sớm.</p>

<h4>Da nhạy cảm</h4>

<div class="col-md-10 mb-4 mx-auto"><img alt="Da nhạy cảm" class="h-auto w-100" src="/Content/Image/Advisory/danhaycam.jpg" /></div>

<p>Da nhạy cảm rất dễ bị tổn thương do t&aacute;c động từ m&ocirc;i trường v&agrave; kh&iacute; hậu xung quanh. V&agrave;o m&ugrave;a lạnh, da nhạy cảm thường bị bong tr&oacute;c, nhưng điều đặc biệt hơn ở loại da n&agrave;y l&agrave; n&oacute; mỏng đến nổi thấy được những đường m&aacute;u li ti ở 2 b&ecirc;n m&aacute;. Loại da n&agrave;y cực kỳ nhạy cảm dưới &aacute;nh mặt trời, dễ bị ch&aacute;y nắng, sạm đen v&agrave; c&oacute; thể bị r&aacute;t da.</p>

<p>Đối với l&agrave;n da nhạy cảm, ở bất cứ sự thay đổi n&agrave;o từ m&ocirc;i trường, l&agrave;n da n&agrave;y thường &iacute;t khi th&iacute;ch nghi v&agrave; bị k&iacute;ch ứng, thậm ch&iacute; cả nguồn nước kh&ocirc;ng ph&ugrave; hợp cũng l&agrave;m cho l&agrave;n da nổi mẩn ngứa kh&oacute; chịu. Cho n&ecirc;n những ai sở hữu loại da n&agrave;y n&ecirc;n ch&uacute; &yacute; dưỡng ẩm cho da v&agrave; d&ugrave;ng c&aacute;c loại kem tăng sức đề kh&aacute;ng cho da tr&aacute;nh khỏi những t&aacute;c động xấu từ ngoại cảnh.</p>

<p>C&oacute; thể n&oacute;i, đ&acirc;y l&agrave; 5 loại da ti&ecirc;u biểu m&agrave; c&aacute;c bạn cần nắm bắt được để c&oacute; thể ph&acirc;n biệt được da của m&igrave;nh. Đồng thời, t&igrave;m được loại kem ph&ugrave; hợp để dưỡng da v&agrave; khắc phục những t&igrave;nh trạng xấu tr&ecirc;n da mặt. Hy vọng b&agrave;i viết n&agrave;y sẽ đem lại nhiều điều bổ &iacute;ch cho những bạn n&agrave;o c&ograve;n đang băn khoăn m&igrave;nh c&oacute; loại da mặt n&agrave;o, hơn nữa, gi&uacute;p c&aacute;c bạn nữ bổ sung th&ecirc;m kiến thức về da mặt cũng như biết nhiều loại da hơn để c&oacute; thể bảo vệ da một c&aacute;ch đ&uacute;ng đắn v&agrave; hiệu quả nhất.</p>
', CAST(N'2019-07-30T14:28:12.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (33, N'Bí quyết làm trắng da dầu', N'bi-quyet-lam-trang-da-dau', N'Da dầu - nhờn là một loại da khiến cho chị em khá khó chịu, vì lúc nào cũng tiết ra bã nhờn nhất là tại vùng chữ T, khiến cho da dễ phát sinh mụn và có lỗ chân lông to. Nguyên nhân chính làm làn da bị nhờn - dầu là do ảnh hưởng từ môi trường, chế độ ăn uống và cái chính là sự hoạt động của lớp nhờn dưới da. Một phần là do yếu tố gen, lượng hormone có trong cơ thể và mức độ hoạt động của tuyến nhờn sẽ quyết định độ nhờn trên da nhiều hay ít. Để chăm sóc loại da này, bạn cần phải sử dụng nhiều yếu tố, và để làm làn da dầu - nhờn trở nên trắng sáng, có khá nhiều cách. Nhưng sau đây là 5 cách tiêu biểu giúp làn da trở nên trắng sáng một cách an toàn nhất.', N'Tư vấn da', N'/Uploads/images/Advisory/front/3.jpg', N'<p>Da dầu - nhờn l&agrave; một loại da khiến cho chị em kh&aacute; kh&oacute; chịu, v&igrave; l&uacute;c n&agrave;o cũng tiết ra b&atilde; nhờn nhất l&agrave; tại v&ugrave;ng chữ T, khiến cho da dễ ph&aacute;t sinh mụn v&agrave; c&oacute; lỗ ch&acirc;n l&ocirc;ng to. Nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m l&agrave;n da bị nhờn - dầu l&agrave; do ảnh hưởng từ m&ocirc;i trường, chế độ ăn uống v&agrave; c&aacute;i ch&iacute;nh l&agrave; sự hoạt động của lớp nhờn dưới da. Một phần l&agrave; do yếu tố gen, lượng hormone c&oacute; trong cơ thể v&agrave; mức độ hoạt động của tuyến nhờn sẽ quyết định độ nhờn tr&ecirc;n da nhiều hay &iacute;t. Để chăm s&oacute;c loại da n&agrave;y, bạn cần phải sử dụng nhiều yếu tố, v&agrave; để l&agrave;m l&agrave;n da dầu - nhờn trở n&ecirc;n trắng s&aacute;ng, c&oacute; kh&aacute; nhiều c&aacute;ch. Nhưng sau đ&acirc;y l&agrave; 5 c&aacute;ch ti&ecirc;u biểu gi&uacute;p l&agrave;n da trở n&ecirc;n trắng s&aacute;ng một c&aacute;ch an to&agrave;n nhất.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/dadau.jpg" /></p>

<h4>1. Đắp mặt nạ từ l&ograve;ng trắng trứng g&agrave; v&agrave; chanh</h4>

<p>L&ograve;ng trắng trứng g&agrave; c&oacute; chứa những vitamin gi&uacute;p da trắng s&aacute;ng, b&ecirc;n cạnh đ&oacute;, chanh gi&uacute;p bổ sung dưỡng chất cho da, nếu kết hợp l&ograve;ng trắng trứng g&agrave; v&agrave; chanh, sẽ tạo ra một loại mặt nạ gi&uacute;p cải thiện l&agrave;n da bạn nhanh ch&oacute;ng.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/long do trung.jpg" /></p>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>T&aacute;ch l&ograve;ng trắng trứng g&agrave;, cho th&ecirc;m v&agrave;i giọt chanh v&agrave;o v&agrave; trộn đều hỗn hợp, sau đ&oacute; thoa l&ecirc;n mặt, để trong khoảng 15-20 ph&uacute;t, sau đ&oacute; th&igrave; rửa sạch lại bằng nước ấm.</p>

<p>Nước cốt chanh v&agrave; l&ograve;ng trắng trứng sẽ gi&uacute;p bạn se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, tẩy sạch bụi bẩn v&agrave; chất nhờn tr&ecirc;n da, gi&uacute;p da s&aacute;ng l&ecirc;n từ từ một c&aacute;ch r&otilde; rệt nhất.</p>

<h4>2. Sử dụng mặt nạ l&agrave;m từ mật ong</h4>

<p>Mật ong từ xưa đến nay được xem l&agrave; một loại thần dược d&agrave;nh cho ph&aacute;i đẹp do c&oacute; chứa nhiều kho&aacute;ng chất tốt, mật ong cũng c&oacute; thể sử dụng để chăm s&oacute;c da nhờn.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat ong.jpg" /></p>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Thoa mật ong l&ecirc;n da, để trong khoảng 15 ph&uacute;t rồi rửa lại bằng nước ấm. Mỗi tuần bạn chỉ n&ecirc;n sử dụng 2 lần.</p>

<p>Ngo&agrave;i ra th&igrave; bạn cũng c&oacute; thể sử dụng bột yến mạch, 1 muỗng c&agrave; ph&ecirc; mật ong ấm trộn đều hỗn hợp. B&ocirc;i hỗn hợp n&agrave;y l&ecirc;n mặt trong khoảng 15-20 ph&uacute;t sau đ&oacute; rửa sạch bằng nước ấm. Điều n&agrave;y sẽ gi&uacute;p da trở n&ecirc;n sạch nhờn v&agrave; s&aacute;ng l&ecirc;n tr&ocirc;ng thấy.</p>

<h4>3. Mặt nạ chuối, mật ong v&agrave; t&aacute;o.</h4>

<p>Chuối, t&aacute;o, mật ong l&agrave; một trong những loại dưỡng chất kh&aacute; tốt cho cơ thể, ch&uacute;ng chứa nhiều vitamin. Cho n&ecirc;n khi sử dụng ch&uacute;ng l&agrave;m mặt nạ, ch&uacute;ng sẽ gi&uacute;p cho da bổ sung dưỡng chất, l&agrave;m sạch da v&agrave; loại bỏ được bụi bẩn, khiến da trắng s&aacute;ng l&ecirc;n tr&ocirc;ng thấy.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/dap mat na.jpg" /></p>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Nghiền t&aacute;o trộn với 3 th&igrave;a mật ong hoặc trộn chuối với 1 th&igrave;a mật ong. Để kh&ocirc; trong 20 ph&uacute;t v&agrave; rửa sạch bằng nước ấm, khăn ấm sẽ l&agrave;m loại bỏ được chất dầu, b&atilde; nhờn vượt qu&aacute; mức tr&ecirc;n da. Gi&uacute;p da mau l&ecirc;n tone.</p>

<h4>4. D&ugrave;ng sữa chua:</h4>

<p>Trong sữa chua c&oacute; chứa axit lactic, g&oacute;p phần gi&uacute;p tẩy tế b&agrave;o chết tr&ecirc;n da, gi&uacute;p hấp thụ lượng dầu thừa tr&ecirc;n mặt.</p>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Chỉ cần d&ugrave;ng 1 muỗng sữa chua triệt thoa đều l&ecirc;n mặt v&agrave; để n&oacute; trong khoảng 15 ph&uacute;t. Sau đ&oacute;, bạn c&oacute; thể rửa sạch bằng nước lạnh. Thực hiện mỗi ng&agrave;y một lần.</p>

<h4>5. Sử dụng c&agrave; chua:</h4>

<p>Cũng như dưa leo, c&agrave; chua c&oacute; thể gi&uacute;p bạn cải thiện được b&atilde; nhờn v&agrave; l&agrave;m trắng s&aacute;ng da hiệu quả. C&agrave; chua c&oacute; t&iacute;nh l&agrave;m m&aacute;t da, l&agrave;m s&aacute;ng da v&agrave; se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng nhanh ch&oacute;ng. Trong c&agrave; chua c&oacute; chứa vitamin C gi&uacute;p cho da sạch mụn. Th&ecirc;m v&agrave;o đ&oacute; th&igrave; c&aacute;c axit chứa trong c&agrave; chua cũng gi&uacute;p h&uacute;t sạch lượng dầu thừa.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/ca chua.jpg" /></p>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Cắt c&agrave; chua ra l&agrave;m đ&ocirc;i v&agrave; ch&agrave; l&ecirc;n mặt của bạn. Bạn n&ecirc;n để n&oacute; tr&ecirc;n da trong khoảng 15 ph&uacute;t để vitamin C ngấm v&agrave;o da v&agrave; nu&ocirc;i dưỡng da. Sau đ&oacute;, rửa sạch da mặt bằng nước lạnh, vỗ nhẹ cho da kh&ocirc; r&aacute;o v&agrave; sử dụng th&ecirc;m một loại kem dưỡng ẩm m&agrave; bạn cảm thấy ph&ugrave; hợp cho da của bạn.</p>

<p>Để những phương ph&aacute;p tr&ecirc;n hiệu quả, điều quan trọng nhất l&agrave; bạn cần sử dụng loại sữa rửa mặt tốt để l&agrave;m sạch da v&agrave; g&oacute;p phần loại bỏ b&atilde; nhờn tr&ecirc;n da mặt, gi&uacute;p c&aacute;c dưỡng chất được thẩm thấu, ti&ecirc;u biểu như <strong>Sữa rửa mặt trắng da BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo</strong>, c&oacute; chiết xuất từ thi&ecirc;n nhi&ecirc;n với th&agrave;nh phần ch&iacute;nh l&agrave; đ&ocirc;ng tr&ugrave;ng hạ thảo qu&yacute; hiếm. H&agrave;ng ng&agrave;y rửa mặt 2 lần, dưỡng chất từ sữa rữa mặt sẽ thấm s&acirc;u v&agrave;o b&ecirc;n trong, hỗ trợ nu&ocirc;i dưỡng l&agrave;n da hiệu quả.</p>

<p>Bất kỳ loại da n&agrave;o cũng c&oacute; những c&aacute;ch chăm s&oacute;c kh&aacute;c nhau. Nhưng thay v&igrave; d&ugrave;ng kem để cải thiện l&agrave;n da, bạn n&ecirc;n sử dụng bằng c&aacute;c biện ph&aacute;p thi&ecirc;n nhi&ecirc;n, vừa an to&agrave;n lại vừa hiệu quả. Tuy nhi&ecirc;n, bạn phải ki&ecirc;n tr&igrave;, bởi v&igrave; n&oacute; sẽ kh&ocirc;ng gi&uacute;p l&agrave;n da bạn s&aacute;ng l&ecirc;n ngay m&agrave; bổ sung dưỡng chất từ b&ecirc;n trong, s&aacute;ng l&ecirc;n từ từ v&agrave; l&agrave;m da trở n&ecirc;n chắc khỏe hơn tr&ocirc;ng thấy.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; 5 c&aacute;ch chăm s&oacute;c v&agrave; l&agrave;m s&aacute;ng da nhờn - dầu cho bạn đọc tham khảo, hi vọng qua b&agrave;i viết n&agrave;y, mọi người sẽ c&oacute; th&ecirc;m kiến thức trong việc chăm s&oacute;c da mặt, l&agrave;m đẹp cho bản th&acirc;n. Cảm ơn c&aacute;c bạn đ&atilde; theo d&otilde;i b&agrave;i viết tr&ecirc;n.</p>
', CAST(N'2019-07-30T14:29:14.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (34, N'Bí quyết làm trắng da hỗn hợp', N'bi-quyet-lam-trang-da-hon-hop', N'Da hỗn hợp được cho là một trong 5 loại da khá phức tạp, bởi vì trên da mặt cùng xuất hiện vùng da khô và vùng da dầu. Thông thường, để chăm sóc da hỗn hợp và làm sáng loại da này thường tốn khá nhiều bước. Sau đây là tổng hợp 5 cách giúp da hỗn hợp trở nên trắng sáng hơn, đồng thời giúp da trở nên khỏe mạnh. Mời các bạn cùng đón đọc bài viết sau:', N'Tư vấn da', N'/Uploads/images/Advisory/front/4.jpg', N'<p>Da hỗn hợp được cho l&agrave; một trong 5 loại da kh&aacute; phức tạp, bởi v&igrave; tr&ecirc;n da mặt c&ugrave;ng xuất hiện v&ugrave;ng da kh&ocirc; v&agrave; v&ugrave;ng da dầu. Th&ocirc;ng thường, để chăm s&oacute;c da hỗn hợp v&agrave; l&agrave;m s&aacute;ng loại da n&agrave;y thường tốn kh&aacute; nhiều bước. Sau đ&acirc;y l&agrave; tổng hợp 5 c&aacute;ch gi&uacute;p da hỗn hợp trở n&ecirc;n trắng s&aacute;ng hơn, đồng thời gi&uacute;p da trở n&ecirc;n khỏe mạnh. Mời c&aacute;c bạn c&ugrave;ng đ&oacute;n đọc b&agrave;i viết sau:</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/chamsocda.jpg" /></p>

<h4>1.Sử dụng nước hoa hồng:</h4>

<p>Bạn c&oacute; thể mua nước hoa hồng c&oacute; sẵn hoặc l&agrave;m nước hoa hồng tại nh&agrave;, bởi v&igrave; n&oacute; mang lại hiệu quả ngang nhau.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/nuoc hoa hong.jpg" /></p>

<h5><strong>Nguy&ecirc;n liệu cần chuẩn bị:</strong></h5>

<ul>
	<li>Nước hoa hồng</li>
	<li>Mật ong</li>
	<li>Sữa chua nguy&ecirc;n chất</li>
	<li>1 b&ocirc;ng hồng tươi</li>
</ul>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Đầu ti&ecirc;n, bạn ng&acirc;m b&ocirc;ng hồng tươi v&agrave;o một ch&eacute;n nước nhỏ trong 5 ph&uacute;t. Tiếp theo, bỏ b&ocirc;ng hồng ra ngo&agrave;i, tiếp đ&oacute;, th&ecirc;m v&agrave;o ch&eacute;n nước một th&igrave;a c&agrave; ph&ecirc; nước hoa hồng c&ugrave;ng 1 muỗng sữa chua nguy&ecirc;n chất v&agrave; một th&igrave;a mật ong. Sau đ&oacute; th&igrave; trộn đều hỗn hợp n&agrave;y l&ecirc;n.</p>

<p>Bạn c&oacute; thể d&ugrave;ng hỗn hợp n&agrave;y đắp l&ecirc;n mặt trong khoảng 10 ph&uacute;t. Sau đ&oacute;, rửa mặt thật sạch bằng nước ấm.</p>

<p>C&aacute;ch n&agrave;y khiến cho da mặt trắng l&ecirc;n một c&aacute;ch tự nhi&ecirc;n, hỗn hợp từ nước hoa hồng cũng ph&ugrave; hợp với nhiều người nhờ v&agrave;o t&aacute;c dụng tự nhi&ecirc;n. Kh&ocirc;ng hề bị k&iacute;ch ứng c&ugrave;ng m&ugrave;i hương kh&aacute; dễ chịu.</p>

<h4>2. L&agrave;m mặt nạ trắng da với bột yến mạch:</h4>

<p>Mật ong từ xưa đến nay được xem l&agrave; một loại thần dược d&agrave;nh cho ph&aacute;i đẹp do c&oacute; chứa nhiều kho&aacute;ng chất tốt, mật ong cũng c&oacute; thể sử dụng để chăm s&oacute;c da nhờn.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/bot yen mach.jpg" /></p>

<h5><strong>Nguy&ecirc;n liệu cần chuẩn bị:</strong></h5>

<ul>
	<li>Bột yến mạch v&agrave; mật ong nguy&ecirc;n chất.</li>
</ul>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Chỉ cần trộn đều 2 nguy&ecirc;n liệu đ&atilde; được chuẩn bị sẵn cho thật mịn v&agrave; thoa đều l&ecirc;n da trong 20 ph&uacute;t. Sau đ&oacute;, chỉ cần rửa sạch lại bằng nước ấm l&agrave; được. Sau khi bạn l&agrave;m sạch da với nước, bạn sẽ lập tức cảm nhận được sự mịn m&agrave;ng c&oacute; tr&ecirc;n da mặt.</p>

<h4>4. Hỗn hợp khoai t&acirc;y:</h4>

<p>Khoai t&acirc;y c&oacute; chứa nhiều th&agrave;nh phần c&oacute; lợi cho da, bao gồm c&aacute;c loại vitamin A, E, C, B1, B2, kho&aacute;ng chất,&hellip; Đặc biệt l&agrave; khi bạn kết hợp hỗn hợp khoai t&acirc;y với mật ong hay sữa chua th&igrave; hiệu quả l&agrave;m trắng da sẽ c&agrave;ng cao, đặc biệt l&agrave; khoai t&acirc;y c&ograve;n gi&uacute;p x&oacute;a mờ vết th&acirc;m sạm v&agrave; tẩy tế b&agrave;o chết một c&aacute;ch hiệu quả.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/khoai tay.jpg" /></p>

<h5><strong>Nguy&ecirc;n liệu cần chuẩn bị:</strong></h5>

<ul>
	<li>1 củ khoai t&acirc;y</li>
	<li>2 th&igrave;a sữa chua kh&ocirc;ng đường</li>
	<li>1 th&igrave;a mật ong nguy&ecirc;n chất</li>
	<li>b&aacute;t v&agrave; th&igrave;a để trộn</li>
</ul>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Khoai t&acirc;y sơ chế, gọi vỏ v&agrave; cắt l&aacute;t, sau đ&oacute; xay nhuyễn c&ugrave;ng 1 quả c&agrave; chua đ&atilde; rửa sạch trước đ&oacute;. Sau khi xay nhuyễn hỗn hợp, tiếp tục trộn ch&uacute;ng với sữa chua kh&ocirc;ng đường v&agrave; mật ong nguy&ecirc;n chất ra một chiếc b&aacute;t lớn, d&ugrave;ng th&igrave;a đảo cho đều tay, l&agrave;m cho c&aacute;c nguy&ecirc;n liệu được h&ograve;a quyện v&agrave;o nhau. Sau đ&oacute; bạn sử dụng hỗn hợp n&agrave;y l&agrave;m mặt nạ, thư gi&atilde;n trong v&ograve;ng 30 ph&uacute;t. Một tuần sử dụng &iacute;t nhất 2 lần sẽ gi&uacute;p bạn c&oacute; l&agrave;n da trắng s&aacute;ng.</p>

<h4>5. L&agrave;m trắng da từ c&aacute;c loại kem dưỡng</h4>

<p>Hiện nay tr&ecirc;n thị trường c&oacute; kh&aacute; nhiều loại kem dưỡng gi&uacute;p bạn l&agrave;m s&aacute;ng da hiệu quả. Trong số đ&oacute; kh&ocirc;ng thể kh&ocirc;ng nhắc đến <strong>Kem trắng da mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo</strong> với chiết xuất từ đ&ocirc;ng tr&ugrave;ng hạ thảo, c&oacute; c&ocirc;ng dụng chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da, chống l&atilde;o h&oacute;a, l&agrave;m đầy r&atilde;nh nhăn, gi&uacute;p da trở n&ecirc;n căng b&oacute;ng, s&aacute;ng mịn v&agrave; hồng h&agrave;o. Th&ecirc;m v&agrave;o đ&oacute;, nếu muốn đẩy nhanh hiệu quả khi d&ugrave;ng kem, h&atilde;y d&ugrave;ng kết hợp với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri, gi&uacute;p da s&aacute;ng mịn l&ecirc;n nhanh ch&oacute;ng.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/kem duong.jpg" /></p>

<p>Đối với những ai muốn chăm s&oacute;c da to&agrave;n th&acirc;n, <strong> Kem trắng da to&agrave;n th&acirc;n BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo </strong> sẽ gi&uacute;p cho l&agrave;n da của bạn trở n&ecirc;n ho&agrave;n hảo. Với c&aacute;c th&agrave;nh phần chiết xuất từ thi&ecirc;n nhi&ecirc;n c&oacute; chứa Methylparaben, Probylparaben, nu&ocirc;i dưỡng l&agrave;n da từ b&ecirc;n trong, đẩy l&ugrave;i l&atilde;o h&oacute;a, gi&uacute;p da trở n&ecirc;n s&aacute;ng hơn v&agrave; đẹp hơn.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; 5 c&aacute;ch l&agrave;m s&aacute;ng da cực kỳ hiệu quả được tổng hợp từ nhiều nguồn, mong c&aacute;c bạn sẽ c&oacute; thể c&oacute; th&ecirc;m kiến thức về việc chăm s&oacute;c v&agrave; nu&ocirc;i dưỡng l&agrave;n da trở n&ecirc;n trắng s&aacute;ng</p>
', CAST(N'2019-07-30T14:30:45.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (35, N'Bí quyết làm trắng da khô', N'bi-quyet-lam-trang-da-kho', N'Da khô là loại da mỏng manh nhất trong tất cả các loại da, bởi nó rất dễ bị tổn thương do thời tiết. Khi trời chuyển mùa cũng là lúc da hứng chịu nhiều tổn thương nhất, nó trở nên khô hơn, nứt nẻ và gây đau rát. Và đối với loại da khô này, không phải ai cũng biết cách chăm sóc và dưỡng trắng. Bài viết này sẽ tổng hợp một số cách dưỡng trắng và nuôi dưỡng da khô cho các chị em phụ nữ cùng tham khảo.', N'Tư vấn da', N'/Uploads/images/Advisory/front/5.jpg', N'<p>Da kh&ocirc; l&agrave; loại da mỏng manh nhất trong tất cả c&aacute;c loại da, bởi n&oacute; rất dễ bị tổn thương do thời tiết. Khi trời chuyển m&ugrave;a cũng l&agrave; l&uacute;c da hứng chịu nhiều tổn thương nhất, n&oacute; trở n&ecirc;n kh&ocirc; hơn, nứt nẻ v&agrave; g&acirc;y đau r&aacute;t. V&agrave; đối với loại da kh&ocirc; n&agrave;y, kh&ocirc;ng phải ai cũng biết c&aacute;ch chăm s&oacute;c v&agrave; dưỡng trắng. B&agrave;i viết n&agrave;y sẽ tổng hợp một số c&aacute;ch dưỡng trắng v&agrave; nu&ocirc;i dưỡng da kh&ocirc; cho c&aacute;c chị em phụ nữ c&ugrave;ng tham khảo.</p>

<h4>1. L&agrave;m trắng da cho da kh&ocirc; bằng mặt nạ trứng g&agrave;</h4>

<p>Biểu hiện của l&agrave;n da kh&ocirc; thường kh&aacute; dễ nhận ra, đ&oacute; ch&iacute;nh l&agrave; da bị kh&ocirc; r&aacute;p, bong tr&oacute;c l&ecirc;n vảy trắng, điều n&agrave;y l&agrave;m bạn tự ti khi ra đường.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na.jpg" /></p>

<p>Tuy nhi&ecirc;n, điều n&agrave;y sẽ ho&agrave;n to&agrave;n được cải thiện nếu bạn d&ugrave;ng phương ph&aacute;p dưỡng da bằng trứng g&agrave;, mật ong, dầu &ocirc; liu v&agrave; vitamin E, đ&acirc;y được xem l&agrave; một hỗn hợp dưỡng trắng da hiệu quả. C&aacute;ch l&agrave;m như sau:</p>

<p>Sử dụng 1 l&ograve;ng đỏ trứng g&agrave;, c&ugrave;ng với 1 th&igrave;a mật ong, nửa muỗng dầu &ocirc; liu v&agrave; 1 vi&ecirc;n vitamin E, trộn đều hỗn hợp n&agrave;y l&ecirc;n, sau đ&oacute; thoa l&ecirc;n da v&agrave; để trong khoảng 15 ph&uacute;t rồi rửa sạch với nước ấm, những dưỡng chất c&oacute; trong hỗn hợp sẽ thấm s&acirc;u v&agrave;o da, l&agrave;m tăng độ ẩm cho da v&agrave; l&agrave;m da rạng ngời hơn tr&ocirc;ng thấy chỉ sau 2 tuần sử dụng.</p>

<h4>2. Mặt nạ l&agrave;m từ khoai t&acirc;y</h4>

<p>Th&agrave;nh phần ch&iacute;nh trong khoai t&acirc;y l&agrave; Vitamin C, loại vitamin n&agrave;y kh&aacute; tốt cho da kh&ocirc;, gi&uacute;p l&agrave;m trắng v&agrave; cung cấp độ ẩm cho da, khi bạn kết hợp n&oacute; với một số loại nguy&ecirc;n liệu kh&aacute;c th&igrave; hiệu quả l&agrave;m trắng da cũng như cải thiện l&agrave;n da kh&ocirc; cũng trở n&ecirc;n đ&aacute;ng kể hơn.</p>

<p>C&aacute;ch l&agrave;m trắng da từ khoai t&acirc;y cũng kh&aacute; đơn giản, chỉ cần luộc v&agrave; b&oacute;c vỏ khoai t&acirc;y đi, sau đ&oacute; nghiền mịn trộn với 1 th&igrave;a mật ong v&agrave; 1 th&igrave;a nước cốt chanh cho n&oacute; sệt v&agrave; h&ograve;a v&agrave;o nhau. Sau đ&oacute;, bạn h&atilde;y thoa hỗn hợp n&agrave;y l&ecirc;n da mặt, giữ n&oacute; trong khoảng 10 ph&uacute;t cho n&oacute; thấm v&agrave;o da rồi rửa lại bằng nước ấm</p>

<h4>3. Mặt nạ l&agrave;m trắng da chiết xuất từ bơ</h4>

<p>Th&agrave;nh phần chứa trong bơ bao gồm Vitamin E v&agrave; Vitamin A, hỗ trợ cho da khỏe mạnh. Bởi v&igrave; da kh&ocirc; được xem l&agrave; một trong những loại da kh&aacute; yếu v&agrave; dễ tổn thương. Bơ gi&uacute;p chị em bổ sung được đủ lượng nước cho da, gi&uacute;p l&agrave;m da mềm mịn v&agrave; g&oacute;p phần l&agrave;m da trắng s&aacute;ng. <img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na bo.jpg" /> Điều bạn cần l&agrave;m chỉ l&agrave; trộn bơ với 1 th&igrave;a mật ong, sau đ&oacute; đắp l&ecirc;n da mặt, để trong v&ograve;ng 15 ph&uacute;t, sau đ&oacute; rửa sạch bằng nước ấm. Sử dụng đều đặn ng&agrave;y một lần, gi&uacute;p da bạn trở n&ecirc;n mịn m&agrave;ng, x&oacute;a bỏ th&acirc;m n&aacute;m v&agrave; trắng l&ecirc;n tr&ocirc;ng thấy.</p>

<h4>4. Mặt nạ chuối l&agrave;m trắng cho da bị kh&ocirc;</h4>

<p>Theo nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia dinh dưỡng th&igrave; trong chuối c&oacute; chứa kh&aacute; nhiều vitamin, đặc biệt l&agrave; độ ẩm trong chuối sẽ gi&uacute;p cho l&agrave;n da kh&ocirc; của bạn trở n&ecirc;n mềm mịn hơn tr&ocirc;ng thấy.</p>

<h5>C&aacute;ch l&agrave;m mặt nạ chuối:</h5>

<p>Bạn trộn chuối đ&atilde; nghiền c&ugrave;ng với 2 muỗng sữa chua kh&ocirc;ng đường để tạo th&agrave;nh một hỗn hợp s&aacute;nh mịn, sau đ&oacute; th&igrave; thoa đều l&ecirc;n da mặt, giữ trong khoảng 10 ph&uacute;t v&agrave; rửa lại bằng nước sạch. Hằng ng&agrave;y trước khi đi ngủ, bạn n&ecirc;n sử dụng loại mặt nạ n&agrave;y để gi&uacute;p da khỏe mạnh v&agrave; trắng s&aacute;ng.</p>

<h4>5. Sử dụng c&aacute;c loại mỹ phẩm chuy&ecirc;n dụng cho da kh&ocirc;</h4>

<p>Ng&agrave;y nay tr&ecirc;n thị trường, c&aacute;c loại mỹ phẩm được b&agrave;y b&aacute;n tr&agrave;n lan với nhiều nh&atilde;n h&agrave;ng kh&aacute;c nhau, nhưng để t&igrave;m cho m&igrave;nh một loại mỹ phẩm ưng &yacute; v&agrave; ph&ugrave; hợp với l&agrave;n da th&igrave; kh&ocirc;ng phải ai cũng đủ khả năng để t&igrave;m được. Chị em phụ nữ hiện nay ưa d&ugrave;ng những d&ograve;ng sản phẩm chiết xuất từ thi&ecirc;n nhi&ecirc;n bởi hoạt t&iacute;nh trong n&oacute; kh&ocirc;ng l&agrave;m ảnh hưởng đến sức khỏe cũng như kh&ocirc;ng g&acirc;y n&ecirc;n t&aacute;c dụng phụ cho da mặt. Một trong số đ&oacute; phải kể đến Serum trắng da mặt BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ những sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/kem duong.jpg" /></p>

<p>Sản phẩm c&oacute; Tanin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho l&agrave;n da khỏe mạnh v&agrave; trắng s&aacute;ng.</p>

<p>Loại serum n&agrave;y c&oacute; thể bổ sung dưỡng chất cho da kh&ocirc;, nu&ocirc;i dưỡng s&acirc;u từ b&ecirc;n trong v&agrave; gi&uacute;p da c&oacute; đủ độ ẩm cần thiết, kh&ocirc;ng bị bong tr&oacute;c do ảnh hưởng bởi thời tiết nữa.</p>

<p>Ngo&agrave;i ra, bạn cũng n&ecirc;n sử dụng kết hợp với sữa rửa mặt l&agrave;m trắng da white face shower gel, c&oacute; chiết xuất từ l&aacute; tr&agrave; xanh, gi&uacute;p chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn, loại bỏ được những sắc tố đen v&agrave; nu&ocirc;i dưỡng da s&acirc;u từ b&ecirc;n trong, ngăn ngừa được sự ph&aacute;t triển của tế b&agrave;o ung thư da.Th&agrave;nh phần chứa trong sữa rửa mặt bao gồm tanin, vitamin v&agrave; kho&aacute;ng chất gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, trị mụn v&agrave; ngừa th&acirc;m hiệu quả, tăng độ đ&agrave;n hồi v&agrave; gi&uacute;p da khỏe mạnh.</p>

<p>Hi vọng qua b&agrave;i viết n&agrave;y, bạn sẽ c&oacute; c&aacute;i nh&igrave;n to&agrave;n diện hơn về c&aacute;ch chăm s&oacute;c da mặt, gi&uacute;p việc chăm s&oacute;c da trở n&ecirc;n hiệu quả hơn.</p>
', CAST(N'2019-07-30T14:32:11.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (36, N'Bí quyết làm trắng da nhạy cảm', N'bi-quyet-lam-trang-da-nhay-cam', N'Da nhạy cảm là một loại da không quá hiếm gặp đối với các chị em phụ nữ. Bởi vì đặc tính của da yếu nên rất dễ bị tổn thương từ môi trường. Một số biểu hiện của da nhạy cảm thường là: nổi mẩn đỏ, làn da thường xuyên khô tróc vảy, ngứa ngáy, đỏ ửng lên khi tiếp xúc với chất lạ. Làn da này cũng cực kỳ khó khi dưỡng bởi vì không biết nó sẽ dị ứng với những thành phần nào. Bài viết này sẽ giới thiệu đến các bạn một số cách chăm sóc da nhạy cảm, mong rằng đây sẽ là những thông tin hữu ích cho độc giả tham khảo thêm.', N'Tư vấn da', N'/Uploads/images/Advisory/front/6.jpg', N'<p>Da nhạy cảm l&agrave; một loại da kh&ocirc;ng qu&aacute; hiếm gặp đối với c&aacute;c chị em phụ nữ. Bởi v&igrave; đặc t&iacute;nh của da yếu n&ecirc;n rất dễ bị tổn thương từ m&ocirc;i trường. Một số biểu hiện của da nhạy cảm thường l&agrave;: nổi mẩn đỏ, l&agrave;n da thường xuy&ecirc;n kh&ocirc; tr&oacute;c vảy, ngứa ng&aacute;y, đỏ ửng l&ecirc;n khi tiếp x&uacute;c với chất lạ. L&agrave;n da n&agrave;y cũng cực kỳ kh&oacute; khi dưỡng bởi v&igrave; kh&ocirc;ng biết n&oacute; sẽ dị ứng với những th&agrave;nh phần n&agrave;o. B&agrave;i viết n&agrave;y sẽ giới thiệu đến c&aacute;c bạn một số c&aacute;ch chăm s&oacute;c da nhạy cảm, mong rằng đ&acirc;y sẽ l&agrave; những th&ocirc;ng tin hữu &iacute;ch cho độc giả tham khảo th&ecirc;m.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/lan da dep.jpg" /></p>

<h4>1. L&agrave;m mặt nạ trắng da nhạy cảm từ quả l&ecirc;</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na qua le.jpg" /></p>

<p>L&ecirc; l&agrave; một loại quả chứa nhiều vitamin như A, C, E, c&oacute; t&iacute;nh m&aacute;t v&agrave; kh&ocirc;ng g&acirc;y b&agrave;o m&ograve;n, k&iacute;ch ứng da. C&ocirc;ng thức để l&agrave;m mặt nạ:</p>

<p>Sử dụng nước &eacute;p nửa quả l&ecirc; gọt vỏ c&ugrave;ng &frac12; th&igrave;a sữa tươi kh&ocirc;ng đường, sau đ&oacute; sử dụng b&ocirc;ng thấm hỗn hợp n&agrave;y b&ocirc;i đều l&ecirc;n da trước khi ngủ. Sử dụng tối thiểu 2 lần/ tuần để đem lại hiệu quả tốt nhất.</p>

<h4>2. L&agrave;m trắng da nhạy cảm từ bơ v&agrave; trứng g&agrave;</h4>

<p>Quả bơ chứa nhiều dưỡng chất l&agrave;nh t&iacute;nh hỗ trợ cho l&agrave;n da khỏe mạnh, c&ugrave;ng với l&ograve;ng trắng trứng g&agrave; sẽ gi&uacute;p l&agrave;n da hồi phục khỏi những t&aacute;c động xấu của m&ocirc;i trường, đồng thời gi&uacute;p l&agrave;n da them sang khỏe. C&aacute;ch l&agrave;m: Sử dụng hỗn hợp bơ ch&iacute;n v&agrave; l&ograve;ng trắng trứng trộn đều. Sau đ&oacute; d&ugrave;ng tay sạch hoặc cọ đắp một lớp hỗn hợp l&ecirc;n da, thư gi&atilde;n trong v&ograve;ng 20-30 ph&uacute;t v&agrave; rửa lại bằng nước sạch. Thực hiện từ 2-3 lần/tuần để c&oacute; kết quả tốt nhất.</p>

<h4>3. Mặt nạ từ sữa tươi, d&acirc;u t&acirc;y cho da nhạy cảm:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na dau sua tuoi.jpg" /></p>

<h5><strong>Nguy&ecirc;n liệu:</strong></h5>

<ul>
	<li>2-3 tr&aacute;i d&acirc;u t&acirc;y nghiền n&aacute;t</li>
	<li>1 muỗng c&agrave; ph&ecirc; mật ong</li>
	<li>1 muỗng canh sữa tươi kh&ocirc;ng đường.</li>
</ul>

<p>C&aacute;ch l&agrave;m: Trộn c&aacute;c thứ tr&ecirc;n th&agrave;nh một loại hỗn hợp, sau đ&oacute;, thoa l&ecirc;n mặt v&agrave; giữ trong 15 ph&uacute;t, sau c&ugrave;ng l&agrave; rửa lại bằng nước ấm. Loại mặt nạ n&agrave;y sẽ gi&uacute;p cho da bạn trở n&ecirc;n mịn m&agrave;ng v&agrave; trắng s&aacute;ng, tăng cường độ ẩm cho l&agrave;n da.</p>

<h4>4. Dưỡng da nhạy cảm bằng sữa chua.</h4>

<p>Sữa chua c&oacute; chứa c&aacute;c th&agrave;nh phần photpho, canxi, protein v&agrave; vitamin B2, kh&ocirc;ng những tốt cho hệ ti&ecirc;u h&oacute;a m&agrave; c&ograve;n hỗ trợ dưỡng da cho chị em. Kh&ocirc;ng tốn tiền triệu để mua mỹ phẩm, chỉ cần mua sữa chua về trữ trong tủ lạnh l&agrave; bạn đ&atilde; c&oacute; một lọ mỹ phẩm thượng hạng gi&uacute;p da bạn trắng s&aacute;ng.</p>

<h5><strong>Một số c&aacute;ch l&agrave;m kem dưỡng da bằng sữa chua:</strong></h5>

<p>Sử dụng sữa chua kh&ocirc;ng đường đắp trực tiếp l&ecirc;n mặt từ 10-15 ph&uacute;t, sau đ&oacute; rửa mặt bằng nước ấm. Nếu da bạn kh&ocirc;ng thể sử dụng bất kỳ loại mỹ phẩm n&agrave;o th&igrave; sữa chua l&agrave; một loại dưỡng chất ho&agrave;n hảo kh&ocirc;ng g&acirc;y k&iacute;ch ứng da. Giups se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng v&agrave; l&agrave;m s&aacute;ng da mặt.</p>

<p>Đối với những ai bị ch&aacute;y nắng khi đi ngo&agrave;i đường, chỉ cần pha sữa chua với mật ong đắp l&ecirc;n mặt khoảng 15 ph&uacute;t, sau đ&oacute; rửa sạch bằng nước lạnh, t&igrave;nh trạng tr&ecirc;n sẽ được cải thiện đ&aacute;ng kể.</p>

<h4>5. Mặt nạ c&agrave; rốt</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/dap mat na 2.jpg" /></p>

<h5><strong>Chuẩn bị:</strong></h5>

<ul>
	<li><em>1 th&igrave;a sinh tố c&agrave; rốt</em></li>
	<li><em>1 th&igrave;a sinh tố nho</em></li>
	<li><em>1 th&igrave;a bột l&uacute;a mạch</em></li>
	<li><em>1 quả l&ecirc; xay nhuyễn</em></li>
</ul>

<p>C&aacute;ch l&agrave;m: trộn tất cả những nguy&ecirc;n liệu tr&ecirc;n th&agrave;nh hỗn hợp rồi đun c&ugrave;ng nước ấm, sau đ&oacute; đắp mặt nạ v&agrave; nằm thư gi&atilde;n trong v&ograve;ng 20 ph&uacute;t. D&ugrave;ng khăn giấy mềm lau nhẹ, kh&ocirc;ng rửa lại bằng nước.</p>

<p>L&agrave;n da nhạy cảm l&agrave; một l&agrave;n da đỏng đảnh, ch&iacute;nh v&igrave; vậy n&ecirc;n n&oacute; rất dễ l&ecirc;n mụn hay k&iacute;ch ứng. Ngo&agrave;i việc sử dụng những liệu ph&aacute;p từ thi&ecirc;n nhi&ecirc;n, c&aacute;c chị em n&ecirc;n chọn cho m&igrave;nh những loại mỹ phẩm c&oacute; chiết xuất từ thi&ecirc;n nhi&ecirc;n để cải thiện l&agrave;n da của m&igrave;nh. Rửa mặt đ&uacute;ng c&aacute;ch, khoa học cũng l&agrave; một trong những điều gi&uacute;p l&agrave;n da của bạn trở n&ecirc;n s&aacute;ng mịn hơn. Bạn n&ecirc;n lựa chọn cho m&igrave;nh một loại sữa rửa mặt c&oacute; chiết xuất từ thi&ecirc;n nhi&ecirc;n, ti&ecirc;u biểu như sữa rửa mặt white face shower gel, loại n&agrave;y chống k&iacute;ch ứng da kh&aacute; tốt v&agrave; chống vi&ecirc;m da hiệu quả. NGo&agrave;i ra, nếu muốn một l&agrave;n da trắng mịn kh&ocirc;ng t&igrave; vết, h&atilde;y t&igrave;m đến sữa tắm trắng cấp tốc <strong>BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo</strong> với c&ocirc;ng thức vượt trội đặc biệt c&oacute; <strong>ADENOSINE</strong> chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần <strong> chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a </strong> bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời <strong>l&agrave;m s&aacute;ng da</strong> do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm,n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng hồng mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.</p>

<p>Ngo&agrave;i ra, bạn n&ecirc;n tr&aacute;nh chạm tay v&agrave;o mặt để nặn mụn, đồng thời kết hợp chế độ ăn uống hợp l&yacute; để gi&uacute;p cho l&agrave;n da bạn trở n&ecirc;n đẹp hơn tr&ocirc;ng thấy!</p>

<p>Những kiến thức sau l&agrave; tổng quan về c&aacute;ch l&agrave;m đẹp da d&agrave;nh cho ph&aacute;i đẹp sở hữu l&agrave;n da nhạy cảm. Nếu bạn đang băn khoăn về c&aacute;ch chăm s&oacute;c da trắng s&aacute;ng, th&igrave; h&atilde;y tham khảo những kiến thức tr&ecirc;n để gi&uacute;p cho l&agrave;n da của bạn th&ecirc;m đẹp hơn v&agrave; mịn m&agrave;ng hơn. Cảm ơn qu&yacute; độc giả đ&atilde; đ&oacute;n đọc b&agrave;i viết c&aacute;ch l&agrave;m trắng s&aacute;ng da nhạy cảm, nếu muốn biết nhiều th&ocirc;ng tin hơn, xin vui l&ograve;ng đ&oacute;n đọc những b&agrave;i tiếp theo sau đ&acirc;y.</p>
', CAST(N'2019-07-30T14:32:54.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (37, N'Bí quyết làm trắng da thường', N'bi-quyet-lam-trang-da-thuong', N'Da thường là một loại da khá dễ chịu, những ai sở hữu loại da này thường được cho là may mắn. Nhưng cũng không phải vì thế mà việc chăm sóc loại da này bị lơ là đi, vì cho dù da bạn đẹp đến đâu mà không chăm sóc thì cũng sẽ bị nổi mụn và bị một số vấn đề khác liên quan đến da. Nhưng không phải ai cũng biết cách chăm sóc loại da này. Bài viết hôm nay sẽ giới thiệu đến các bạn 5 cách làm trắng da thường hiệu quả nhất.', N'Tư vấn da', N'/Uploads/images/Advisory/front/7.jpg', N'<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/da thuong.jpg" /></p>

<p>Da thường l&agrave; một loại da kh&aacute; dễ chịu, những ai sở hữu loại da n&agrave;y thường được cho l&agrave; may mắn. Nhưng cũng kh&ocirc;ng phải v&igrave; thế m&agrave; việc chăm s&oacute;c loại da n&agrave;y bị lơ l&agrave; đi, v&igrave; cho d&ugrave; da bạn đẹp đến đ&acirc;u m&agrave; kh&ocirc;ng chăm s&oacute;c th&igrave; cũng sẽ bị nổi mụn v&agrave; bị một số vấn đề kh&aacute;c li&ecirc;n quan đến da. Nhưng kh&ocirc;ng phải ai cũng biết c&aacute;ch chăm s&oacute;c loại da n&agrave;y. B&agrave;i viết h&ocirc;m nay sẽ giới thiệu đến c&aacute;c bạn 5 c&aacute;ch l&agrave;m trắng da thường hiệu quả nhất.</p>

<h4>L&agrave;m trắng da với bơ:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na bo(1).jpg" /></p>

<p>Như đ&atilde; đề cập b&ecirc;n tr&ecirc;n, da thường được cho l&agrave; loại da dễ t&iacute;nh nhất trong tất cả c&aacute;c loại da, cho n&ecirc;n, bạn c&oacute; thể thoải m&aacute;i &aacute;p dụng những c&ocirc;ng thức l&agrave;m trắng da, chăm s&oacute;c da từ mỹ phẩm hay thực phẩm từ thi&ecirc;n nhi&ecirc;n. Tuy nhi&ecirc;n, bạn cũng kh&ocirc;ng n&ecirc;n &aacute;p dụng những c&ocirc;ng thức kh&ocirc;ng an to&agrave;n để tr&aacute;nh những rủi ro c&oacute; thể xuất hiện tr&ecirc;n l&agrave;n da của bạn. Bơ l&agrave; một trong những loại thực phẩm hỗ trợ l&agrave;m trắng da hiệu quả nhất, bạn n&ecirc;n kết hợp bơ với sữa tươi để gi&uacute;p l&agrave;m s&aacute;ng da v&agrave; gi&uacute;p l&agrave;n da của bạn trở n&ecirc;n mịn m&agrave;ng hơn.</p>

<h5><strong>Nguy&ecirc;n liệu cần c&oacute;:</strong></h5>

<p>1 quả bơ ch&iacute;n v&agrave; 1 bịch sữa tươi kh&ocirc;ng đường</p>

<p>&nbsp;</p>

<h5><strong>C&aacute;ch l&agrave;m:</strong></h5>

<p>Trước ti&ecirc;n, bơ gọt vỏ, xay nhuyễn, sau đ&oacute; cho th&ecirc;m lượng sữa tươi vừa đủ v&agrave; trộn đều hỗn hợp.</p>

<p>Trộn cho đến khi hỗn hợp sệt lại v&agrave; h&ograve;a v&agrave;o nhau l&agrave; được.</p>

<p>Bạn tắm sạch bằng nước ấm trước (nếu bạn muốn l&agrave;m trắng to&agrave;n th&acirc;n), sau đ&oacute;, lau thật kh&ocirc; người v&agrave; thoa hỗn hợp l&ecirc;n cơ thể.</p>

<p>Để trong khoảng 20 ph&uacute;t, sau đ&oacute; tắm lại bằng nước m&aacute;t v&agrave; thoa kem dưỡng l&ecirc;n.</p>

<h4>L&agrave;m trắng da với chanh:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na chanh mat ong.jpg" /></p>

<p>Chanh l&agrave; một loại thực phẩm kh&aacute; phổ biến, dễ t&igrave;m mua, trong chanh c&oacute; chứa chất acid l&agrave;m da trắng s&aacute;ng. Nếu bạn l&agrave; một người bận rộn kh&ocirc;ng c&oacute; thời gian để dưỡng da bằng kem th&igrave; h&agrave;ng ng&agrave;y, bạn chỉ cần pha lo&atilde;ng chanh với nước ấm sau đ&oacute; đắp l&ecirc;n da, kết quả sẽ như &yacute; bạn một c&aacute;ch nhanh ch&oacute;ng. Trong chanh c&oacute; chứa th&agrave;nh phần vitamin l&agrave;m trắng da, bổ sung dưỡng chất cho da một c&aacute;ch hiệu quả nhất. Ngo&agrave;i ra, bạn c&ograve;n c&oacute; thể sử dụng chanh với mật ong, hiệu quả dưỡng da cũng kh&ocirc;ng k&eacute;m. Ngo&agrave;i ra, chanh cũng gi&uacute;p trị n&aacute;m kh&aacute; hiệu quả.</p>

<h4>L&agrave;m trắng da với mướp:</h4>

<p>Mướp từ trước đến nay được xem l&agrave; một loại thực phẩm thanh nhiệt, giải độc cho cơ thể. Nhưng &iacute;t ai biết được, mướp c&ograve;n đ&oacute;ng vai tr&ograve; như một loại kem gi&uacute;p l&agrave;m trắng da hiệu quả. Hằng ng&agrave;y, đắp mặt nạ mướp sẽ đem lại hiệu quả tốt. Nếu bạn &aacute;p dụng đ&uacute;ng c&ocirc;ng thức th&igrave; mướp sẽ l&agrave;m cho l&agrave;n da bạn trắng hồng dần l&ecirc;n.</p>

<h4>L&agrave;m trắng da bằng dưa chuột:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/mat na dua chuot.jpg" /></p>

<p>Chắc hẳn c&oacute; kh&aacute; nhiều bạn sử dụng phương ph&aacute;p n&agrave;y. Dưa chuột được xem l&agrave; một loại dưa c&oacute; dưỡng chất kh&aacute; tốt cho l&agrave;n da. Mỗi tối trước khi đi ngủ, bạn chỉ cần cắt khoanh mỏng dưa chuột v&agrave; đắp mặt, da bạn sẽ trắng s&aacute;ng hơn tr&ocirc;ng thấy.</p>

<h4>L&agrave;m trắng da với l&ograve;ng trắng trứng g&agrave;:</h4>

<p>Kh&ocirc;ng những l&agrave; thực phẩm bổ sung dưỡng chất cho cơ thể, trứng g&agrave; c&ograve;n l&agrave; một loại dược phẩm gi&uacute;p l&agrave;n da trở n&ecirc;n trắng s&aacute;ng một c&aacute;ch nhanh ch&oacute;ng. Bạn chỉ cần d&ugrave;ng l&ograve;ng trắng trứng g&agrave; thoa l&ecirc;n mặt, tầm 10-15 ph&uacute;t sau n&oacute; sẽ kh&ocirc; lại, v&agrave; bạn bắt đầu lột ch&uacute;ng ra như mặt nạ. Khi đ&oacute;, bạn sẽ cảm thấy da bạn căng l&ecirc;n, x&oacute;a mờ được vết th&acirc;m v&agrave; l&agrave;m s&aacute;ng da từ từ.</p>

<h4>Kh&ocirc;ng n&ecirc;n tắm trắng:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/lam trang da.jpg" /></p>

<p>Lời khuy&ecirc;n của c&aacute;c chuy&ecirc;n gia khi tắm trắng:</p>

<p>Những phương ph&aacute;p tắm trắng được quảng c&aacute;o l&agrave; hiệu quả nhanh ch&oacute;ng ở nhiều thẩm mỹ viện thực chất chỉ l&agrave; sử dụng h&oacute;a chất để loại bỏ lớp tế b&agrave;o sừng chứ kh&ocirc;ng c&oacute; hiệu quả s&acirc;u. Tệ hơn, nhiều nơi sử dụng những h&oacute;a chất độc hại l&agrave;m m&ograve;n da như thủy ng&acirc;n, hydroquinone(HQ), corticoid, v.v..</p>

<p>Hiện nay tr&ecirc;n thị trường cũng c&oacute; một số loại mỹ phẩm chiết xuất từ thi&ecirc;n nhi&ecirc;n gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng. Bạn cần t&igrave;m hiểu thật kỹ trước khi quyết định mua v&agrave; sử dụng ch&uacute;ng. Xem th&ocirc;ng tin sản phẩm ch&uacute;ng d&agrave;nh cho loại da n&agrave;o v&agrave; hoạt t&iacute;nh ra sao.</p>

<p>Bạn n&ecirc;n t&igrave;m mua một số loại mỹ phẩm c&oacute; chất lượng tr&ecirc;n thị trường hiện nay, ti&ecirc;u biểu l&agrave; Kem trắng da mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo, bao gồm c&aacute;c th&agrave;nh phần l&agrave;nh t&iacute;nh như chiết xuất tinh chất nh&acirc;n s&acirc;m, sữa ong ch&uacute;a, nấm linh chi gi&uacute;p nu&ocirc;i dưỡng da s&acirc;u từ b&ecirc;n trong, l&agrave;m giảm c&aacute;c vết nhăn, ngăn ngừa l&atilde;o h&oacute;a v&agrave; gi&uacute;p da trắng s&aacute;ng, kết hợp với serum dưỡng ẩm da BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo sẽ l&agrave;m cho bạn c&oacute; một l&agrave;n da ho&agrave;n hảo kh&ocirc;ng t&igrave; vết.</p>

<p>H&atilde;y lu&ocirc;n giữ da m&igrave;nh sạch sẽ, loại bỏ c&aacute;c t&aacute;c nh&acirc;n g&acirc;y mụn v&agrave;, tr&aacute;nh &aacute;nh nắng từ tia cực t&iacute;m.</p>

<p>Việc chăm s&oacute;c da lu&ocirc;n lu&ocirc;n l&agrave; vấn đề được nhiều phụ nữ quan t&acirc;m, l&agrave;m sao để c&oacute; được một l&agrave;n da trắng s&aacute;ng một c&aacute;ch tự nhi&ecirc;n nhất? N&ecirc;n sử dụng liệu ph&aacute;p n&agrave;o th&iacute;ch hợp để kh&ocirc;ng g&acirc;y tổn hại cho da? Da thường c&oacute; những c&aacute;ch chăm s&oacute;c da thế n&agrave;o để l&agrave;m da nhanh trắng s&aacute;ng? Tr&ecirc;n đ&acirc;y l&agrave; một số c&aacute;ch chăm s&oacute;c da ti&ecirc;u biểu gi&uacute;p bạn c&oacute; hiểu biết hơn về c&aacute;ch chăm s&oacute;c da, hy vọng qua b&agrave;i viết n&agrave;y, bạn c&oacute; thể c&oacute; c&aacute;i nh&igrave;n kh&aacute;ch quan hơn về việc l&agrave;m trắng da cho bản th&acirc;n th&ocirc;ng qua những liệu ph&aacute;p tự nhi&ecirc;n sẵn c&oacute;.</p>
', CAST(N'2019-07-30T14:33:49.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (38, N'Cách làm trắng da cấp tốc an toàn', N'cach-lam-trang-da-cap-toc', N'Các bạn nữ luôn ao ước được sở hữu một làn da trắng sáng không tì vết, chính vì thế cho nên họ thường tìm đến các phương pháp làm trắng da để giúp cho da mình được cải thiện. Nhưng điều quan trọng hơn hết đó chính là họ muốn đẩy nhanh tiến trình làm trắng bằng phương pháp trắng da cấp tốc. Vậy thế nào là làm trắng da cấp tốc? Và làm trắng da cấp tốc như thế nào cho hiệu quả? Mời các bạn cùng đón đọc trong bài viết sau.', N'Tư vấn da', N'/Uploads/images/Advisory/cach_lam_trang_da_cap_toc1.png', N'<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc1.png" /></p>

<p>L&agrave;m trắng da cấp tốc l&agrave; g&igrave;? L&agrave; r&uacute;t ngắn thời gian l&agrave;m trắng da bằng c&aacute;ch sử dụng kem, mỹ phẩm hoặc đi thẩm mỹ. Phương ph&aacute;p n&agrave;y gi&uacute;p người phụ nữ nhanh ch&oacute;ng trở n&ecirc;n rạng ngời, nhưng b&ugrave; lại phải biết giữ l&agrave;n da cẩn thận, bởi v&igrave; phương ph&aacute;p n&agrave;y l&acirc;u d&agrave;i sẽ l&agrave;m da trở n&ecirc;n mỏng v&agrave; nhạy cảm hơn.<br />
Ng&agrave;y nay, c&oacute; kh&aacute; nhiều loại kem l&agrave;m trắng da cấp tốc tr&ecirc;n thị trường, bao gồm cả những loại kem d&agrave;nh cho da mặt v&agrave; to&agrave;n th&acirc;n, nằm trong ph&acirc;n kh&uacute;c cao cấp hoặc trung b&igrave;nh đều c&oacute; đủ cả. Những loại kem nằm ở ph&acirc;n kh&uacute;c cao cấp thường l&agrave; những thương hiệu c&oacute; tiếng như: Shiseido, Botanic,.... đến những d&ograve;ng kem ở ph&acirc;n kh&uacute;c trung b&igrave;nh như Pond, Olay,.... Ph&ugrave; hợp với mọi loại da. Vậy th&igrave; n&ecirc;n d&ugrave;ng loại kem l&agrave;m trắng da cấp tốc n&agrave;o để thực sự ph&ugrave; hợp với l&agrave;n da của bạn?</p>

<h4>L&agrave;m trắng da cấp tốc như thế n&agrave;o l&agrave; hiệu quả:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc2.jpg" /></p>

<p>Tr&ecirc;n thị trường hiện nay, c&oacute; kh&aacute; nhiều d&ograve;ng kem l&agrave;m trắng da cấp tốc ra đời đ&aacute;p ứng được nhu cầu cho hầu hết c&aacute;c chị em. Kh&ocirc;ng cần phải đi ra ngo&agrave;i spa hay thẩm mỹ, c&oacute; thể tự l&agrave;m trắng da tại nh&agrave;. V&agrave; trong số c&aacute;c d&ograve;ng kem đ&oacute; phải kể đến Bộ sản phẩm dưỡng trắng da tinh khiết Shiseido White Lucent chiết xuất từ Nhật Bản,c&oacute; c&ocirc;ng dụng trị n&aacute;m, dưỡng trắng s&acirc;u từ b&ecirc;n trong. Bộ sản phẩm n&agrave;y l&agrave;m l&agrave;n da bạn trở n&ecirc;n trắng s&aacute;ng hơn chỉ sau 1 tuần sử dụng v&agrave; th&iacute;ch hợp với da thường.<br />
Đối với những ai sở hữu l&agrave;n da nhờn, dầu, n&ecirc;n sử dụng Olay Luminous Light Hydrating Face Lotion, mặc d&ugrave; d&ograve;ng kem n&agrave;y chỉ nằm ở ph&acirc;n kh&uacute;c trung b&igrave;nh, nhưng hiệu quả n&oacute; mang lại lại khiến mọi người d&ugrave;ng cực kỳ h&agrave;i l&ograve;ng. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm kết hợp khả năng dưỡng ẩm v&agrave; dưỡng trắng da hiệu quả. Sản phẩm c&oacute; kết cấu mỏng nhẹ cho c&ocirc;ng dụng dưỡng ẩm k&eacute;o d&agrave;i v&agrave; cải thiện m&agrave;u da rạng rỡ. Sữa dưỡng ph&aacute;t huy c&ocirc;ng dụng trong v&ograve;ng 2 tuần, bạn sẽ cảm nhận được sự kh&aacute;c biệt r&otilde; rệt của l&agrave;n da. Gi&uacute;p da trở n&ecirc;n b&oacute;ng mượt, căng mịn v&agrave; trắng s&aacute;ng, kh&ocirc;ng g&acirc;y hiện tượng b&oacute;ng nhờn, ph&ugrave; hợp khi sử dụng s&aacute;ng hoặc tối.<br />
C&ograve;n đối với những c&ocirc; n&agrave;ng c&oacute; l&agrave;n da nhạy cảm, n&ecirc;n sử dụng Sakura Botanical Sensitive Cream, d&ograve;ng kem n&agrave;y sẽ l&agrave;m dịu v&agrave; phục hồi da nhanh ch&oacute;ng, cung cấp vitamin C v&agrave; E gi&uacute;p chống lại c&aacute;c gốc tự do v&agrave; k&iacute;ch th&iacute;ch sự h&igrave;nh th&agrave;nh collagen. Gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng nhanh tr&ocirc;ng thấy.<br />
Sau c&ugrave;ng l&agrave; da hỗn hợp, muốn l&agrave;m trắng da cấp tốc, th&igrave; n&ecirc;n sử dụng kem thuộc d&ograve;ng Pond&#39;s White Beauty ban ng&agrave;y, với c&ocirc;ng thức phức hợp dưỡng trắng Vitamin B3 gi&uacute;p tăng cường khả năng dưỡng trắng từ s&acirc;u b&ecirc;n trong, l&agrave;m mờ vết th&acirc;m n&aacute;m, cho l&agrave;n da trắng hồng rạng rỡ b&ecirc;n ngo&agrave;i.<br />
Hiện nay, c&ograve;n c&oacute; một loại mỹ phẩm gi&uacute;p l&agrave;m trắng da cấp tốc được chiết xuất từ thi&ecirc;n nhi&ecirc;n mang t&ecirc;n BiOshi đến từ Nhật Bản, ph&ugrave; hợp với mọi loại da, đ&oacute; ch&iacute;nh l&agrave; sữa tắm trắng cấp tốc BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo, gi&uacute;p da trắng s&aacute;ng hơn sau mỗi lần tắm, sử dụng kết hợp với kem trắng da BiOshi hoặc sữa tắm dưỡng da BiOshi để tăng cường độ trắng s&aacute;ng v&agrave; mềm mịn cho da. Th&iacute;ch hợp cho cả da mặt v&agrave; to&agrave;n th&acirc;n.</p>

<h4>Những lưu &yacute; khi sử dụng kem trắng da cấp tốc:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc3.jpg" /></p>

<p>Đọc kỹ hướng dẫn trước khi sử dụng để biết c&aacute;ch sử dụng khoa học, tr&aacute;nh l&agrave;m phản t&aacute;c dụng của kem. Khi sử dụng kem trắng da cấp tốc, kh&ocirc;ng n&ecirc;n sử dụng th&ecirc;m nhiều loại kem l&agrave;m trắng da kh&aacute;c m&agrave; chỉ n&ecirc;n d&ugrave;ng kem dưỡng để l&agrave;m da kh&ocirc;ng bị k&iacute;ch ứng.<br />
Tắm sạch sẽ trước khi thoa, thời điểm th&iacute;ch hợp nhất l&agrave; sử dụng v&agrave;o ban đ&ecirc;m v&igrave; ban đ&ecirc;m l&agrave; l&uacute;c kem hấp thụ nhanh v&agrave; s&acirc;u nhất! Cuối c&ugrave;ng, cần biết những c&aacute;ch ph&acirc;n biệt kem thật hay kem giả để tr&aacute;nh mang hậu quả đ&aacute;ng tiếc. V&agrave; c&aacute;c bạn nữ cũng n&ecirc;n mang khẩu trang, bao tay, mặc &aacute;o kho&aacute;c để che chắn bản th&acirc;n khi d&ugrave;ng kem, tr&aacute;nh tia UV gi&uacute;p da chắc khỏe hơn.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc4.jpg" /></p>

<p>Những loại kem tr&ecirc;n l&agrave; những loại kem gi&uacute;p bạn l&agrave;m trắng da cấp tốc nhanh nhất, tuy nhi&ecirc;n, c&aacute;ch l&agrave;m n&agrave;y kh&ocirc;ng được khuyến kh&iacute;ch sử dụng thường xuy&ecirc;n bởi v&igrave; n&oacute; sẽ l&agrave;m da trở n&ecirc;n mỏng đi, l&acirc;u dần kh&ocirc;ng khỏe mạnh như ban đầu. Ch&iacute;nh v&igrave; thế, chỉ sử dụng khi thực sự cần thiết v&agrave; c&agrave;ng &iacute;t c&agrave;ng tốt, n&ecirc;n d&ugrave;ng kết hợp c&aacute;c phương ph&aacute;p thi&ecirc;n nhi&ecirc;n để l&agrave;n da được đảm bảo độ trắng s&aacute;ng mịn m&agrave;ng.<br />
Hy vọng qua b&agrave;i viết tr&ecirc;n, c&aacute;c bạn đ&atilde; phần n&agrave;o biết c&aacute;ch l&agrave;m trắng da cấp tốc, gi&uacute;p bản th&acirc;n c&oacute; thể trở n&ecirc;n tự tin v&agrave; rạng ngời hơn khi đi dạo phố. L&agrave; con g&aacute;i, ai chẳng muốn m&igrave;nh xinh đẹp đ&uacute;ng kh&ocirc;ng n&agrave;o?</p>
', CAST(N'2019-07-30T14:34:53.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (39, N'Cách làm trắng da cấp tốc cho từng loại da', N'cach-lam-trang-da-cap-toc-cho-tung-loai-da', N'Sở hữu một làn da trắng sáng luôn là mong ước của mỗi cô gái, nhưng làm sao để đẩy nhanh quá trình làm trắng luôn là câu hỏi hàng đầu được đặt ra. Có khá nhiều cách làm trắng da cấp tốc, nhưng có lẽ cách làm trắng da cấp tốc đang được ưa chuộng nhất đó chính là sử dụng mỹ phẩm. Hôm nay, bài viết này sẽ chỉ ra một số loại mỹ phẩm giúp làm trắng da cấp tốc chất lượng cho các bạn nữ tham khảo và sử dụng. Cùng theo dõi nhé!', N'Tư vấn da', N'/Uploads/images/Advisory/cach-lam-trang-da-cap-toc-cho-tung-loai-da1.jpg', N'<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-cho-tung-loai-da1.jpg" /></p>

<p>&nbsp;</p>

<h5><strong>Kem dưỡng trắng shiseido d&agrave;nh cho da nhờn v&agrave; da hỗn hợp:</strong></h5>

<p><br />
Nằm trong ph&acirc;n kh&uacute;c cao cấp nhưng gi&aacute; b&aacute;n lại kh&aacute; mềm ( 380.000 VNĐ ), kem dưỡng trắng shiseido d&agrave;nh cho da nhờn v&agrave; da hỗn hợp c&oacute; th&agrave;nh phần M-Tranexamic Acid trực tiếp th&acirc;m nhập s&acirc;u v&agrave;o da, được chiết xuất từ c&acirc;y hồ nhi v&agrave; hoa mẫu đơn ức chế sự h&igrave;nh th&agrave;nh melanin, nguy&ecirc;n nh&acirc;n g&acirc;y ra đốm da, da sậm m&agrave;u v&agrave; t&agrave;n nhang, l&agrave;m mờ c&aacute;c vết n&aacute;m v&agrave; đốm đen tr&ecirc;n da. Với c&ocirc;ng dụng dưỡng trắng da hiệu quả v&agrave;o ban đ&ecirc;m, d&ograve;ng kem n&agrave;y c&ograve;n bảo vệ da tr&aacute;nh khỏi sự ph&aacute; hủy của c&aacute;c tia tử ngoại đồng thời cung cấp dưỡng chất để hồi phục v&agrave; nu&ocirc;i dưỡng ho&agrave;n hảo c&aacute;c tế b&agrave;o bị l&atilde;o h&oacute;a, gi&uacute;p da nhanh ch&oacute;ng trắng s&aacute;ng rạng ngời.</p>

<p>&nbsp;</p>

<h4>D&agrave;nh cho da kh&ocirc; v&agrave; da nhạy cảm</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-cho-tung-loai-da2.jpg" /></p>

<p><strong>Olay Whip Advanced Face Moisturizer</strong> kem dưỡng ẩm Olay Whip Advanced Face Moisturizer đảm bảo khả năng dưỡng ẩm cho da, cho cảm gi&aacute;c m&aacute;t th&ocirc;ng tho&aacute;ng m&aacute;t dịu ho&agrave;n to&agrave;n cho da. Kem dưỡng ẩm nhanh ch&oacute;ng biến đổi từ dạng kem sang dung dịch mỏng nhẹ sau khi được apply đều tr&ecirc;n da. Sản phẩm kh&ocirc;ng hề g&acirc;y cảm gi&aacute;c b&oacute;ng nhờn hay bị da cho cảm gi&aacute;c dễ chịu trong suốt qu&aacute; tr&igrave;nh sử dụng. Hơn thế nữa, kem c&oacute; chiết xuất từ Carob v&agrave; h&agrave;m lượng vitamin E dồi d&agrave;o, bổ sung kho&aacute;ng chất gi&uacute;p tăng cường khả năng giữ ẩm của da.</p>

<h4>D&agrave;nh cho da dầu v&agrave; da thường:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-cho-tung-loai-da3.jpg" /></p>

<p>Tuy nằm trong ph&acirc;n kh&uacute;c tầm trung, nhưng BiOshi đem lại cho người d&ugrave;ng sự h&agrave;i l&ograve;ng tuyệt đối mỗi khi sử dụng sản phẩm, đặc biệt l&agrave; kem dưỡng da cấp tốc cho da mặt <strong>BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo</strong>, với th&agrave;nh phần ch&iacute;nh từ đ&ocirc;ng tr&ugrave;ng hạ thảo c&ugrave;ng với chiết xuất sữa ong ch&uacute;a ( Royal Jelly Extract ) kh&ocirc;ng g&acirc;y k&iacute;ch ứng da, gi&uacute;p da nhanh ch&oacute;ng trở n&ecirc;n trắng s&aacute;ng, rạng ngời chỉ sau 1 tuần đầu ti&ecirc;n sử dụng Ngo&agrave;i ra, BiOshi c&ograve;n c&oacute; sữa tắm trắng cấp tốc BiOshi tr&agrave; xanh, gi&uacute;p dưỡng da s&acirc;u từ b&ecirc;n trong, loại bỏ c&aacute;c tế b&agrave;o g&acirc;y ung thư, gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng mịn m&agrave;ng hơn tr&ocirc;ng thấy. Với th&agrave;nh phần Cetyl Alcohol, gi&uacute;p da mịn m&agrave;ng, c&ugrave;ng Sodium 2-(dodecyloxy ethoxy)ethyl sulphate gi&uacute;p da trắng nhanh hơn, gi&uacute;p c&aacute;c bạn nữ r&uacute;t ngắn được quy tr&igrave;nh l&agrave;m trắng tức thời.<br />
Hiện nay, tr&ecirc;n thị trường xuất hiện nhiều loại mỹ phẩm giả , cho n&ecirc;n c&aacute;c bạn cần phải biết c&aacute;ch ph&acirc;n biệt thật giả để tr&aacute;nh mua lầm, điều đầu ti&ecirc;n l&agrave; phải mua ở những chuỗi cửa h&agrave;ng mỹ phẩm uy t&iacute;n để c&oacute; thể đảm bảo độ an to&agrave;n cao nhất!</p>

<h4>C&aacute;ch ph&acirc;n biệt mỹ phẩm thật giả</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-cho-tung-loai-da4.jpg" /></p>

<p>Check m&atilde; vạch tr&ecirc;n điện thoại: Đối với những ai đang d&ugrave;ng smartphone, h&atilde;y truy cập những trang wed lớn để kiểm tra m&atilde; vạch xem c&oacute; khớp với m&atilde; vạch tr&ecirc;n hệ thống hay kh&ocirc;ng bằng c&aacute;ch:<br />
+Kiểm tra bao b&igrave;: Bước n&agrave;y l&agrave; bước quan trọng, bởi v&igrave; mỗi loại mỹ phẩm đều c&oacute; nguồn gốc v&agrave; xuất xứ kh&aacute;c nhau, cho n&ecirc;n khi kiểm tra, nếu bạn thấy 3 chứ số đầu l&agrave; 893 th&igrave; m&igrave;nh biết ngay mặt h&agrave;ng n&agrave;y được sản xuất ở Việt Nam, c&ograve;n n&oacute; l&agrave; 690, 691, 692, 693 l&agrave; của Trung Quốc.<br />
+H&igrave;nh thức b&ecirc;n ngo&agrave;i: Đối với h&agrave;ng fake, bao b&igrave; b&ecirc;n ngo&agrave;i thường l&agrave;m rất sơ s&agrave;i, chữ in kh&ocirc;ng nổi bật, r&otilde; r&agrave;ng, k&iacute;ch cỡ chữ kh&ocirc;ng đều nhau. Sản phẩm nh&aacute;i thường biến đổi một số chữ tr&ecirc;n t&ecirc;n sản phẩm như: Lamcome thay v&igrave; Lancome; Kenzzo thay v&igrave; Kenzo; Lokasta hay v&igrave; Lacoste&hellip; cho n&ecirc;n cần lưu &yacute; trong qu&aacute; tr&igrave;nh mua.<br />
+M&ugrave;i hương: Nếu l&agrave; sản phẩm thật, khi mở nắp bạn sẽ nghe được m&ugrave;i hương dịu nhẹ, kh&ocirc;ng hắc như m&ugrave;i hương của h&agrave;ng fake. Bạn cũng c&oacute; thể thử độ mịn của n&oacute;, mỹ phẩm thật sẽ cực kỳ mịn trong khi mỹ phẩm giả rất hay v&oacute;n cục.<br />
+Về gi&aacute; cả: Đối với những d&ograve;ng mỹ phẩm tốt kh&ocirc;ng hề c&oacute; gi&aacute; 150k trở xuống, cho n&ecirc;n c&aacute;c bạn đừng dại dột ham rẻ m&agrave; chuốt hậu quả đ&aacute;ng tiếc cho l&agrave;n da của m&igrave;nh.<br />
C&oacute; một số c&acirc;u hỏi đặc ra l&agrave; c&oacute; thể l&agrave;m trắng da cấp tốc với phương ph&aacute;p thủ c&ocirc;ng tại nh&agrave; hay kh&ocirc;ng? C&acirc;u trả lời l&agrave; c&oacute;, v&agrave; c&oacute; thể d&ugrave;ng cho da mặt, cả body, chủ yếu l&agrave; sử dụng c&aacute;c loại rau củ quả từ thi&ecirc;n nhi&ecirc;n, chẳng hạn như: Sử dụng sữa tươi v&agrave; nha đam xay nhuyễn, sau đ&oacute; đắp l&ecirc;n da, da bạn sẽ trở n&ecirc;n trắng s&aacute;ng hơn trong 1 tuần sử dụng. Hay đối với da mặt, bạn chỉ cần sử dụng l&ograve;ng trắng trứng g&agrave; l&agrave;m mặt nạ v&agrave;o mỗi tối, da bạn kh&ocirc;ng những trắng s&aacute;ng m&agrave; c&aacute;c vết th&acirc;m n&aacute;m cũng mờ hẳn đi. Tuy nhi&ecirc;n, liệu ph&aacute;p n&agrave;y l&agrave;m tốn kh&aacute; nhiều thời gian, c&ocirc;ng sức, v&agrave; chỉ d&agrave;nh cho những ai c&oacute; nhiều thời gian.<br />
Qua b&agrave;i viết n&agrave;y, chắc hẳn mọi người đ&atilde; biết được những loại mỹ phẩm gi&uacute;p l&agrave;m trắng da cấp tốc chất lượng rồi đ&uacute;ng kh&ocirc;ng n&agrave;o? Nhanh ch&oacute;ng săn cho m&igrave;nh một em để chăm s&oacute;c bản th&acirc;n trở n&ecirc;n đẹp hơn nh&eacute;!</p>
', CAST(N'2019-07-30T14:36:16.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (40, N'Cách làm trắng da cấp tốc tại nhà', N'cach-lam-trang-da-cap-toc-tai-nha', N'Làm thế nào để làm trắng da cấp tốc một cách an toàn và hiệu quả nhất? Bạn đã thử quá nhiều cách nhưng làn da bạn không cải thiện được tẹo nào? Bạn đang buồn chán và thất vọng lắm? Hãy yên tâm vì trong bài viết này, bạn sẽ biết được cách làm trắng da cấp tốc như thế nào là hiệu quả nhất nhé!', N'Tư vấn da', N'/Uploads/images/Advisory/cach-lam-trang-da-cap-toc-tai-nha1.jpg', N'<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-tai-nha1.jpg" /></p>

<p>C&oacute; 2 liệu ph&aacute;p l&agrave;m trắng da cấp tốc phổ biến nhất hiện nay, đ&oacute; ch&iacute;nh l&agrave; sử dụng liệu ph&aacute;p từ thi&ecirc;n nhi&ecirc;n v&agrave; sử dụng mỹ phẩm. <strong>Sử dụng liệu ph&aacute;p thi&ecirc;n nhi&ecirc;n:</strong><br />
Đ&acirc;y l&agrave; liệu ph&aacute;p kh&ocirc;ng tốn k&eacute;m, tiết kiệm được kh&aacute; nhiều tiền bạc cho bạn, vừa an to&agrave;n khi sử dụng. Nhưng cũng phải sử dụng sao cho ph&ugrave; hợp với da của m&igrave;nh.<br />
<strong>Một số phương ph&aacute;p trắng cấp tốc từ thi&ecirc;n nhi&ecirc;n:</strong><br />
<strong>D&ugrave;ng hỗn hợp đu đủ, mật ong:</strong> đu đủ c&oacute; rất nhiều loại vitamin, trong đ&oacute; c&oacute; vitamin B1, vitamin C gi&uacute;p c&aacute;c tế b&agrave;o tăng l&ecirc;n nhanh ch&oacute;ng. Gi&aacute; của đu đủ kh&ocirc;ng đắt đỏ lắm, bạn c&oacute; thể sử dụng mật ong với để tạo n&ecirc;n c&ocirc;ng thức dưỡng da ri&ecirc;ng của m&igrave;nh. D&ugrave;ng đu đủ ch&iacute;n, gọt vỏ v&agrave; hạt rồi nghiền n&aacute;t, tắm sạch sau đ&oacute; b&ocirc;i hỗn hợp n&agrave;y l&ecirc;n cơ thể hay da mặt đều được trong khoảng 20 ph&uacute;t, sau đ&oacute; tắm lại bằng nước sạch, sau 1 tuần sử dụng da bạn sẽ mịn hơn v&agrave; trắng hơn ban đầu.</p>

<h4>Olay Whip Advanced Face Moisturizer</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-tai-nha2.jpg" /></p>

<p>kem dưỡng ẩm Olay Whip Advanced Face Moisturizer đảm bảo khả năng dưỡng ẩm cho da, cho cảm gi&aacute;c m&aacute;t th&ocirc;ng tho&aacute;ng m&aacute;t dịu ho&agrave;n to&agrave;n cho da. Kem dưỡng ẩm nhanh ch&oacute;ng biến đổi từ dạng kem sang dung dịch mỏng nhẹ sau khi được apply đều tr&ecirc;n da. Sản phẩm kh&ocirc;ng hề g&acirc;y cảm gi&aacute;c b&oacute;ng nhờn hay bị da cho cảm gi&aacute;c dễ chịu trong suốt qu&aacute; tr&igrave;nh sử dụng. Hơn thế nữa, kem c&oacute; chiết xuất từ Carob v&agrave; h&agrave;m lượng vitamin E dồi d&agrave;o, bổ sung kho&aacute;ng chất gi&uacute;p tăng cường khả năng giữ ẩm của da.<br />
<strong>D&ugrave;ng chanh tươi:</strong> Pha lo&atilde;ng với nước uống gi&uacute;p trị n&aacute;m kh&aacute; hiệu quả<br />
<strong>D&ugrave;ng c&aacute;m gạo v&agrave; nghệ:</strong> Gi&atilde; nhỏ nghệ tươi v&agrave; trộn với c&aacute;m gạo, b&ocirc;i l&ecirc;n da sau khi tắm xong rồi sau đ&oacute; rửa lại thật sạch, hiệu quả ngay tức th&igrave; trong lần đầu sử dụng<br />
<strong>Ưu điểm của phương ph&aacute;p thi&ecirc;n nhi&ecirc;n:</strong> An to&agrave;n, tiết kiệm tiền, hiệu quả tuyệt đối.<br />
<strong>Khuyết điểm:</strong> Tốn thời gian, chỉ sử dụng được 1 lần, kh&ocirc;ng bảo quản l&acirc;u d&agrave;i được.<br />
C&aacute;ch l&agrave;m trắng da cấp tốc từ mỹ phẩm:<br />
Tr&ecirc;n thị trường mỹ phẩm hiện nay c&oacute; kh&aacute; nhiều d&ograve;ng mỹ phẩm l&agrave;m trắng da cấp tốc ra đời, ph&ugrave; hợp với mọi loại da v&agrave; &iacute;t g&acirc;y k&iacute;ch ứng. Đa số c&aacute;c chị em ng&agrave;y nay thường chuộng những d&ograve;ng mỹ phẩm xuất th&acirc;n từ thi&ecirc;n nhi&ecirc;n, b&ecirc;n cạnh đ&oacute;, chuộng th&ecirc;m mỹ phẩm đến từ Nhật Bản v&igrave; n&oacute; c&oacute; chiết xuất từ tự nhi&ecirc;n l&agrave; chủ yếu. Mỹ phẩm chia ra l&agrave;m 2 ph&acirc;n kh&uacute;c. Từ những loại mỹ phẩm ở ph&acirc;n kh&uacute;c trung b&igrave;nh c&oacute; gi&aacute; v&agrave;i trăm như Olay, Pond,... cho đến những loại mỹ phẩm tiền triệu nằm ở ph&acirc;n kh&uacute;c cao cấp như Shiseido, Botanic,... T&ugrave;y theo điều kiện kinh tế v&agrave; nhu cầu của người mua để chọn ra một sản phẩm th&iacute;ch hợp nhất.</p>

<h4>&nbsp;</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-tai-nha3.jpg" /></p>

<p><strong>Một số loại mỹ phẩm l&agrave;m trắng da cấp tốc to&agrave;n th&acirc;n:</strong><br />
Shiseido White Lucent All Day Brightener N<br />
Ứng dụng c&ocirc;ng nghệ sản xuất hiện đại kết hợp c&aacute;c th&agrave;nh phần l&agrave;m trắng da, gi&uacute;p nhanh ch&oacute;ng cải thiện sắc tố da, ngăn chặn hiện tượng sạm, n&aacute;m, duy tr&igrave; độ ẩm tr&ecirc;n da suốt ng&agrave;y d&agrave;i. C&ocirc;ng nghệ Timed Delivery Bright duy tr&igrave; hiệu quả l&agrave;m trắng da v&agrave; ngăn ngừa qu&aacute; tr&igrave;nh oxy ho&aacute;, li&ecirc;n tục cung cấp c&aacute;c th&agrave;nh phần l&agrave;m trắng da tự nhi&ecirc;n để da trắng hồng, rạng rỡ. Th&agrave;nh phần l&agrave;m trắng đầu ti&ecirc;n của Shiseido l&agrave; 4MSk sẽ hạn chế hoạt động của c&aacute;c Enzyme Tyrosinase để giảm bớt sự sản sinh hắc sắc tố Melanin. Ngo&agrave;i ra, phức hợp Super Hydro-Synergy Complex mang lại hiệu quả giữ ẩm cao v&agrave; cải thiện kết cấu da. Ch&iacute;nh v&igrave; vậy, sữa dưỡng mang đến 5 chức năng trong 1: L&agrave;m trắng, dưỡng ẩm, bảo vệ, tăng cường sắc da v&agrave; hiệu quả trang điểm.<br />
<strong>Bộ Dưỡng Trắng Da 7Day Whitening Program Glutathione Special Kit</strong><br />
L&agrave; bộ mỹ phẩm l&agrave;m trắng da 7 ng&agrave;y, th&iacute;ch hợp với những ai đang c&oacute; vấn đề về da: mụn, n&aacute;m, t&agrave;n nhang, xỉn m&agrave;u, bắt đầu l&atilde;o h&oacute;a,&hellip; C&oacute; th&agrave;nh phần chiết xuất từ thi&ecirc;n nhi&ecirc;n, an to&agrave;n cho mọi loại da, gi&uacute;p c&aacute;c bạn nữ c&oacute; thể an t&acirc;m sử dụng m&agrave; kh&ocirc;ng lo dị ứng.<br />
<strong>Sữa tắm trắng da cấp tốc BiOshi Tr&agrave; Xanh.</strong><br />
Với th&agrave;nh phần ch&iacute;nh l&agrave; tr&agrave; xanh, chống vi&ecirc;m, gi&uacute;p tẩy tế b&agrave;o chết cho da, c&ugrave;ng với tanin v&agrave; một số vitamin kho&aacute;ng chất gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, loại bỏ b&atilde; nhờn v&agrave; bụi bẩn, đem đến một l&agrave;n da trắng s&aacute;ng kh&ocirc;ng t&igrave; vết chỉ sau 1 tuần sử dụng. C&oacute; thể d&ugrave;ng k&egrave;m với kem trắng da to&agrave;n th&acirc;n BiOshi ngay sau đ&oacute;, mỗi sản phẩm chỉ c&oacute; thể sử dụng 2 lần.</p>

<h4>C&aacute;ch ph&acirc;n biệt mỹ phẩm thật giả</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach-lam-trang-da-cap-toc-cho-tung-loai-da4.jpg" /></p>

<p><strong>Ưu điểm:</strong> Bảo quản l&acirc;u, sử dụng nhanh, tiết kiệm thời gian.<br />
<strong>Khuyết điểm:</strong> Một số loại mỹ phẩm c&oacute; gi&aacute; kh&aacute; đắt, cần lưu &yacute; điều kiện kinh tế khi mua v&agrave; sử dụng. Việc l&agrave;m trắng da cấp tốc l&agrave; việc được đa số chị em phụ nữ quan t&acirc;m, nhưng cũng kh&ocirc;ng v&igrave; thế m&agrave; lạm dụng thường xuy&ecirc;n, bởi v&igrave; th&agrave;nh phần của c&aacute;c loại mỹ phẩm l&agrave;m trắng da cấp tốc c&oacute; chất l&agrave;m trắng kh&aacute; mạnh, nếu sử dụng thường xuy&ecirc;n th&igrave; da c&oacute; thể bị b&agrave;o m&ograve;n, kh&ocirc;ng c&ograve;n lớp đề kh&aacute;ng bảo vệ da nữa.<br />
C&aacute;c bạn cũng n&ecirc;n lưu &yacute; học c&aacute;ch ph&acirc;n biệt c&aacute;c loại mỹ phẩm l&agrave;m trắng da cấp tốc như ph&acirc;n biệt bao b&igrave;, m&atilde; vạch, nhận biết được c&aacute;c th&agrave;nh phần g&acirc;y hại cho da để c&oacute; thể bảo vệ được da bạn khỏi tổn hại từ mỹ phẩm rởm. V&agrave; n&ecirc;n nhớ kỹ rằng, chẳng c&oacute; mỹ phẩm n&agrave;o rẻ m&agrave; chất lượng cả.<br />
Hi vọng qua b&agrave;i viết n&agrave;y, c&aacute;c chị em đ&atilde; phần n&agrave;o biết được phương ph&aacute;p l&agrave;m trắng da hiệu quả cho bản th&acirc;n, gi&uacute;p bản th&acirc;n trở n&ecirc;n xinh đẹp hơn tr&ocirc;ng thấy mỗi khi dạo phố hay mặc những bộ c&aacute;nh bắt mắt mỗi khi đi tiệc t&ugrave;ng.</p>
', CAST(N'2019-07-30T14:37:05.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (41, N'Cách làm trắng da cấp tốc tự nhiên', N'cach-lam-trang-da-cap-toc-tu-nhien', N'Các bạn nữ đã biết cách làm thế nào để làm cho làn da mình trở nên trắng sáng hơn chưa? Các bạn đã bao giờ nghĩ đến việc làm cho làn da mình trở nên trắng sáng cấp tốc? Và có bao giờ các bạn tự hỏi làm thế nào để làm được điều đó? Hãy tham khảo bài viết sau đây để biết cách giúp làn da bạn trở nên trắng sáng cấp tốc nhé! Đối với ai có thời gian tương đối rảnh thì nên sử dụng liệu pháp làm trắng da cấp tốc từ thiên nhiên, hoặc dùng liệu pháp thủ công, liệu pháp này cực an toàn, phù hợp với mọi loại da và tiết kiệm được khá nhiều tiền.', N'Tư vấn da', N'/Uploads/images/Advisory/cach_lam_trang_da_cap_toc_tu_nhien1.jpg', N'<h4>Một số c&aacute;ch l&agrave;m trắng da cấp tốc tại nh&agrave;:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_tu_nhien1.jpg" /></p>

<p><strong>Sử dụng bia: </strong>Bia c&oacute; chứa h&agrave;m lượng vitamin B dồi d&agrave;o v&agrave; c&oacute; t&iacute;nh kh&aacute;ng khuẩn cao, đặc biệt khi kết hợp với lượng axit c&oacute; trong chanh sẽ gi&uacute;p l&agrave;n da của bạn trắng s&aacute;ng bật t&ocirc;ng nhanh ch&oacute;ng, đồng thời ngăn chặn nguy cơ h&igrave;nh th&agrave;nh mụn trứng c&aacute; một c&aacute;ch hiệu quả. C&aacute;ch chăm s&oacute;c da mặt n&agrave;y bạn chỉ n&ecirc;n &aacute;p dụng một tuần hai lần sẽ cho kết quả tốt nhất. Đối với to&agrave;n th&acirc;n, bạn d&ugrave;ng một lon bia để tắm mỗi ng&agrave;y, da bạn sẽ bật t&ocirc;ng sau 10 ng&agrave;y sử dụng.<br />
<strong>Sử dụng sữa tươi kh&ocirc;ng đường:</strong> Sữa tươi c&oacute; chứa vitamin A, E, D c&oacute; trong sữa tươi gi&uacute;p giảm k&iacute;ch ứng, sưng tấy da, nu&ocirc;i dưỡng, gi&uacute;p da trắng hồng. Ph&ugrave; hợp với những ai c&oacute; l&agrave;n da kh&ocirc; hay hỗn hợp, cấp ẩm cho da hiệu quả.<br />
<strong>Sử dụng bột đậu đỏ:</strong> Vitamin C, E&hellip; trong bột đậu đỏ gi&uacute;p l&agrave;m s&aacute;ng, mịn da, ngăn ngừa l&atilde;o h&oacute;a, l&agrave;m trẻ l&agrave;n da. Ngo&agrave;i ra, nguy&ecirc;n liệu tự nhi&ecirc;n n&agrave;y c&ograve;n c&oacute; khả năng chống oxy h&oacute;a, tăng cường miễn dịch. Chỉ cần Trộn 3 th&igrave;a bột đậu đỏ trộn đều c&ugrave;ng 1 lượng sữa tươi th&agrave;nh hỗn hợp sệt, sau đ&oacute; cho th&ecirc;m 2-3 th&igrave;a nước cốt chanh, thoa đều hỗn hợp l&ecirc;n mặt v&agrave; c&oacute; thể thoa cho to&agrave;n th&acirc;n, sau kh&ugrave;ng khi kh&ocirc; c&oacute; thể rửa lại bằng nước ấm.<br />
Đối với những c&ocirc; n&agrave;ng bận rộn, th&igrave; h&atilde;y lựa chọn cho m&igrave;nh những loại mỹ phẩm l&agrave;m trắng da cấp tốc tr&ecirc;n thị trường, với mục đ&iacute;ch tiết kiệm thời gian, bảo quản được l&acirc;u v&agrave; c&oacute; thể sử dụng nhiều lần. Ti&ecirc;u biểu như: <strong>Shiseido White Lucent All Day Brightener N</strong><br />
Ứng dụng c&ocirc;ng nghệ sản xuất hiện đại kết hợp c&aacute;c th&agrave;nh phần l&agrave;m trắng da, gi&uacute;p nhanh ch&oacute;ng cải thiện sắc tố da, ngăn chặn hiện tượng sạm, n&aacute;m, duy tr&igrave; độ ẩm tr&ecirc;n da suốt ng&agrave;y d&agrave;i. C&ocirc;ng nghệ Timed Delivery Bright duy tr&igrave; hiệu quả l&agrave;m trắng da v&agrave; ngăn ngừa qu&aacute; tr&igrave;nh oxy ho&aacute;, li&ecirc;n tục cung cấp c&aacute;c th&agrave;nh phần l&agrave;m trắng da tự nhi&ecirc;n để da trắng hồng, rạng rỡ. Th&agrave;nh phần l&agrave;m trắng đầu ti&ecirc;n của Shiseido l&agrave; 4MSk sẽ hạn chế hoạt động của c&aacute;c Enzyme Tyrosinase để giảm bớt sự sản sinh hắc sắc tố Melanin. Ngo&agrave;i ra, phức hợp Super Hydro-Synergy Complex mang lại hiệu quả giữ ẩm cao v&agrave; cải thiện kết cấu da. Ch&iacute;nh v&igrave; vậy, sữa dưỡng mang đến 5 chức năng trong 1: L&agrave;m trắng, dưỡng ẩm, bảo vệ, tăng cường sắc da v&agrave; hiệu quả trang điểm.</p>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_tu_nhien2.jpg" /></p>

<p>Bộ Dưỡng Trắng Da 7 Day Whitening Program Glutathione Special Kit<br />
<strong>L&agrave; bộ mỹ phẩm l&agrave;m trắng da 7 ng&agrave;y, th&iacute;ch hợp với những ai đang c&oacute; vấn đề về da:</strong> mụn, n&aacute;m, t&agrave;n nhang, xỉn m&agrave;u, bắt đầu l&atilde;o h&oacute;a,&hellip; C&oacute; th&agrave;nh phần chiết xuất từ thi&ecirc;n nhi&ecirc;n, an to&agrave;n cho mọi loại da, gi&uacute;p c&aacute;c bạn nữ c&oacute; thể an t&acirc;m sử dụng m&agrave; kh&ocirc;ng lo dị ứng.<br />
Sữa tắm trắng da cấp tốc BiOshi Tr&agrave; Xanh.<br />
Với th&agrave;nh phần ch&iacute;nh l&agrave; tr&agrave; xanh, chống vi&ecirc;m, gi&uacute;p tẩy tế b&agrave;o chết cho da, c&ugrave;ng với tanin v&agrave; một số vitamin kho&aacute;ng chất gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, loại bỏ b&atilde; nhờn v&agrave; bụi bẩn, đem đến một l&agrave;n da trắng s&aacute;ng kh&ocirc;ng t&igrave; vết chỉ sau 1 tuần sử dụng. C&oacute; thể d&ugrave;ng k&egrave;m với kem trắng da to&agrave;n th&acirc;n BiOshi ngay sau đ&oacute;, mỗi sản phẩm chỉ c&oacute; thể sử dụng 2 lần.</p>

<h4>&nbsp;</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_tu_nhien3.jpg" /></p>

<p><strong>Ưu điểm:</strong> Bảo quản l&acirc;u, sử dụng nhanh, tiết kiệm thời gian. Khuyết điểm: Một số loại mỹ phẩm c&oacute; gi&aacute; kh&aacute; đắt, cần lưu &yacute; điều kiện kinh tế khi mua v&agrave; sử dụng.<br />
Việc l&agrave;m trắng da cấp tốc l&agrave; việc được đa số chị em phụ nữ quan t&acirc;m, nhưng cũng kh&ocirc;ng v&igrave; thế m&agrave; lạm dụng thường xuy&ecirc;n, bởi v&igrave; th&agrave;nh phần của c&aacute;c loại mỹ phẩm l&agrave;m trắng da cấp tốc c&oacute; chất l&agrave;m trắng kh&aacute; mạnh, nếu sử dụng thường xuy&ecirc;n th&igrave; da c&oacute; thể bị b&agrave;o m&ograve;n, kh&ocirc;ng c&ograve;n lớp đề kh&aacute;ng bảo vệ da.<br />
C&aacute;c bạn cũng n&ecirc;n lưu &yacute; học c&aacute;ch ph&acirc;n biệt c&aacute;c loại mỹ phẩm l&agrave;m trắng da cấp tốc như ph&acirc;n biệt bao b&igrave;, m&atilde; vạch, nhận biết được c&aacute;c th&agrave;nh phần g&acirc;y hại cho da để c&oacute; thể bảo vệ được da bạn khỏi tổn hại từ mỹ phẩm rởm. V&agrave; n&ecirc;n nhớ kỹ rằng, chẳng c&oacute; mỹ phẩm n&agrave;o rẻ m&agrave; chất lượng cả.<br />
Hi vọng qua b&agrave;i viết n&agrave;y, c&aacute;c chị em đ&atilde; phần n&agrave;o biết được phương ph&aacute;p l&agrave;m trắng da hiệu quả cho bản th&acirc;n, gi&uacute;p bản th&acirc;n trở n&ecirc;n xinh đẹp hơn tr&ocirc;ng thấy mỗi khi dạo phố hay mặc những bộ c&aacute;nh bắt mắt mỗi khi đi tiệc t&ugrave;ng.</p>
', CAST(N'2019-07-30T14:38:49.000' AS DateTime), NULL)
INSERT [dbo].[News] ([ID], [Name], [MetaTitle], [Description], [Category], [Image], [Detail], [CreatedDate], [CreatedBy]) VALUES (42, N'Cách làm trắng da cấp tốc với mỹ phẩm', N'cach-lam-trang-da-cap-toc-tai-nha', N'Đối với những bạn sở hữu làn da tối màu thì luôn mong muốn mình sẽ có một làn da trắng sáng hơn. Nhưng đi spa hay can thiệp thẩm mỹ lại là cả một vấn đề không phải ai cũng đủ thời gian hay điều kiện để làm, thay vào đó, sử dụng kem làm trắng da cấp tốc lại là một phương pháp hoàn hảo giúp người dùng tiết kiệm được thời gian mà vẫn được như ý muốn. Hôm nay trong bài viết này, mọi người sẽ được tìm hiểu những loại kem làm trắng da cấp tốc phổ biến nhất, cách để giữ làn da luôn trắng sáng mịn màng.', N'Tư vấn da', N'/Uploads/images/Advisory/cach_lam_trang_da_cap_toc_voi_my_pham1.jpg', N'<h4>Mỹ phẩm l&agrave;m trắng da cấp tốc với mỹ phẩm l&agrave;m trắng da an to&agrave;n c&oacute; g&igrave; kh&aacute;c nhau?</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_voi_my_pham1.jpg" /></p>

<p><strong>Mỹ phẩm trắng da an to&agrave;n</strong> Th&agrave;nh phần chủ yếu l&agrave; vitamin C, azelaic acid, AHA (acid lactic, acid citric, acid malic&hellip;), niacinamide (một dạng của vitamin B), kojic acid&hellip; Hiện tại, c&oacute; kh&aacute; nhiều thương hiệu mỹ phẩm uy t&iacute;n như Shiseido, Neostrata, Timeless &hellip; sử dụng c&aacute;c hoạt chất n&agrave;y trong sản phẩm dưỡng trắng. Thời gian kem ph&aacute;t huy t&aacute;c dụng t&ugrave;y thuộc v&agrave;o cơ địa, nhưng nhanh nhất cũng tầm 1 th&aacute;ng da mới l&ecirc;n tone r&otilde; rệt.<br />
<strong>Mỹ phẩm l&agrave;m trắng da cấp tốc</strong> Thường c&oacute; những th&agrave;nh phần l&agrave;m da si&ecirc;u trắng trong thời gian si&ecirc;u nhanh. Những loại th&agrave;nh phần n&agrave;y ph&aacute; hủy tế b&agrave;o v&agrave; sản sinh tế b&agrave;o mới. Gi&uacute;p da trắng l&ecirc;n sau v&agrave;i ng&agrave;y, thậm ch&iacute; l&agrave; chỉ trong một đ&ecirc;m.<br />
<strong>V&igrave; sao người ta lại ưa chuộng kem trắng da cấp tốc hơn?</strong> Bởi v&igrave; bản chất n&oacute; gi&uacute;p cho da trở n&ecirc;n trắng s&aacute;ng tức th&igrave;, ai chẳng muốn hiệu quả ngay từ đầu sử dụng, cho n&ecirc;n kem trắng da cấp tốc trở th&agrave;nh một loại kem được ưa chuộng h&agrave;ng đầu v&agrave; được săn đ&oacute;n kh&aacute; nhiều tr&ecirc;n c&aacute;c trang mua b&aacute;n mỹ phẩm.</p>

<h4>Kem l&agrave;m trắng da cấp tốc:</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_voi_my_pham2.jpg" /></p>

<p>Hiện nay tr&ecirc;n thị trường b&agrave;y b&aacute;n kh&aacute; nhiều loại kem trắng da cấp tốc với đầy đủ c&aacute;c mẫu m&atilde; v&agrave; gi&aacute; cả kh&aacute;c nhau. Kem trắng da cấp tốc cũng c&oacute; loại từ v&agrave;i trăm cho tới v&agrave;i triệu, đối với d&ograve;ng cao cấp th&igrave; kể đến Shiseido, botanic,... c&ograve;n d&ograve;ng ở ph&acirc;n kh&uacute;c trung b&igrave;nh th&igrave; n&oacute;i tới Olay, Nivea,... Khi mua h&agrave;ng cần lưu &yacute; đến điều kiện kinh tế để c&oacute; thể chọn ra một loại mỹ phẩm ph&ugrave; hợp với t&uacute;i tiền v&agrave; h&agrave;i l&ograve;ng với bản th&acirc;n nhất!<br />
B&ecirc;n cạnh đ&oacute;, sử dụng kem trắng da cấp tốc cũng phải ph&ugrave; hợp với l&agrave;n da của bạn, v&iacute; dụ nếu thuộc tu&yacute;p da nhạy cảm, n&ecirc;n hạn chế sử dụng liệu ph&aacute;p n&agrave;y v&igrave; n&oacute; ho&agrave;n to&agrave;n kh&ocirc;ng tốt, đối với những ai thuộc tu&yacute;p da dầu hoặc nhờn, sử dụng d&ograve;ng kem c&oacute; t&iacute;nh kiềm dầu v&agrave; tẩy tế b&agrave;o chết tốt. C&ograve;n đối với những ai thuộc tu&yacute;p da hỗn hợp, tốt nhất n&ecirc;n tham khảo &yacute; kiến b&aacute;c sĩ trước khi sử dụng bất kỳ loại kem l&agrave;m trắng da cấp tốc n&agrave;o!</p>

<h4>&nbsp;</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_voi_my_pham3.jpg" /></p>

<p>Bạn c&oacute; thể tham khảo sản phẩm cao cấp thuộc d&ograve;ng Shiseido c&oacute; t&ecirc;n Shiseido White Lucent All Day Brightener N, đ&acirc;y l&agrave; bộ mỹ phẩm gi&uacute;p l&agrave;m trắng da, dưỡng ẩm v&agrave; bảo vệ da khỏi t&aacute;c động b&ecirc;n ngo&agrave;i, gi&uacute;p da trắng s&aacute;ng chỉ trong một tuần sử dụng.<br />
Hoặc đối với Olay thuộc ph&acirc;n kh&uacute;c trung b&igrave;nh, bạn c&oacute; thể t&igrave;m đến bộ dưỡng trắng da 7 Day Whitening Program Glutathione Special Kit, với chu tr&igrave;nh l&agrave;m trắng da, x&oacute;a mờ th&acirc;m n&aacute;m chỉ sau 7 ng&agrave;y sử dụng l&agrave;m da trở n&ecirc;n s&aacute;ng l&ecirc;n tr&ocirc;ng thấy, gi&uacute;p bạn tự tin rạng ngời ở mọi l&uacute;c mọi nơi.<br />
V&agrave; cũng kh&ocirc;ng thể kh&ocirc;ng kể nh&atilde;n hiệu BiOshi của Nhật Bản, đặc biệt l&agrave; d&ograve;ng sữa tắm trắng cấp tốc BiOshi đ&ocirc;ng tr&ugrave;ng hạ thảo, th&iacute;ch hợp với mọi loại da, chống vi&ecirc;m da hiệu quả. Sau khi tắm xong, b&ocirc;i sữa tắm trắng BiOshi đ&ocirc;ng tr&ugrave;ng hạ thảo l&ecirc;n da tầm 5-10 ph&uacute;t, l&agrave;n da bạn sẽ trở n&ecirc;n trắng s&aacute;ng ngay tức th&igrave;. Kh&ocirc;ng cần đi spa tắm trắng, d&agrave;nh cho những c&ocirc; n&agrave;ng bận rộn.<br />
Tuy nhi&ecirc;n, vẫn c&oacute; phương ph&aacute;p l&agrave;m trắng da cấp tốc ho&agrave;n to&agrave;n từ tự nhi&ecirc;n, nhưng c&oacute; một v&agrave;i bất cập nếu bạn l&agrave; một người bận rộn. V&igrave; thứ nhất, bạn phải t&igrave;m mua nguy&ecirc;n liệu, tự tay l&agrave;m v&agrave; chỉ sử dụng được một lần. C&ograve;n nếu sử dụng mỹ phẩm th&igrave; những c&ocirc;ng đoạn n&agrave;y được r&uacute;t gọn hẳn đi, bảo quản được l&acirc;u v&agrave; kh&ocirc;ng tốn thời gian khi sử dụng<br />
Qua đ&acirc;y, chắc hẳn c&aacute;c c&ocirc; n&agrave;ng đ&atilde; biết được l&agrave;m thế n&agrave;o để gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng cấp tốc đ&uacute;ng kh&ocirc;ng n&agrave;o? Nhưng cũng phải lưu &yacute; một điều, đ&oacute; ch&iacute;nh l&agrave; ng&agrave;y nay, thị trường mỹ phẩm thật giả lẫn lộn, cần c&oacute; c&aacute;i nh&igrave;n s&aacute;ng suốt hơn trong việc chọn mua mỹ phẩm, n&ecirc;n đến những trung t&acirc;m lớn c&oacute; uy t&iacute;n để mua được sản phẩm an to&agrave;n ph&ugrave; hợp với bản th&acirc;n nhất.</p>

<h4>C&aacute;ch ph&acirc;n biệt mỹ phẩm thật giả</h4>

<p><img alt="Da thường" class="d-block mx-auto py-3 w-75" src="/Content/Image/Advisory/cach_lam_trang_da_cap_toc_voi_my_pham4.jpg" /></p>

<p>C&aacute;ch bảo quản mỹ phẩm l&agrave;m trắng da cấp tốc: Tr&aacute;nh tiếp x&uacute;c với &aacute;nh nắng hay những nơi ẩm ướt. Đ&oacute;ng kỹ nắp khi sử dụng, tr&aacute;nh trường hợp vi khuẩn x&acirc;m nhập. V&agrave; điều quan trọng hơn l&agrave; đọc kỹ hướng dẫn trước khi sử dụng để tr&aacute;nh những t&aacute;c hại kh&ocirc;ng mong muốn. B&agrave;i viết n&agrave;y chắc hẳn sẽ gi&uacute;p &iacute;t được phần n&agrave;o cho c&aacute;c bạn c&oacute; l&agrave;n da đen sạm v&agrave; muốn cải thiện ch&uacute;ng, hi vọng rằng c&aacute;c bạn sẽ nhanh ch&oacute;ng lột x&aacute;c, trở th&agrave;nh một c&ocirc; n&agrave;ng rạng ngời tự tin hơn trước đ&aacute;m đ&ocirc;ng. Ch&uacute;c c&aacute;c bạn c&oacute; một ng&agrave;y tr&agrave;n đầy may mắn v&agrave; niềm vui trong cuộc sống.</p>
', CAST(N'2019-07-30T14:39:48.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (16, N'Serum trắng da mặt Trà Xanh 10ml', N'serum-trang-da-mat-tra-xanh-10ml', N'Da mặt trắng sáng sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9333.jpg', N'<h5><strong><span style="font-size:16px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p><strong>Serum trắng da mặt BiOshi Tr&agrave; Xanh</strong>&nbsp;với c&ocirc;ng thức vượt trội c&oacute;&nbsp;<strong>EGCG</strong>&nbsp;v&agrave;&nbsp;<strong>Polyphenol</strong>&nbsp;chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da.&nbsp;<br />
Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 10ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000442/19/CBMP-HCM</p>

<h5><strong><span style="font-size:16px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Phenoxy Ethanol; Aloevera Extract Potassium Sorbate Sodium Benzoate; Propane-1,2,3-Triol; Propane-1,2-Diol; Triethanolamide; Polyphenol; Acrylamide/Sodium Acryloyldimethyl Taurate Copolymer (Anionic, PH2-10); EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><span style="font-size:16px"><strong>Hướng dẫn sử dụng</strong></span></h5>

<p>Rửa mặt thật sạch, sau đ&oacute; thoa Serum l&ecirc;n. M&aacute;t-xa hai b&ecirc;n g&ograve; m&aacute; theo chiều xoắn ốc để c&aacute;c hoạt chất dễ d&agrave;ng thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem hay Sữa tắm trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:16px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>150.000đ</small></span></h5>
', CAST(N'2019-07-29T17:29:01.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/9327.png" style="height:515px; width:769px" /><img alt="" src="/Uploads/images/9319.png" style="height:515px; width:769px" /><img alt="" src="/Uploads/images/1.png" style="height:468px; width:700px" /><img alt="" src="/Uploads/images/8U9A5067.jpg" style="height:975px; width:650px" /><img alt="" src="/Uploads/images/8U9A5073.jpg" style="height:869px; width:650px" /><img alt="" src="/Uploads/images/8U9A5085.jpg" style="height:1050px; width:700px" /><img alt="" src="/Uploads/images/UpdateSP/SerumTraXanh/8U9A5069.jpg" style="height:1054px; width:1500px" /></p>
', N'Green Tea Whitening Face Serum', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/Retouch/8U9A9333.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (17, N'Kem trắng da mặt Trà Xanh 10g', N'kem-trang-da-mat-tra-xanh-10g', N'Da mặt trắng sáng sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9261.jpg', N'<h5><strong><span style="font-size:16px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem trắng da mặt BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 10g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000742/19/CBMP-HCM</p>

<h5><strong><span style="font-size:16px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:16px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><strong><span style="font-size:16px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>250.000đ</small></span></strong></h5>
', CAST(N'2019-07-29T17:43:37.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh10g/8U9A5055.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh10g/8U9A9251.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh10g/8U9A9276.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh10g/8U9A9289a2.jpg" style="height:1082px; width:1469px" /></p>
', N'Green Tea Whitening Face Cream', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/Retouch/8U9A9261.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (18, N'Kem trắng da mặt Trà Xanh 25g', N'kem-trang-da-mat-tra-xanh-25g', N'Da mặt trắng sáng sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9251.jpg', N'<h5><span style="font-size:18px"><strong>Th&ocirc;ng tin sản phẩm</strong></span></h5>

<p>Kem trắng da mặt BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 10g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 00742/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>390.000đ</small></span></h5>
', CAST(N'2019-07-29T18:22:54.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/8U9A9293.jpg" style="height:768px; width:1040px" /><img alt="" src="/Uploads/images/8U9A9263.jpg" style="height:768px; width:1017px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh25g/8U9A9261.jpg" style="height:1082px; width:1412px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh25g/8U9A9280.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatTraXanh25g/8U9A9264.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/8U9A9277.jpg" style="height:768px; width:1116px" /><img alt="" src="/Uploads/images/8U9A5059(1).jpg" style="height:721px; width:1000px" /><img alt="" src="/Uploads/images/8U9A9679.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/8U9A5055(1).jpg" style="height:900px; width:600px" /></p>
', N'Green Tea Whitening Face Cream', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/Retouch/8U9A9251.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (20, N'Kem trắng da mặt Đông Trùng 25g', N'kem-trang-da-mat-dong-trung-25g', N'Da mặt trắng hồng không tì vết sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9187.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem trắng da mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng hồng mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.<br />
Trọng lượng tịnh: 25g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000447/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; Adenosine/ Cordyceps Sinensis Extract.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng hồng kh&ocirc;ng t&igrave; vết sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>468.000đ</small></span></h5>
', CAST(N'2019-07-29T19:14:04.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/8U9A9177.jpg" style="height:768px; width:525px" /></p>

<p><img alt="" src="/Uploads/images/8U9A9188.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/8U9A9722.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/8U9A5305.jpg" style="height:1125px; width:750px" /><img alt="" src="/Uploads/images/8U9A5310.jpg" style="height:1050px; width:700px" /><img alt="" src="/Uploads/images/8U9A5312.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/8U9A5336.jpg" style="height:1050px; width:700px" /></p>
', N'Cordyceps Whitening Face Cream', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/Retouch/8U9A9187.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (21, N'Kem trắng da mặt Đông Trùng 50g', N'kem-trang-da-mat-dong-trung-50g', N'Da mặt trắng hồng không tì vết sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/files/8U9A9138(2).jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem trắng da mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng hồng mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.<br />
Trọng lượng tịnh: 50g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000447/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; Adenosine/ Cordyceps Sinensis Extract.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>685.000đ</small></span></h5>
', CAST(N'2019-07-29T19:52:16.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/8U9A9167.jpg" style="height:768px; width:533px" /><img alt="" src="/Uploads/images/8U9A9706.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/8U9A9727.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatDongTrung50g/8U9A9175.jpg" style="height:1082px; width:1499px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatDongTrung50g/8U9A9488.jpg" style="height:861px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatDongTrung50g/8U9A9492.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatDongTrung50g/8U9A9495.jpg" style="height:828px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/KemMatDongTrung50g/8U9A9143.jpg" style="height:1082px; width:1499px" /><img alt="" src="/Uploads/images/8U9A5263.jpg" style="height:700px; width:1050px" /><img alt="" src="/Uploads/images/8U9A5267.jpg" style="height:841px; width:1150px" /><img alt="" src="/Uploads/images/8U9A5273.jpg" style="height:738px; width:1000px" /></p>
', N'Cordyceps Whitening Face Cream', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/files/8U9A9138(1).jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (22, N'Serum trắng da mặt Đông Trùng 25ml', N'serum-trang-da-mat-dong-trung-25ml', N'Da mặt trắng hồng không tì vết sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/8U9A9208(1).jpg', N'<h5><strong><span style="font-size:16px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Serum trắng da mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng mịn hơn.<br />
Trọng lượng tịnh: 25ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000448/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Phenoxy Ethanol; Aloevera Extract Potassium Sorbate Sodium Benzoate; Propane-1,2,3-Triol;Propane-1,2-Diol;Triethanolamide; Polyphenol; Acrylamide/Sodium Acryloyldimethyl Taurate Copolymer (Anionic, PH2-10); Adenosine/ Cordyceps Sinensis Extract.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Rửa mặt thật sạch, sau đ&oacute; thoa Serum l&ecirc;n. M&aacute;t-xa hai b&ecirc;n g&ograve; m&aacute; theo chiều xoắn ốc để c&aacute;c hoạt chất dễ d&agrave;ng thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng hồng kh&ocirc;ng t&igrave; vết sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem hay Sữa tắm trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>350.000đ</small></span></h5>
', CAST(N'2019-07-29T19:56:39.770' AS DateTime), N'<p><img alt="" src="/Uploads/images/8U9A9221.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/8U9A9719.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/8U9A5284.jpg" style="height:1050px; width:700px" /><img alt="" src="/Uploads/images/8U9A5275.jpg" style="height:734px; width:1100px" /><img alt="" src="/Uploads/images/8U9A9215.jpg" style="height:768px; width:987px" /></p>
', N'Cordyceps Whitening Face Serum', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/8U9A9208.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (23, N'Sữa rửa mặt Trà Xanh 100ml', N'sua-rua-mat-tra-xanh-100ml', N'Da mặt trắng sáng hơn sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/8U9A9303(1).jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Sữa rửa mặt dưỡng trắng da BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 100ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000443/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; 1-(2,5-Dioxo-4-Imidazolidinyl)Urea; Sodium 2-(2-Dodecyloxysthoxy)Ethyl Sulphate; Sodium Dodecyl Sulphate; 1,3-bis(Hydroxymethyl)-5, 5-Dimethylimidazolidine-2, 4-Dione; Dusium Duhydrogen Ethylenediaminetetracetate; Poly(Acrylanide-Co-Diallyldimethylam; Cocamidopropyl Betaine; Acrylates Copolymer; Potassiumhydroxide; Sodium Chloride; Alovera Extract Potassim Sorbate Sodium Benzoate; Propane-1,2,3-Triol; EGCG/ Camelia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>L&agrave;m ướt mặt bằng nước; sau đ&oacute; tạo bọt sữa rửa mặt với nước rồi m&aacute;t-xa mặt nhẹ nh&agrave;ng theo chuyển động tr&ograve;n để dưỡng chất trong sữa rửa mặt thấm s&acirc;u v&agrave;o trong, l&agrave;m sạch trắng s&aacute;ng da; tiếp đến rửa sạch lại bằng nước lạnh để gi&uacute;p lỗ ch&acirc;n l&ocirc;ng se kh&iacute;t. Sử dụng thường xuy&ecirc;n mỗi buổi s&aacute;ng v&agrave; tối sẽ cho l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum hay Kem trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>175.000đ</small></span></h5>
', CAST(N'2019-07-29T20:02:50.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/8U9A9300.jpg" style="height:768px; width:1121px" /><img alt="" src="/Uploads/images/8U9A9305.jpg" style="height:768px; width:1152px" /><img alt="" src="/Uploads/images/UpdateSP/SuaRuaMatTraXanh100ml/8U9A9296.jpg" style="height:1076px; width:1500px" /><img alt="" src="/Uploads/images/9685.jpg" style="height:600px; width:900px" /><img alt="" src="/Uploads/images/8U9A5096.jpg" style="height:975px; width:650px" /><img alt="" src="/Uploads/images/8U9A5103.jpg" style="height:1050px; width:700px" /><img alt="" src="/Uploads/images/8U9A5112.jpg" style="height:900px; width:600px" /></p>
', N'Green Tea Facial Foam', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/8U9A9303.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (24, N'Sữa rửa mặt Đông Trùng 100ml', N'sua-rua-mat-dong-trung-100ml', N'Da mặt trắng hồng không tì vết sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9097.jpg', N'<h5><span style="font-size:18px"><strong>Th&ocirc;ng tin sản phẩm</strong></span></h5>

<p>Sữa rửa mặt trắng da BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng mịn hơn.<br />
Trọng lượng tịnh: 100ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000449/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>L&agrave;m ướt mặt bằng nước; sau đ&oacute; tạo bọt sữa rửa mặt với nước rồi m&aacute;t-xa mặt nhẹ nh&agrave;ng theo chuyển động tr&ograve;n để dưỡng chất trong sữa rửa mặt thấm s&acirc;u v&agrave;o trong, l&agrave;m sạch trắng s&aacute;ng da; tiếp đến rửa sạch lại bằng nước lạnh để gi&uacute;p lỗ ch&acirc;n l&ocirc;ng se kh&iacute;t. Sử dụng thường xuy&ecirc;n mỗi buổi s&aacute;ng v&agrave; tối sẽ cho l&agrave;n da trắng hồng kh&ocirc;ng t&igrave; vết sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum hay Kem trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng hồng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><strong><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>325.000đ</small></span></strong></h5>
', CAST(N'2019-07-29T20:29:48.973' AS DateTime), N'<p><img alt="" src="/Uploads/images/Intro/9099.png" style="height:603px; width:479px" /><img alt="" src="/Uploads/images/Intro/9112.png" style="height:696px; width:473px" /><img alt="" src="/Uploads/images/Intro/9099.png" style="height:603px; width:479px" /><img alt="" src="/Uploads/images/Intro/8U9A5294.jpg" style="height:1050px; width:700px" /><img alt="" src="/Uploads/images/Intro/8U9A5301.jpg" style="height:1050px; width:700px" /></p>
', N'Cordyceps Facial Foam', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/Retouch/8U9A9097.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (25, N'Kem trắng da toàn thân Trà Xanh 100g', N'kem-trang-da-toan-than-tra-xanh-100g', N'Làn da trắng sáng hơn sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/8U9A9416.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem dưỡng trắng da to&agrave;n th&acirc;n BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 100g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000444/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Sodium Polyacrylate(and) C13-14 Isoparaffin (and) Laurath 7 (Cosmagel 305); Paraffinum Liquidum; Glyceryl Glucoside; Propylene Glycol; Titanium Dioxide; Aluminum Hydroxide; Triethocycaprylylsilane; Stearic Acid; C12-15 Alkyl Benzoate; Fragrance; Diazolidinyl Urea; Methylparaben; Probylparaben; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa một lớp kem mỏng l&ecirc;n to&agrave;n th&acirc;n sau khi l&agrave;m sạch bề mặt da, tiếp đến m&aacute;t-xa nhẹ nh&agrave;ng gi&uacute;p kem thẩm thấu s&acirc;u v&agrave;o b&ecirc;n trong da. Sử dụng cho c&aacute;c loại da v&agrave;o buổi s&aacute;ng v&agrave; tối sẽ c&oacute; l&agrave;n da như mong ước chỉ sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem hay Sữa tắm dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>238.000đ</small></span></h5>
', CAST(N'2019-07-29T20:39:34.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9415.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9690.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/UpdateSP/KemBodyTraXanh/8U9A5174.jpg" style="height:794px; width:600px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5157.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9485.jpg" style="height:400px; width:600px" /></p>
', N'Green Tea Whitening Body Cream', N'Trắng toàn thân', N'san-pham-trang-da', N'trang-toan-than', N'/Uploads/images/Retouch/8U9A9416.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (26, N'Kem dưỡng trắng da toàn thân Đông Trùng 100g', N'kem-duong-trang-da-toan-than-dong-trung-100g', N'Làn da trắng hồng không tì vết sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9517.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem dưỡng trắng da to&agrave;n th&acirc;n BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng hồng mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.<br />
Trọng lượng tịnh: 100g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000450/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Sodium Polyacrylate(and) C13-14 Isoparaffin (and) Laurath 7; Paraffinum Liquidum; Glyceryl Glucoside; Propylene Glycol; Titanium Dioxide; Aluminum Hydroxide; Triethocycaprylylsilane; Stearic Acid; C12-15 Alkyl Benzoate; Fragrance; Diazolidinyl Urea; Methylparaben; Probylparaben; Adenosine/ Cordyceps Sinensis Extract.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa một lớp kem mỏng l&ecirc;n to&agrave;n th&acirc;n sau khi l&agrave;m sạch bề mặt da, tiếp đến m&aacute;t-xa nhẹ nh&agrave;ng gi&uacute;p kem thẩm thấu s&acirc;u v&agrave;o b&ecirc;n trong da. Sử dụng cho c&aacute;c loại da v&agrave;o buổi s&aacute;ng v&agrave; tối sẽ c&oacute; l&agrave;n da như mong ước chỉ sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem hay Sữa tắm dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>250.000đ</small></span></h5>
', CAST(N'2019-07-29T20:49:51.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9516.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9691.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5174.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9673.jpg" style="height:403px; width:600px" /></p>
', N'Cordyceps Whitening Body Cream', N'Trắng toàn thân', N'san-pham-trang-da', N'trang-toan-than', N'/Uploads/images/Retouch/8U9A9517.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (27, N'Sữa tắm dưỡng trắng da Trà Xanh 350ml', N'sua-tam-duong-trang-da-tra-xanh-350ml', N'Làn da trắng hồng không tì vết sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9392.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Sữa tắm dưỡng trắng da BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ những sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho l&agrave;n da khỏe mạnh v&agrave; trắng s&aacute;ng. Với c&ocirc;ng thức &ldquo;3 in 1&rdquo;, Sữa tắm trắng da BiOshi Tr&agrave; Xanh gi&uacute;p bảo vệ, nu&ocirc;i dưỡng v&agrave; k&iacute;ch trắng da.Trắng s&aacute;ng hơn với Tr&agrave; Xanh!.<br />
Trọng lượng tịnh: 350ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000445/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Sodium2-(Dodecyloxyethoxy)Ethysuphate; Acrylates Copolymer; Sodium Dodecyl Sulphate (SLS); 1,3-Bis(Hydroxymrthyl)-5,5-Dimethylimidazolidine-2,4-Dione; Disodium Duhydrogen Ethylenediaminetetraacetate; Cocamidopropyl Betaine; Fragrance; Poly (Acrylamide-Co-Diallyldimethylammonium Chloride); Potassium Hydroxide; Sodium Chloride; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Cho một &iacute;t sản phẩm v&agrave;o l&ograve;ng b&agrave;n tay hoặc b&ocirc;ng tắm sau khi l&agrave;m ướt to&agrave;n th&acirc;n rồi thoa đều từ cổ, vai, tay xuống ch&acirc;n. M&aacute;t-xa tạo bọt đều 10-15 ph&uacute;t cho c&aacute;c hoạt chất ph&aacute;t huy hết c&ocirc;ng dụng, sau đ&oacute; tắm sạch với nước. Sử dụng h&agrave;ng ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng chỉ sau 2-3 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem hay Sữa tắm dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>350.000đ</small></span></h5>
', CAST(N'2019-07-29T20:54:59.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/Retouch/8U9A9460.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/Retouch/8U9A9443.jpg" style="height:768px; width:512px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5193.jpg" style="height:400px; width:600px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5189.jpg" style="height:400px; width:600px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5353.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5358.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/UpdateSP/SuaTamTraXanh350ml/8U9A5199.11.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/SuaTamTraXanh350ml/8U9A5183.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/Intro/2.jpg" style="height:1044px; width:700px" /></p>
', N'Green Tea Body Shower Gel', N'Trắng toàn thân', N'san-pham-trang-da', N'trang-toan-than', N'/Uploads/images/Retouch/8U9A9392.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (28, N'Sữa tắm trắng cấp tốc Trà Xanh 100ml', N'sua-tam-trang-cap-toc-tra-xanh-100ml', N'Làn da trắng sáng tức thì chỉ sau 01 lần dùng (tác dụng trong ngày)', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9431.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Sữa tắm trắng cấp tốc BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 100ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000446/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>D&ugrave;ng nước l&agrave;m sạch da, sau đ&oacute; b&ocirc;i Sữa tắm trắng da cấp tốc BiOshi Tr&agrave; Xanh khoảng 10 -25 ph&uacute;t. Thoa nhẹ to&agrave;n th&acirc;n rồi tắm sạch lại sẽ cho l&agrave;n da trắng s&aacute;ng tức th&igrave;. Sản phẩm ph&ugrave; hợp với mọi loại da v&agrave; c&oacute; t&aacute;c dụng trắng s&aacute;ng trong ng&agrave;y. Thời gian trắng da được giữ l&acirc;u hơn khi d&ugrave;ng k&egrave;m với Kem trắng da to&agrave;n th&acirc;n BiOshi ngay sau đ&oacute;. Mỗi g&oacute;i sản phẩm d&ugrave;ng được 02&nbsp;lần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem trắng da BiOshi hay Kem hoặc Sữa tắm dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>135.000đ</small></span></h5>
', CAST(N'2019-07-29T20:59:01.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/Intro/9421.png" style="height:714px; width:479px" /><img alt="" src="/Uploads/images/Intro/9701.png" style="height:698px; width:486px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5219.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5359.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5214.jpg" style="height:467px; width:700px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9486.jpg" style="height:467px; width:700px" /></p>
', N'Green Tea Instant Body Shower Gel', N'Trắng cấp tốc', N'san-pham-trang-da', N'trang-cap-toc', N'/Uploads/images/Retouch/8U9A9431.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (29, N'Sữa tắm trắng cấp tốc Đông Trùng 100ml', N'sua-tam-trang-cap-toc-dong-trung-100ml', N'Làn da trắng sáng tức thì chỉ sau 01 lần dùng (tác dụng trong ngày)', N'Sản phẩm trắng da', N'/Uploads/images/anh_san_pham/Anh_maximum/8U9A9509.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Sữa tắm trắng cấp tốc BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng hồng mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.<br />
Trọng lượng tịnh: 100ml&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000451/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Sodium 2-(Dodecyloxyethoxy)Ethysuphate; Acrylates Copolymer; Sodium Dodecyl Sulphate(SLS); 1, 3-Bis(Hydroxymrthyl)-5,5-Dimethylimidazolidine-2,4-dione; Disodium Duhydrogen Ethylenediaminetetraacetate; Cocamidopropyl Betaine; Fragrance; Poly(Acrylamide-Co-Diallyldimethylammonium Chloride); Potassium Hydroxide, Sodium Chloride; Adenosine/ Cordyceps Sinensis Extract.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>D&ugrave;ng nước l&agrave;m sạch da, sau đ&oacute; b&ocirc;i Sữa tắm trắng tức th&igrave; BiOshi Tr&agrave; Xanh khoảng 10-25 ph&uacute;t. Thoa nhẹ to&agrave;n th&acirc;n rồi tắm sạch lại sẽ cho l&agrave;n da trắng s&aacute;ng tức th&igrave;. Sản phẩm ph&ugrave; hợp với mọi loại da v&agrave; c&oacute; t&aacute;c dụng trắng s&aacute;ng trong ng&agrave;y. Thời gian trắng da được giữ l&acirc;u hơn khi d&ugrave;ng k&egrave;m với Kem trắng da to&agrave;n th&acirc;n BiOshi ngay sau đ&oacute;. Mỗi g&oacute;i sản phẩm d&ugrave;ng được 02&nbsp;lần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Kem trắng da BiOshi hay Kem hoặc Sữa tắm dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>150.000đ</small></span></h5>
', CAST(N'2019-07-29T21:03:03.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9508.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A9729.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5316.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5320.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5365.jpg" style="height:750px; width:500px" /><img alt="" src="/Uploads/images/anh_san_pham/Anh_minimum/8U9A5225.jpg" style="height:500px; width:750px" /><img alt="" src="/Uploads/images/Retouch/8U9A9672.jpg" style="height:768px; width:1182px" /></p>
', N'Cordyceps Instant Body Shower Gel', N'Trắng cấp tốc', N'san-pham-trang-da', N'trang-cap-toc', N'/Uploads/images/Retouch/8U9A9509.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (30, N'Combo body trà xanh', N'combo-body-tra-xanh', N'Da mặt trắng sáng sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A5327.jpg', N'<h5><span style="font-size:18px"><strong>Th&ocirc;ng tin sản phẩm</strong></span></h5>

<p>Kem trắng da mặt BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 10g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000742/19/CBMP-HCM</p>

<h5><span style="font-size:18px"><strong>Th&agrave;nh phần</strong></span></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><span style="font-size:18px"><strong>Hướng dẫn sử dụng</strong></span></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px"><strong>Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>250.000đ</small></strong></span></h5>
', CAST(N'2019-07-31T00:04:49.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A5204.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A5209.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A9361.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A9366.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A9367.jpg" style="height:1042px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A9371.jpg" style="height:1000px; width:1500px" /></p>
', N'Combo Greentea Body', N'Trắng toàn thân', N'san-pham-trang-da', N'trang-toan-than', N'/Uploads/images/UpdateSP/ComboBodyTraXanh/8U9A9373.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (31, N'Combo trắng mặt đông trùng', N'combo-trang-mat-dong-trung', N'Da mặt trắng sáng sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9646.%20l%E1%BB%9Bn.jpg', N'<h5><strong><span style="font-size:16px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem trắng da mặt BiOshi Tr&agrave; Xanh với c&ocirc;ng thức vượt trội c&oacute; EGCG v&agrave; Polyphenol chiết xuất từ l&aacute; tr&agrave; xanh g&oacute;p phần chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn v&agrave; loại bỏ sắc tố đen gi&uacute;p dưỡng trắng da từ s&acirc;u b&ecirc;n trong v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư da. Sản phẩm c&oacute; Tannin v&agrave; một số Vitamin, Kho&aacute;ng chất thiết yếu cũng gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, sạch b&atilde; nhờn, bụi bẩn v&agrave; khử đi c&aacute;c vi khuẩn tr&ecirc;n da l&agrave;m tăng độ đ&agrave;n hồi, cho da khỏe mạnh v&agrave; trắng s&aacute;ng.<br />
Trọng lượng tịnh: 10g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000742/19/CBMP-HCM</p>

<h5><strong><span style="font-size:16px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; EGCG/ Camellia Sinensis Polyphenol.</p>

<h5><strong><span style="font-size:16px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng s&aacute;ng sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><strong><span style="font-size:16px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>250.000đ</small></span></strong></h5>
', CAST(N'2019-07-31T00:08:02.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A5254.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A5258.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9229.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9240.jpg" style="height:1039px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9626.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9239.jpg" style="height:885px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9666.jpg" style="height:900px; width:600px" /></p>
', N'Combo Cordyceps Whitening Face Cream', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/UpdateSP/ComboTrangMatDongTrung/8U9A9646.%20l%E1%BB%9Bn.jpg')
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [Description], [Product_Line], [Image_Main], [Detail], [CreatedDate], [List_Image], [Heading], [Kindof_Product], [Meta_ProductLine], [Meta_Kindof], [Image_Outside]) VALUES (32, N'Combo trắng mặt trà xanh', N'combo-trang-mat-tra-xanh', N'Da mặt trắng sáng sau hơn 01 tuần', N'Sản phẩm trắng da', N'/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A5141.jpg', N'<h5><strong><span style="font-size:18px">Th&ocirc;ng tin sản phẩm</span></strong></h5>

<p>Kem trắng da mặt BiOshi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo với c&ocirc;ng thức vượt trội, đặc biệt c&oacute; ADENOSINE chiết xuất từ Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo g&oacute;p phần chống k&iacute;ch ứng, kh&aacute;ng vi&ecirc;m da; chống l&atilde;o h&oacute;a bởi giảm c&aacute;c vết rạn ch&acirc;n chim, l&agrave;m đầy r&atilde;nh nhăn v&agrave; hiện tượng chảy xệ tr&ecirc;n da do k&iacute;ch th&iacute;ch tế b&agrave;o tự sản xuất c&aacute;c sợi Ellastin v&agrave; Collagen; đồng thời l&agrave;m s&aacute;ng da do th&uacute;c đẩy tế b&agrave;o hoạt động v&agrave; t&aacute;i tạo tế b&agrave;o mạnh nhằm đ&agrave;o thải c&aacute;c hắc tố g&acirc;y sạm, n&aacute;m, t&agrave;n nhang gi&uacute;p da trắng hồng mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.<br />
Trọng lượng tịnh: 25g&nbsp;<br />
Ti&ecirc;u chuẩn chất lượng: ISO 9001: 2015&nbsp;<br />
Số c&ocirc;ng bố: 000447/19/CBMP-HCM</p>

<h5><strong><span style="font-size:18px">Th&agrave;nh phần</span></strong></h5>

<p>Aqua; Glyceryl Stearate; Polyglyceryl-10 Stearate; Behenyl Alcohol; Polyglyceryl-10 Pentastearate; Sodium Stearoyl Lactylate; Crocus Sativus Flower Extract; Royal Jelly Extract; Squalane; Butylene Glycol; Polyacrylate-13; Polyisobutene; Ceramide 3; Sodium Hyaluronate; Ethylhexylglycerin; Chlorphenesin; Propanediol; Ganodrma Sinensis Extract; Panax Ginseng Extract; Elastin; Adenosine/ Cordyceps Sinensis Extract.</p>

<h5><strong><span style="font-size:18px">Hướng dẫn sử dụng</span></strong></h5>

<p>Thoa lớp kem mỏng l&ecirc;n mặt sau khi rửa mặt sạch. Thoa đều theo h&igrave;nh xoắn ốc rồi vỗ nhẹ để kem thẩm thấu s&acirc;u v&agrave;o da. Sử dụng cho c&aacute;c loại da với tần suất 2-3 lần mỗi ng&agrave;y sẽ c&oacute; l&agrave;n da trắng hồng kh&ocirc;ng t&igrave; vết sau 01 tuần. Khuyến kh&iacute;ch d&ugrave;ng th&ecirc;m với Serum trắng da BiOshi hoặc Kem dưỡng da BiOri để tăng cường trắng s&aacute;ng, mịn m&agrave;ng cho l&agrave;n da.</p>

<h5><span style="font-size:18px">Gi&aacute; b&aacute;n lẻ đề nghị:&nbsp;<small>468.000đ</small></span></h5>
', CAST(N'2019-07-31T00:10:03.000' AS DateTime), N'<p><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A5148.jpg" style="height:856px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A9346.jpg" style="height:1000px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A5141.jpg" style="height:900px; width:600px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A9354a.jpg" style="height:1080px; width:1500px" /><img alt="" src="/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A9358.jpg" style="height:1000px; width:1500px" /></p>
', N'Combo Greentea Whitening Face Cream', N'Trắng mặt', N'san-pham-trang-da', N'trang-mat', N'/Uploads/images/UpdateSP/ComboTrangMatTraXanh/8U9A9354.1.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[SelectProduct]    Script Date: 8/2/2019 3:05:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectProduct]
	-- Add the parameters for the stored procedure here
	@Meta_Kindof varchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Product P where P.Meta_Kindof like '%' + @Meta_Kindof +'%' 
END
GO
USE [master]
GO
ALTER DATABASE [VibotaniDB] SET  READ_WRITE 
GO
