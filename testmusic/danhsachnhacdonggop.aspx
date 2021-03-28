<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="danhsachnhacdonggop.aspx.cs" Inherits="testmusic.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/dsdonggop.css" rel="stylesheet" />
</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
                   <li> <a href="QuanLybaiha.aspx" >Quản Lý Bài Hát Hiển Thị</a></li>
                   <% } %>
               </ul>
               <% } %>
           </nav>
       </div>
   </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
    <div class="danhsach ">
        <h3> Danh Sách Nhạc Đã Đăng Lên</h3>
        <hr style="width:85%" />
         <h3 style="text-align:center"> Danh sách nhạc đã tải lên của bạn</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None" BackColor="">
        <Columns > 
            <asp:TemplateField headertext="Hình ảnh">
                <ItemTemplate  >
                    <div class="hinhanh">
                   <a href="#"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                        </div>
                  </ItemTemplate>           
            </asp:TemplateField>
            <asp:TemplateField  headertext="Tên Bài Hát">
                  <ItemTemplate>
                    <div class="casi">    
                     <p class="per-r"><%# Eval("DisplayName") %></p>                        
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField  headertext="Người Sáng Tác">
                  <ItemTemplate>
                    <div class="casi">    
                     <p class="per-r"><%# Eval("casi") %></p>                        
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField  headertext="Âm Thanh">
                  <ItemTemplate>
                    <div class="audion1">    
                      <audio src='<%# Eval("Data") %>' controls="controls"  > </audio>                    
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField  headertext="Nội Dung">
                  <ItemTemplate>
                    <div class="nd">    
                      <p> <%# Eval("Cotenttype").ToString().Replace("\n", "<br />") %> </p>                 
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
                 <asp:TemplateField  headertext="Chức Năng">
                  <ItemTemplate>
                   <a href='Suanhac.aspx?iDmusic=<%# Eval("iDmusic") %>' class="btnsua"> Sửa</a>
                     <a class="btnxoa" href='xoanhac.aspx?idnhac=<%# Eval("iDmusic") %>&namenhac=<%# Eval("DisplayName") %>'> Xóa </a>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>

        </Columns>
                
            
    </asp:GridView>

    </div>


</asp:Content>
