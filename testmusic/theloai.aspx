﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="theloai.aspx.cs" Inherits="testmusic.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/theloai.css" rel="stylesheet" />
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
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
    <div>
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

        </div>


    </div>
</asp:Content>
