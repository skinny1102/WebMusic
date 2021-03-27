<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="xoanhac.aspx.cs" Inherits="testmusic.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/xoanhacuser.css" rel="stylesheet" />
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
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">

    <h3 style="text-align:center">
        Xóa bài Hát
    </h3>
    <div class="xoan">
        <div class="xoan22">
      <p>  Bạn có chắc chắn muốn xóa bài hát  <asp:Label runat="server" id="lb1" CssClass="lb1"></asp:Label> của user <asp:Label  CssClass="lb2" runat="server" id="lb2"></asp:Label> chứ</p>
     <asp:Button  runat="server" ID="btnco" Text="Có" OnClick="btnco_Click" CssClass="btnco"/>
     <asp:Button  runat="server" ID="btnkhong" Text="Không" CssClass="btnkhong" OnClick="btnkhong_Click"/>
            </div>
    </div>

</asp:Content>
