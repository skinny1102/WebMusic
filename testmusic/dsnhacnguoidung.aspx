<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="dsnhacnguoidung.aspx.cs" Inherits="testmusic.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="css/dsnhacnguoidung.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div class="menutheloai">
      
           <nav class="menulist">
               <ul>
                   <li> <a href="index.aspx"> Trang Chủ</a></li>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
     <div>
              <h3 style="margin-left:10px" > <a href="index.aspx" style="color:black"> Trang chủ </a> </h3>
          <hr  style="width:85%"/>
         <p style="margin-left:10px"> Danh sách nhạc của tài khoản:  <asp:Label runat="server" ID="lb1"></asp:Label> </p>
    <div class="nhamoi">
        <asp:Repeater ID="rpp" runat="server"   >        
                <ItemTemplate>
                    <div class="audion">
                   <a href="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     <p class="per-r"> <a  class="title"    href ="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>">   <%# Eval("DisplayName") %> </a></br> <%# Eval("casi") %></p>               
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>      
            </asp:Repeater>
        </div>
           </div>
 
</asp:Content>
