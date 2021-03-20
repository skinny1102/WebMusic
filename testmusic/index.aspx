<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="testmusic.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="music/index.css" rel="stylesheet" />
   <script type="text/javascript" >

       function prev() {
           document.getElementById('slider-container').scrollLeft -= 270;
       }

       function next() {
           document.getElementById('slider-container').scrollLeft += 270;
       }


       $(".slide img").on("click", function () {
           $(this).toggleClass('zoomed');
           $(".overlay").toggleClass('active');
       })

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
                   <li> <a href="quanlynhac.aspx" >Quản Lý Nhạc Của Người Đăng</a></li>
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
                     <a href="nhacvp1.aspx">  <img class="imga" src="/image/b9df30e091836ebcb4dea2bb40c34c5e.jpg" /></a>
                </div>
                <div class="box-list2">
                    <a href="#"> <img class="imga"  src="/image/6de39ea5c9b5e0b38801acb27c3fc15b.jpg" /></a>
                </div>
            <div  class="box-list3">
                 <a href="#"> <img class="imga"  src="/image/39349a90229b3f4ca9eafa69f9106932.jpg" /> </a>
            </div>

    </div>
      <h3> top nhạc</h3>
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
                     <p class="per-r"> <a  class="title"    href ="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>">   <%# Eval("DisplayName") %> </a></br> <%# Eval("casi") %></p>               
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
         
      <div> <a href="#">  <img class="img-k11" src="/image/877eb506f1c9cb315ebb307c9db12b40.jpg" /> Top gì đó</a> </div>
         <div> <a href="#">  <img class="img-k11" src="/image/3b9a2890dd6262033a56614bcf22c227.jpg" /></a> </div>
          <div> <a href="#">  <img class="img-k11" src="/image/25ba89a65c8067be5be34166f045b99e.jpg" /></a> </div>
         <div> <a href="#">  <img class="img-k11" src="/image/3eaa1bb8b1750cf10c39d568cc061c8e.jpg" /></a> </div>

   </div>
    <h3> Tâm Trạng Và Hoạt Động</h3>
    <div class="k22">
      <div> <a href="#">  <img class="img-k22" src="/image/92d59a48d9df9e94275b30a0718d5121.jpg" /> Top gì đó</a> </div>
         <div> <a href="#">  <img class="img-k22" src="/image/b32dab34664c9a7f0d1f837b4babd4bb.jpg" /></a> </div>
          <div> <a href="#">  <img class="img-k22" src="/image/4fda0068d6821c35e89a6d405b314ba0.jpg" /></a> </div>
         <div> <a href="#">  <img class="img-k22" src="/image/d0714f6cfd28af5d7518d582285f3312.jpg" /></a> </div>
        <div> <a href="#">  <img class="img-k22" src="/image/1a99f9d8d8c5563e3893d9f10cd8689a.jpg" /></a> </div>
   </div>

</asp:Content>
