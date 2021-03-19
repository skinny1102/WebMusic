<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="theloai.aspx.cs" Inherits="testmusic.WebForm12" %>
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
               </ul>
               <% } %>
           </nav>
       </div>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
    <div>
        <h3> Thể Loại</h3>
        <div>
             <a href=""> Nhạc việt</a>
            <a href=""> Nhạc hàn </a>
            <a href=""> Nhạc Âu Mỹ</a>
            <a href="" > Nhạc Hoa </a>
            <a href="" >EDM </a>
            <a href="" > Rap</a>
            <a href="" > Indie </a>
            <a href="" > Jazz</a>
            <a href="" > R&B </a>
            <a href="" > Nhạc Phim</a>
       </div>
        </div>


    </div>
</asp:Content>
