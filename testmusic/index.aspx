<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="testmusic.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="music/index.css" rel="stylesheet" />
   <script type="text/javascript" >

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="menutheloai">
       <div>
           <nav class="menulist">
               <ul>
                   <li> <a href="Nhacmoi.aspx"> Nhạc Mới</a></li>
                   <li> <a href="theloai.aspx">Thể Loại</a></li>
                   <li> <a href="#"> Top100</a></li>
                   <li> <a href="#"> Ca sĩ</a></li>
               </ul>
               <hr style="width:85%" />
               <% if (Session["dangnhap"].ToString() != "1")
                   {%>
               <ul>
                   <li><a href="Uploadnhac.aspx" > Đóng góp nhạc</a> </li>
                   <li><a href="danhsachnhacdonggop.aspx" > Danh sách nhạc đã đóng góp</a> </li>
                    <% if (Session["dangnhap"].ToString() == "admin")
                   {%>
                   <li> <a href="quanlynhac.aspx" >Quản Lý Người Dùng</a></li>
                   <li> <a href="QuanLybaiha.aspx" >Quản Lý Bài Hát Hiển Thị</a></li>
                   <% } %>
               </ul>
               <% } %>
           </nav>
       </div>
   </div>
    
</asp:Content>
<asp:Content ContentPlaceHolderID="Content2" runat="server">
 
    <div class="banner">

    </div>
         <div class="box-list" > 
                   <div class="box-list1" >
                     <a href="nhacvp1.aspx?sut=2">  <img class="imga" src="/image/b9df30e091836ebcb4dea2bb40c34c5e.jpg" /></a>
                </div>
                <div class="box-list2">
                    <a href="nhacvp1.aspx?sut=3"> <img class="imga"  src="/image/6de39ea5c9b5e0b38801acb27c3fc15b.jpg" /></a>
                </div>
            <div  class="box-list3">
                 <a href="nhacvp1.aspx?sut=4"> <img class="imga"  src="/image/39349a90229b3f4ca9eafa69f9106932.jpg" /> </a>
            </div>

    </div>
      <h3> Danh Sách Nhạc Được Yêu Thích</h3>
    <div class="hhit">
      
    <div class="warp">
        <div class="slider">
           <div class="item" >
                     <a href="#">  <img class="imgwward" src="/image/1.jpg" /></a>
                </div>            
            </div>
    </div>
    <div class="wrap2">
        <asp:Repeater ID="Repeater1" runat="server"  >        
                <ItemTemplate>
                    <div class="audion">
                   <a class="ahhh" href="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     <p class="per-r"> <a  class="title"    href ="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>">  <span style="font-weight:600">  <%# Eval("DisplayName") %> </span> </a> 
                        </br> <span style="font-size:14px"><%# Eval("casi") %> </span></p>               
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>      
            </asp:Repeater>

        </div>
    </div>

         <h3> Thể Loại</h3>
         <div class="theloai"> 
            <a href="namethloai.aspx?nametheloai=1" style="background-image:linear-gradient(-243deg, #fb6b60 0%, #FF2E55 100%)"> Nhạc Việt</a>
            <a href="namethloai.aspx?nametheloai=2"> Nhạc Hàn </a>
            <a href="namethloai.aspx?nametheloai=3" style="background-image:linear-gradient(-243deg, #fb6b60 0%, #FF2E55 100%)"> Nhạc Âu Mỹ</a>
            <a href="namethloai.aspx?nametheloai=4" > Nhạc Hoa </a>
            <a href="namethloai.aspx?nametheloai=5"style="background-image:linear-gradient(-243deg, #fb6b60 0%, #FF2E55 100%) ">EDM </a>
            <a href="namethloai.aspx?nametheloai=6" > Rap</a>
            <a href="namethloai.aspx?nametheloai=7" style="background-image:linear-gradient(-243deg, #fb6b60 0%, #FF2E55 100%) "> Indie </a>
            <a href="namethloai.aspx?nametheloai=8" > Jazz</a>
            <a href="namethloai.aspx?nametheloai=9" style="background-image:linear-gradient(-243deg, #fb6b60 0%, #FF2E55 100%)"> R&B </a>
            <a href="namethloai.aspx?nametheloai=10" > Nhạc Phim</a>
       </div>

 
    <h3> Hôm Nay Nghe Gì</h3>
   <div class="k11">        
      <div> <a href="nhactamtrang.aspx?idtt=1">  <img class="img-k11" src="/image/877eb506f1c9cb315ebb307c9db12b40.jpg" /> </a> </div>
         <div> <a href="nhactamtrang.aspx?idtt=2">  <img class="img-k11" src="/image/3b9a2890dd6262033a56614bcf22c227.jpg" /></a> </div>
          <div> <a href="nhactamtrang.aspx?idtt=3">  <img class="img-k11" src="/image/25ba89a65c8067be5be34166f045b99e.jpg" /></a> </div>
         <div> <a href="nhactamtrang.aspx?idtt=4">  <img class="img-k11" src="/image/3eaa1bb8b1750cf10c39d568cc061c8e.jpg" /></a> </div>
   </div>
        <h3> Hôm Nay Nghe Gì</h3>
   <div class="k22">        
      <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=1" style="color:black;text-align:center">  <img class="img-k22" src="/image/landscape-avatar-copy-4-15912036198111330174400-crop-15912037063321439019614.jpg" /> <p> Những bài hát hay nhất của Bích Phương </p>  </a> 
          </div>
         <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=2"  style="color:black;text-align:center">  <img class="img-k22" src="/image/123.jpg" />  <p> Những bài hát hay nhất của Đen Vâu </p> </a> 
          </div>
       <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=3"  style="color:black;text-align:center"> <img class="img-k22" src="/image/1333.jpg" /> <p> Những bài hát hay nhất của Vũ. </p>  </a> 
           </div>
       <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=4" style="color:black;text-align:center">   <img class="img-k22" src="/image/landscape-avatar-copy-4-15912036198111330174400-crop-15912037063321439019614.jpg" />  <p> Những bài hát hay nhất của Bích Phương </p> </a> 
          </div>
       <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=5" style="color:black;text-align:center">   <img class="img-k22" src="/image/landscape-avatar-copy-4-15912036198111330174400-crop-15912037063321439019614.jpg" />  <p> Những bài hát hay nhất của Bích Phương </p> </a> 
          </div>
   </div>

</asp:Content>
