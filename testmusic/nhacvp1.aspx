<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="nhacvp1.aspx.cs" Inherits="testmusic.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/nhacvp1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div class="menutheloai">
       <div>
           <nav class="menulist">
               <ul>
                   <li> <a href="Nhacmoi.aspx"> Nhạc Mới</a></li>
                   <li> <a href="theloai.aspx">Thể Loại</a></li>
                   <li> <a href="#"> Top100</a></li>
                   <li> <a href="#"> Ca sĩ</a>
                       <ul class="listmenu">
                           <li> <a href="nhungbaihatcua.aspx?namecasi=2"> Đen Vâu </a></li>
                           <li><a href="nhungbaihatcua.aspx?namecasi=1"> Bích Phương </a></li>
                             <li> <a href="nhungbaihatcua.aspx?namecasi=3">Vũ. </a></li>
                           <li><a href="nhungbaihatcua.aspx?namecasi=4"> Hoàng Dũng</a></li>
                             <li> <a href="nhungbaihatcua.aspx?namecasi=5"> Min </a></li>
                           <li><a href="nhungbaihatcua.aspx?namecasi=6">  Đức Phúc</a></li>
                       </ul>
                   </li>
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
                   <li> <a href="QuanLybaiha.aspx" >Quản Lý Bài Hát Hiển Thị</a></li>
                   <% } %>
               </ul>
               <% } %>
           </nav>
       </div>
   </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
    <h3 style="margin-left: 5px;"> <a  class="tit" href="index.aspx">Trang chủ</a> > Tuyệt đỉnh Vpop-Hit </h3>
    <br  style="width:85%"/>
    <div class="chiacot">
    <div class="warp">
        <div class="slider">
           <div class="item" id="item" >
              <asp:Label ID="imgg" runat="server"></asp:Label>
                     <%--<a href="#">  <img class="imgwward" src="/image/b9df30e091836ebcb4dea2bb40c34c5e.jpg" /></a>--%>
                </div>            
            </div>
    </div>
    <div class="wrap2">
    <asp:Repeater runat="server" ID="rpp">
                <ItemTemplate>
                    <div class="audion">
                   <a href="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                        <div>
                      <a style="color:black ; font-weight:600" href="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>"><p class="per-r">  <%# Eval("DisplayName") %> </p></a>
                        <p><%# Eval("casi") %></p>
                      </div>
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
    </asp:Repeater>
        </div>
    </div>
    <div>
        <h3> Gợi ý cho bạn</h3>
         <div class="k22">
      <div> <a href="#">  <img class="img-k22" src="/image/92d59a48d9df9e94275b30a0718d5121.jpg" /> Top gì đó</a> </div>
         <div> <a href="#">  <img class="img-k22" src="/image/b32dab34664c9a7f0d1f837b4babd4bb.jpg" /></a> </div>
          <div> <a href="#">  <img class="img-k22" src="/image/4fda0068d6821c35e89a6d405b314ba0.jpg" /></a> </div>
         <div> <a href="#">  <img class="img-k22" src="/image/d0714f6cfd28af5d7518d582285f3312.jpg" /></a> </div>
        <div> <a href="#">  <img class="img-k22" src="/image/1a99f9d8d8c5563e3893d9f10cd8689a.jpg" /></a> </div>
   </div>
    </div>
</asp:Content>
