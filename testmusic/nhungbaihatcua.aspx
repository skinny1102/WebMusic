<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="nhungbaihatcua.aspx.cs" Inherits="testmusic.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/nhungbaihatcua.css" rel="stylesheet" />
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
        <h3 style="margin-left: 5px;"> <a  style="color:black" class="tit" href="index.aspx">Trang chủ</a>- <asp:Label runat="server" ID="lb1"></asp:Label>  </h3>
    <hr  style="width:85%"/>
    <h3 style="text-align:center"> Những bài hát của <asp:Label runat="server" ID="Label1"></asp:Label> </h3>
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
    <h4 style="margin-left:5px;"> Gợi Ý:</h4>
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
