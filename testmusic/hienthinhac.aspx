<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="hienthinhac.aspx.cs" Inherits="testmusic.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/hienthinhac.css" rel="stylesheet" />
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
                       </ul></li>
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

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None">
        <Columns>
           
            <asp:TemplateField>
                <ItemTemplate>
                     <h3 style="margin-left:10px"> <a href="index.aspx" style="color:black">Trang chủ</a> - Bài hát - <%# Eval("DisplayName") %> </h3>
                     <hr  style="width:85%"/>
                    <div class="audion">
                        <div > <image class="imgg" src=" <%# Eval ("Image") %>"></image></div>
                        <div class="klga">
                        <p class="per-r">  <%# Eval("DisplayName") %> </p>
                        <p> Ca sĩ : <%# Eval("casi") %></p
                    
                        <p> Chủ đề : <%# Eval("theloai1") %> , <%# Eval("theloai2") %> ,  <%# Eval("theloai3") %> </p>
                         <audio  autoplay="autoplay" src='<%# Eval("Data") %>' controls="controls"  class="nhac" ></audio>
                        </div>
                      </div>
                    <div class="lyric">
                        <p class="lyric-tt">Lời Bài Hát:</p>
                         <p class="lyric-tt2"> <%# Eval("Cotenttype").ToString().Replace("\n", "<br />") %> </p>
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
    
    <div>
        <h3 style="margin-left:15px;"> Tổng Hợp Những Bài Hát</h3>
   <div class="k22" style="margin-left:10px;">        
      <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=1" style="color:black;text-align:center">  <img class="img-k22" src="/image/landscape-avatar-copy-4-15912036198111330174400-crop-15912037063321439019614.jpg" /> <p> Những bài hát hay nhất của Bích Phương </p>  </a> 
          </div>
         <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=2"  style="color:black;text-align:center">  <img class="img-k22" src="/image/123.jpg" />  <p> Những bài hát hay nhất của Đen Vâu </p> </a> 
          </div>
       <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=3"  style="color:black;text-align:center"> <img class="img-k22" src="/image/1333.jpg" /> <p> Những bài hát hay nhất của Vũ. </p>  </a> 
           </div>
       <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=4" style="color:black;text-align:center">   <img class="img-k22" src="/image/a9ts.jpg" />  <p> Những bài hát hay nhất của Hoàng Dũng </p> </a> 
          </div>
       <div class="aaaa2"> <a href="nhungbaihatcua.aspx?namecasi=5" style="color:black;text-align:center">   <img class="img-k22" src="/image/af901b4457bbf85a9e7e6754bdb71c44.jpg" />  <p> Những bài hát hay nhất của Đức Phúc </p> </a> 
          </div>
   </div>
    </div>
      


   <%-- <asp:Repeater runat="server" ID="rpp">
        <ItemTemplate>
             <h3>  <%# Eval("DisplayName") %> </h3></br>
            <h4><%# Eval("casi") %></h4>
            <div> <image class="imgg2" src=" <%# Eval ("Image") %>"></div>
             <audio   src='<%# Eval("Data") %>' controls="controls"  ></audio>
            <p> <%# Eval("Cotenttype") %> </p>


        </ItemTemplate>
         


    </asp:Repeater>--%>


</asp:Content>
