﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="nhacvp1.aspx.cs" Inherits="testmusic.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/nhacvp1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div class="menutheloai">
       <div>
           <nav class="menulist">
               <ul>
                   <li> <a href="#"> Nhạc Mới</a></li>
                   <li> <a href="#">Thể Loại</a></li>
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
    <h3> <a  class="tit" href="index.aspx">Trang chủ</a> > Tuyệt đỉnh Vpop-Hit </h3>
    <div>
    <div class="warp">
        <div class="slider">
           <div class="item" >
                     <a href="#">  <img class="imgwward" src="/image/b9df30e091836ebcb4dea2bb40c34c5e.jpg" /></a>
                </div>            
            </div>
    </div>
    <div class="wrap2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="audion">
                   <a href="hienthinhac.aspx?idmusic=<%# Eval("iDmusic") %>"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     <p class="per-r">  <%# Eval("DisplayName") %> </br> <%# Eval("casi") %></p>
                      <audio   src='<%# Eval("Data") %>' controls="controls"  ></audio>
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
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