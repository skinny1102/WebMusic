<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="Nhacmoi.aspx.cs" Inherits="testmusic.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/nhacmoi.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menutheloai">
       <div>
           <nav class="menulist">
               <ul>
                   <li> <a href="Nhacmoi.aspx"> Nhạc Mới</a></li>
                   <li> <a href="theloai.aspx">Thể Loại</a></li>
                   <li> <a href="#"> Top100</a></li>
                   <li class="chinh"> <a href="#"> Ca sĩ</a>
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

    <div>
              <h3 style="margin-left:10px" > <a href="index.aspx" style="color:black"> Trang chủ </a> - Nhạc Mới </h3>
        <hr style="width:85%;" />
    <div class="nhamoi">
        <asp:Repeater ID="GridView1" runat="server"  >        
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
    <div>
       
        <h3 style="margin-left:15px;"> Gợi ý cho bạn</h3>
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
</asp:Content>
