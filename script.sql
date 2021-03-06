USE [MusicWeb]
GO
/****** Object:  Table [dbo].[tblMusic]    Script Date: 3/19/2021 9:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMusic](
	[iDmusic] [int] IDENTITY(1,1) NOT NULL,
	[iDacc] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Data] [nvarchar](max) NOT NULL,
	[Cotenttype] [nvarchar](max) NULL,
	[luotnghe] [int] NULL,
	[casi] [nvarchar](50) NULL,
	[idchude] [int] NULL,
 CONSTRAINT [PK_Music] PRIMARY KEY CLUSTERED 
(
	[iDmusic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chude]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chude](
	[IDchude] [int] IDENTITY(1,1) NOT NULL,
	[theloai1] [nvarchar](50) NULL,
	[theloai2] [nvarchar](50) NULL,
	[theloai3] [nvarchar](50) NULL,
	[idacc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDchude] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[xemnhac]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[xemnhac]
as
select tblMusic.iDmusic ,tblMusic.iDacc, tblMusic.DisplayName,tblMusic.Image,tblMusic.Data,
tblMusic.casi,tblMusic.Cotenttype,tblMusic.luotnghe ,chude.theloai1,chude.theloai2,chude.theloai3
from tblMusic,chude
where tblMusic.idchude=chude.IDchude 
GO
/****** Object:  View [dbo].[nhacvpop]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[nhacvpop]
as select tblMusic.iDmusic ,tblMusic.iDacc, tblMusic.DisplayName,tblMusic.Image,tblMusic.Data,
tblMusic.casi,tblMusic.Cotenttype,tblMusic.luotnghe ,chude.theloai1,chude.theloai2,chude.theloai3
from tblMusic,chude
where tblMusic.idchude=chude.IDchude  and  tblMusic.iDmusic>=45 and  tblMusic.iDmusic<=50
group by   tblMusic.iDmusic ,tblMusic.iDacc, tblMusic.DisplayName,tblMusic.Image,tblMusic.Data,
tblMusic.casi,tblMusic.Cotenttype,tblMusic.luotnghe ,chude.theloai1,chude.theloai2,chude.theloai3 
GO
/****** Object:  View [dbo].[nhacmoi]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[nhacmoi]
as select top 50 tblMusic.iDmusic ,tblMusic.iDacc, tblMusic.DisplayName,tblMusic.Image,tblMusic.Data,
tblMusic.casi,tblMusic.Cotenttype,tblMusic.luotnghe ,chude.theloai1,chude.theloai2,chude.theloai3
from tblMusic,chude
where tblMusic.idchude=chude.IDchude  
group by   tblMusic.iDmusic ,tblMusic.iDacc, tblMusic.DisplayName,tblMusic.Image,tblMusic.Data,
tblMusic.casi,tblMusic.Cotenttype,tblMusic.luotnghe ,chude.theloai1,chude.theloai2,chude.theloai3 
order by iDmusic DESC
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount](
	[IDacount] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[imange] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED 
(
	[IDacount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theloai]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theloai](
	[IDtheloai] [nvarchar](50) NOT NULL,
	[Tentheloai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDtheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chude] ON 

INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (1, N'Nhạc Trịnh', N'Indie', N'Nhạc Hàn', N'admin')
INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (55, N'Jazz', N'Indie', N'Nhạc Âu Mỹ', N'thang')
INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (62, N'Indie', N'Nhạc Việt', N'R&B', N'thang')
INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (68, N'Rap', N'Nhạc Việt', N'', N'thang')
INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (69, N'Nhạc Phim', N'Nhạc Việt', N'', N'thang')
INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (70, N'Indie', N'Nhạc Việt', N'', N'thang')
INSERT [dbo].[chude] ([IDchude], [theloai1], [theloai2], [theloai3], [idacc]) VALUES (71, N'R&B', N'Nhạc Việt', N'', N'thang')
SET IDENTITY_INSERT [dbo].[chude] OFF
GO
INSERT [dbo].[tblAccount] ([IDacount], [Password], [Name], [email], [ngaysinh], [gioitinh], [imange]) VALUES (N'123155', N'12312412', N'Nguyễ', N'huuthang.nguyen.986@gmail.com', N'May  5 1999 12:00AM', N'0', NULL)
INSERT [dbo].[tblAccount] ([IDacount], [Password], [Name], [email], [ngaysinh], [gioitinh], [imange]) VALUES (N'admin', N'1', N'admin', N'huuthang.nguyen.986@gmail.com', N'7/23/1999', N'Nam', NULL)
INSERT [dbo].[tblAccount] ([IDacount], [Password], [Name], [email], [ngaysinh], [gioitinh], [imange]) VALUES (N'thang', N'1', N'Thắng', N'huuthang.nguyen/986@gmial.com', N'5/5/1999', N'Nam', NULL)
INSERT [dbo].[tblAccount] ([IDacount], [Password], [Name], [email], [ngaysinh], [gioitinh], [imange]) VALUES (N'user1', N'1', N'Nguyễn Văn A', N'huuthang.nguyen.986@gmail.com', N'Jul  3 1999 12:00AM', N'Nữ', NULL)
INSERT [dbo].[tblAccount] ([IDacount], [Password], [Name], [email], [ngaysinh], [gioitinh], [imange]) VALUES (N'user2', N'thang123', N'Nguyễn Hữu A', N'huuthang.nguyen.986@gmail.com', N'May  4 1999 12:00AM', N'0', NULL)
GO
SET IDENTITY_INSERT [dbo].[tblMusic] ON 

INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (40, N'admin', N'Em Say Rồi', N'/image/emsairoi.jpg', N'music/EmSaiRoi-Thuongvo,ACV.mp3', N'EM SAY RỒI – CS.THƯƠNG VÕ  Em say, anh có thể đến đây không Có thể để em ôm lấy anh không Đừng trách móc sao em quá phiền Cũng đừng hỏi em điên hay sao Dù đã chia tay cũng chẳng vô tâm đến vậy  Em say, 1 2 3 4 5 ly Chẳng đắng bằng nước mắt ở trên mi Dù ai hỏi em đang buồn gì Em cũng nói em đâu có gì Cảm giác chia ly chẳng ai thấu hiểu được  Hãy đưa em về đi anh ơi, em say rồi Hãy ôm em chặt đi anh ơi, em say rồi Vì say mới nói nhớ anh nhớ đến điên dại Có lẽ là vì say mới muốn bên anh thôi Có lẽ là vì say mới nói còn yêu anh Người ta bảo say sẽ quên mà sao em nhớ thêm  Anh ơi, liệu mình có thể quay lại Chẳng phải còn yêu nhau đến như vậy Bạn em mắng sao em khờ dại Tim đã vỡ như hoa phai tàn Kẻ ngốc như em vì yêu đến chẳng màng  Hãy đưa em về đi anh ơi em say rồi Hãy ôm em chặt đi anh ơi em say rồi Vì say mới nói nhớ anh nhớ đến điên dại Có lẽ là vì say mới muốn bên anh thôi Có lẽ là vì say mới nói còn yêu anh Người ta bảo say sẽ quên mà sao em nhớ thêm  Hoài niệm là một mê cung vô vọng Rượu là một ly men thuốc độc Rượu nào chẳng say tình yêu nào không chua cay Vì một người dưng mà ta phải đau vậy  Chắc anh chưa từng điên khi yêu thương một người Chắc anh chưa từng say khi quên đi một người Miệng cười mà những nỗi đau lạnh buốt trong đầu  Chẳng phải là vì say mới muốn bên anh đâu Chẳng phải là vì say mới nói còn yêu anh Thật ra em đâu có say em đâu có say..  Thật ra em đâu có say… Anh đâu có hay…', 0, N'Thương Võ , AVC', 1)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (41, N'thang', N'Hết Thời', N'/image/8246ddb97803da19aaa7cb5039e26671.jpg', N'music/Het Thoi - Ngot.mp3', N' Content1', 0, N'Ngọt Band', 62)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (42, N'thang', N' Tên Nhạc', N'/image/8246ddb97803da19aaa7cb5039e26671.jpg', N'music/Lan Cuoi - Ngot.mp3', N' Content', 0, N' Người sáng tác', 55)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (43, N'thang', N'Đưa nhau đi trốn', N'/image/duanhauditron.jpg', N'music/Duanhauditron.mp3', N'Bố em hút rất nhiều thuốc
Mẹ em khóc mắt lệ nhoà
Bố anh thì đi lại còn mẹ anh gọi điện thoại đến từng nhà
Nhiều ngày rồi mình không về, không liên lạc được gì cả
Chỉ vỏn vẹn mảnh giấy "đừng lo, đêm nay con đi chơi xa"
Em ơi đi trốn với anh
Mình đi đến nơi có biển bạc núi xanh
Chạy con xe anh chở em tròng trành
Mình phóng tầm mắt ngắm chân trời mới toanh
Mình ngủ một giấc mà không cần báo thức
Giờ này mọi khi anh đang trong ca trực
Em thì đang lo ngày mai giảng đường
Ôi những thứ chán chường không tẹo nào háo hức
Mình rời thành phố chật chội náo nức
Nơi mà cả việc thở cũng làm ta lao lực
Mơ những con đường xa làm anh thấy rạo rực
Muốn đưa em đi trốn đến tận cùng trái đất
Anh chẳng cần biết là ngày nắng đẹp rạng ngời
Hay gió về, hay bão táp mưa rơi
Ngày mình đi với nhau ấy là ngày đẹp trời
Thì theo anh đi trốn em ơi

[Chorus: Linh Cáo]
Thật lòng em mơ, mơ cùng anh đi đến tận cùng
Tận cùng chân mây vượt núi cao hay biển sâu
Biết mấy là yêu cho vừa
Giết mấy thời gian cho vừa
Khi yêu ta mơ về nhau
Để thấy lắm lúc lòng mình nhẹ nhiều khi
Muốn ném hết tất cả để mà đi
Một lần mình sống như những đứa nhóc không nhà
Sớm thức dậy ở một nơi xa', 0, N'Đen Vâu', 68)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (45, N'thang', N'Ánh nắng của anh', N'/image/anhnag.png', N'music/AnhNangCuaAnhChoEmDenNgayMaiOst-DucPhuc-4701036.mp3', N'Bài hát: Ánh Nắng Của Anh (Chờ Em Đến Ngày Mai OST) - Nguyễn Đức Phúc
Từ bao lâu nay anh cứ mãi cô đơn bơ vơ
Bao lâu rồi ai đâu hay
Ngày cứ thế trôi qua miên man
Riêng anh một mình nơi đây
Những phút giây trôi qua tầm tay
Chờ một ai đó đến bên anh
Lặng nghe những tâm tư này
Là tia nắng ấm
Là em đến bên anh
Cho vơi đi ưu phiền ngày hôm qua
Nhẹ nhàng xóa đi bao mây đen vây quanh cuộc đời nơi anh
Phút giây anh mong đến tình yêu ấy
Giờ đây là em người anh mơ ước bao đêm
[ĐK]
Sẽ luôn thật gần bên em
Sẽ luôn là vòng tay ấm êm
Sẽ luôn là người yêu em
Cùng em đi đến chân trời
Lắng nghe từng nhịp tim anh
Lắng nghe từng lời anh muốn nói
Vì em luôn đẹp nhất khi em cười
Vì em luôn là tia nắng trong anh
Không xa rời.
Bình minh dẫn lối
Ngày sau có em luôn bên anh trên con đường ta chung lối
Niềm hạnh phúc như trong cơn mơ
Chưa bao giờ anh nghĩ tới
Phút giây ta trao nhau tình yêu ấy
Giờ đây là em
Người anh sẽ mãi không quên', 0, N'Đức Phúc', 69)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (46, N'thang', N'Nàng Thơ', N'/image/nagtho.jpg', N'music/NangTho-HoangDung-6413381.mp3', N'Lời Bài Hát:
Em, ngày em đánh rơi nụ cười vào anh
Có nghĩ sau này em sẽ chờ
Và vô tư cho đi hết những ngây thơ
Anh, một người hát mãi những điều mong manh
Lang thang tìm niềm vui đã lỡ
Chẳng buồn dặn lòng quên hết những chơ vơ
Ta yêu nhau bằng nỗi nhớ chưa khô trên những bức thư
Ta đâu bao giờ có lỗi khi không nghe tim chối từ
Chỉ tiếc rằng
Em không là nàng thơ
Anh cũng không còn là nhạc sĩ mộng mơ
Tình này nhẹ như gió
Lại trĩu lên tim ta những vết hằn
Tiếng yêu này mỏng manh
Giờ tan vỡ, thôi cũng đành
Xếp riêng những ngày tháng hồn nhiên
Trả lại...
Mai, rồi em sẽ quên ngày mình khờ dại
Mong em kỷ niệm này cất lại
Mong em ngày buồn thôi ướt đẫm trên vai
Mai, ngày em sải bước bên đời thênh thang
Chỉ cần một điều em hãy nhớ
Có một người từng yêu em tha thiết vô bờ
Em không là nàng thơ
Anh cũng không còn là nhạc sĩ mộng mơ
Tình này nhẹ như gió
Lại trĩu lên tim ta những vết hằn
Tiếng yêu này mỏng manh
Giờ tan vỡ, thôi cũng đành
Xếp riêng những ngày tháng hồn nhiên
Trả hết cho em', 0, N'Hoàng Dũng', 69)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (47, N'thang', N'Có Em Chờ', N'/image/coemcho.jpg', N'music/CoEmChoOrchestraVersion-MIN-5130422.mp3', N'Lời Bài Hát:
Bài hát: Có Em Chờ (Orchestra Version) - MIN
Từ lần đầu tiên ta đi bên nhau
Em đã biết tim mình đánh rơi rồi
Từ lần đầu tiên môi hôn trao nhau
Em đã biết không thể yêu thêm ai.
Cách anh cười cong môi, cách anh lặng lẽ ngồi
Ngồi nhìn bóng tối lặng thầm thời gian trôi.
Người đàn ông em yêu đôi khi
Có những phút giây yếu đuối không ngờ
Ngoài kia nếu có khó khăn quá về nhà anh nhé
Có em chờ!
Có môi mềm thơm thơm, có dư vị mỗi bữa cơm
Xuân hạ thu đông đều có em chờ.
[Rap:]
Yoo, có định mệnh nào bao nhiêu lâu anh đã ao ước
Có vần thơ nào bao nhiêu đêm anh đi tìm hoài
Và nếu khoảng cách là một nghìn bước
Thì em chỉ cần bước một bước
Anh sẽ bước chín trăm chín mươi chín bước còn lại.
Bước về phía em
Nơi mà em thấy nắng mai
Nơi con tim anh biết yên bình
Và mong thế thôi.
[ĐK:]
Tình yêu là những ánh sáng lấp lánh
Đèn vàng thắp lên bên ô cửa nhỏ
Tình yêu là những dịu êm từng đêm
Mình cùng ăn tối và nghe mưa rơi.
Biết sẽ có những lúc trái tim đau đớn khôn nguôi
Vẫn yêu và yêu và yêu thế thôi.
[Rap:]
Và lần đầu tiên con tim như rụng rời
Lần đầu tiên anh không nói nên lời
Giấc mơ nào có đâu xa
Tình yêu đâu có hai ta
Nơi tóc em quá mượt mà
Con phố xưa đón đưa và
Em sẽ yêu mãi anh tháng năm dài.
Bao nhiêu tháng ngày tăm tối
Khi mà có em ngày qua
Nỗi buồn cũng phải buông trôi
Khi giờ ta có em và
Một ngàn khúc ca quanh ta
Xin em đừng giận anh nha
Bởi vì đôi khi anh là.', 0, N'Min', 69)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (48, N'thang', N'Gác lại âu lo ', N'/image/gaclo.jpg', N'music/GacLaiAuLo-DaLABMiuLe-6360815.mp3', N'Lời Bài Hát:
Anh đi lạc trong sóng gió cuộc đời
Nào biết đâu sớm mai liệu bình yên có tới?
Âu lo chạy theo những ánh sao đêm
Ngày cứ trôi chớp mắt thành phố đã sáng đèn
Ta cứ lặng lẽ chạy thật mau, yêu thương chẳng nói kịp thành câu...
Biết đâu liệu mai còn thấy nhau?
Thức giấc để anh còn được thấy ánh mắt của em nhẹ nhìn anh, đôi tay này sẽ không xa rời
Tạm gác hết những âu lo lại, cùng anh bước trên con đường
Ta sẽ không quay đầu để rồi phải tiếc nuối những chuyện cũ đã qua
Giữ trái tim luôn yên bình và quên hết những ưu phiền vấn vương
Cuộc đời này được bao lần nói yêu
Anh biết nơi để quay về, em biết nơi phải đi
Anh biết chỗ trú chân dọc đường để tránh cơn mưa hạ đến mỗi chiều
Ta biết trao nhau ân cần, biết mỗi khi vui buồn có nhau
Thời gian để ta trưởng thành với nhau
Nhảy với anh đến khi đôi chân rã rời
Hát anh nghe những câu ca từ ngày xưa cũ
Thì thầm khẽ anh nghe em vẫn còn bao niềm mơ
Ôm lấy anh nghe mưa đầu mùa ghé chơi
Một giây không thấy nhau như một đời cô đơn quá
Trời mù mây bỗng nhiên ngát xanh khi em khẽ cười
Một ngày anh biết hết nguyên do của những yên vui trong đời
Ngày mà duyên kiếp kia đưa ta gần lại với nhau
Tạm Gác hết những âu lo lại, cùng anh bước trên con đường
Ta sẽ không quay đầu để rồi phải tiếc nuối những chuyện cũ đã qua
Giữ trái tim luôn yên bình và quên hết những ưu phiền vấn vương
Cuộc đời này được bao lần nói yêu
Anh biết nơi để quay về, em biết nơi phải đi
Anh biết chỗ trú chân dọc đường để tránh cơn mưa hạ đến mỗi chiều
Ta biết trao nhau ân cần, biết mỗi khi vui buồn có nhau
Thời gian để ta trưởng thành với nhau
Bờ vai anh rộng đủ để che chở cho emmmmm
Was a boy now a man cho emmm
Từng đi lạc ở trong thế giới điên zồ ngoài kia
Và tình yêu em trao anh ngày ấy đã mang anh về bên emmmm
Yêu em như a Fat kid loves cake
Nhắm mắt cảm nhận tình yêu tan dịu ngọt trên môi khi em hôn môi anh đây, yo
Không phải happy ending, mỗi bình minh ta viết thêm trang mới, nối dài câu chuyện mình
Như trong mơ nơi xa kia xanh biếc xanh biếc
Thiên đàng bên em nơi đây anh biết anh biết
Bóng đêm đã qua yên bình có thêm chúng ta nghe lòng đàn từng câu ca
Cuộc đời này chẳng hề hối tiếc
Những tháng năm ta đi cùng nhau
Anh biết em luôn ở đó nơi anh thuộc về
Tạm Gác hết những âu lo lại, cùng anh bước trên con đường
Ta sẽ không quay đầu để rồi phải tiếc nuối những chuyện cũ đã qua
Giữ trái tim luôn yên bình và quên hết những ưu phiền vấn vương
Cuộc đời này được bao lần nói yêu
Anh biết nơi để quay về, em biết nơi phải đi
Anh biết chỗ trú chân dọc đường để tránh cơn mưa hạ đến mỗi chiều
Ta biết trao nhau ân cần, biết mỗi khi vui buồn có nhau
Thời gian để ta trưởng thành với nhau

', 0, N'Da LAB,Miu Lê', 68)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (49, N'thang', N'Hoa Nở Không Màu', N'/image/maxresdefault.jpg', N'music/HoaNoKhongMau1-HoaiLam-6281704.mp3', N'Chỉ là nỗi nhớ mãi đứng sau cuộc tình đã lỡ
Chỉ là cơn mơ cuốn theo cả một trời thương nhớ
Chỉ là nỗi đau thổn thức, chỉ là nhói thêm một chút
Chỉ là nước mắt cứ rưng rưng
Tìm về kí ức cố xoá đi đoạn tình ban sơ
Rồi lại chơ vơ đứng giữa nơi đại lộ tan vỡ
Mãi chìm đắm trong lầm lỡ
Trái tim vẫn không ngừng nhớ
Đợi chờ em đến hoá ngu ngơ
Tình yêu đã phai mờ như hoa nở không màu
Càng níu kéo nhưng lại càng xa cách nhau
Đành ôm nỗi đau này chết lặng giữa trời mây
Hằn lại sâu trong trái tim hao gầy
Giờ đây chúng ta là hai người dưng khác lạ
Buồn biết mấy nhưng lại chẳng thể nói ra
Cuộc đời lắm vô thường, sao cứ mãi vấn vương
Tự mình ôm lấy tổn thương riêng mình !
Chỉ là anh cố chấp luôn âm thầm
Bước về phía nắng ấm tìm em
Thế mà cơn mưa đêm xoá hết kỷ niệm
Chỉ còn lại xác xơ nỗi nhớ !', 0, N'Hoài Lâm', 70)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (50, N'thang', N'Túy Âm', N'/image/maxresdefault (1).jpg', N'music/TuyAm-XesiMasewNhatNguyen-5132651.mp3', N'Bài hát: Túy Âm - Xesi, Masew, Nhật Nguyễn
Rót đến tràn ly, anh chìm đắm trong men cay đắng nồng
Khóc chát làn mi, uống cùng anh cho đêm nay say chất ngất !
Dẫu năm tháng ấy còn đâu những đam mê ta kiếm tìm?
Màu mắt xanh ngời lạc giữa mây ngàn về chốn xa xôi
Hãy say cùng anh, hãy hát cùng anh, hãy khóc cùng anh
Thêm 1 lần...
Để anh được gần trái tim của em dù trong phút giây
Hình bóng người tan biến dần phía sau những nỗi sầu
Với em chắc quá đủ cho một mối tình
Dẫu em không thể ở lại với anh
Mình chẳng cùng với nhau đi hết quãng đường, ôm ấp hi vọng một ngày ngát xanh
Tháng năm thăng trầm dòng đời ngả nghiêng
Mình tự rời bỏ nhau, say đến điên dại, say hết kiếp người, say cho cháy lòng

', 0, N'Xesi - Nhật Nguyễn', 71)
INSERT [dbo].[tblMusic] ([iDmusic], [iDacc], [DisplayName], [Image], [Data], [Cotenttype], [luotnghe], [casi], [idchude]) VALUES (51, N'thang', N'Sóng Gió', N'/image/maxresdefault (2).jpg', N'music/SongGioDJXuanNuiRemix-DJXuanNuiKICMJackG5R-6035315.mp3', N'Lời Bài Hát:
Hồng trần trên đôi cánh tay
Họa đời em trong phút giây
Từ ngày thơ ấy còn ngủ mơ
Đến khi em thờ ơ ờ
Lòng người anh đâu có hay
Một ngày khi vỗ cánh bay
Từ người yêu hóa thành người dưng
Đến khi ta tự xưng à
Thương em bờ vai nhỏ nhoi
Đôi mắt hóa mây đêm
Thương sao mùi dạ lý hương
Vương vấn mãi bên thềm
Đời phiêu du cố tìm một người thật lòng
Dẫu trời mênh mong anh nhớ em
Chim kia về vẫn có đôi
Sao chẳng số phu thê
Em ơi đừng xa cách tôi
Trăng cố níu em về
Bình yên trên mái nhà
Nhìn đời ngược dòng
Em còn bên anh có phải không?
Trời ban ánh sáng, năm tháng tư bề
Dáng ai về chung lối
Người mang tia nắng
Nhưng cớ sao còn tăm tối
Một mai em lỡ vấp ngã trên đời thay đổi
Nhìn về anh, người chẳng khiến em lẻ loi
Oh! Nếu em có về
Anh sẽ mang hết những suy tư
Mang hết hành trang
Những ngày sống khổ
Để cho gió biển di cư
Anh thà lênh đênh không có ngày về
Hóa kiếp thân trai như Thủy Hử
Chẳng đành để em từ một cô bé
Sóng gió vây quanh thành quỷ dữ
Ta tự đẩy mình hay tự ta trói
Bây giờ có khác gì đâu
Ta chả bận lòng hay chẳng thể nói
Tụi mình có khác gì nhau
Yêu sao cánh điệp phủ mờ nét bút
Dẫu người chẳng hẹn đến về sau
Phố thị đèn màu ta chỉ cần chung lối
Để rồi sống chết cũng vì nhau
Nhặt một nhành hoa rơi
Đoạn đường về nhà thật buồn em ơi
Dòng người vội vàng giờ này
Tình ơi tình ơi tình ơi em ở đâu rồi
Lặng nhìn bờ vai xưa
Tựa đầu mình hỏi rằng khổ chưa
Đành lòng chặn đường giờ
Đừng đi đừng đi đừng đi vì câu hứa', 0, N'Jack - KICM', 68)
SET IDENTITY_INSERT [dbo].[tblMusic] OFF
GO
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL1', N'Nhạc Việt')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL10', N'Jazz')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL11', N'Nhạc Trịnh')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL12', N'Indie')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL13', N'Rap')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL2', N'Nhạc Hàn')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL3', N'Nhạc Âu Mỹ')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL4', N'Nhạc Hoa')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL5', N'Nhạc Trữ Tình & Bolero')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL6', N'EDM')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL7', N'Hip-Hop')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL8', N'R&B')
INSERT [dbo].[Theloai] ([IDtheloai], [Tentheloai]) VALUES (N'TL9', N'Nhạc Phim')
GO
ALTER TABLE [dbo].[tblMusic] ADD  DEFAULT ((0)) FOR [luotnghe]
GO
ALTER TABLE [dbo].[tblMusic]  WITH CHECK ADD  CONSTRAINT [FK_tblMusic_chude] FOREIGN KEY([idchude])
REFERENCES [dbo].[chude] ([IDchude])
GO
ALTER TABLE [dbo].[tblMusic] CHECK CONSTRAINT [FK_tblMusic_chude]
GO
ALTER TABLE [dbo].[tblMusic]  WITH CHECK ADD  CONSTRAINT [FK_tblMusic_tblAccount] FOREIGN KEY([iDacc])
REFERENCES [dbo].[tblAccount] ([IDacount])
GO
ALTER TABLE [dbo].[tblMusic] CHECK CONSTRAINT [FK_tblMusic_tblAccount]
GO
/****** Object:  StoredProcedure [dbo].[addacount]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addacount]
@id nvarchar(50),
@pasword nvarchar(50),
@name nvarchar(50),
@email nvarchar(50),
@ngaysinh datetime,
@gioitinh nvarchar(50)
as
begin
insert into tblAccount(IDacount,Password,Name,email,ngaysinh,gioitinh)
values(@id,@pasword,@name,@email,@ngaysinh,@gioitinh)
end
GO
/****** Object:  StoredProcedure [dbo].[selectAcount]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectAcount]
@taikhoan nvarchar(50),
@matkhau nvarchar(50)
as
begin
	SELECT *from tblAccount where IDacount= @taikhoan and  Password=  @matkhau
end
GO
/****** Object:  StoredProcedure [dbo].[selectid]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectid]
@taikhoan nvarchar(50)
as
begin
	SELECT *from tblAccount where IDacount= @taikhoan
end
GO
/****** Object:  StoredProcedure [dbo].[theloainhac]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[theloainhac]
@theloai1 nvarchar(50),
@theloai2 nvarchar(50),
@theloai3 nvarchar(50)
as
begin
select *from tblMusic inner join chude  on tblMusic.idchude=chude.IDchude  where chude.theloai1=@theloai1 or  chude.theloai2=@theloai2 or  chude.theloai3=@theloai3
end
GO
/****** Object:  StoredProcedure [dbo].[updatenhac]    Script Date: 3/19/2021 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updatenhac]
@namenhac nvarchar(50),
@namecasi nvarchar(50),
@content nvarchar(50),
@idnhac int
as
begin
update tblMusic 
set DisplayName=@namenhac, casi=@namecasi,Cotenttype=@content
where tblMusic.iDmusic=@idnhac
end
GO
