<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="quanlynhac.aspx.cs" Inherits="testmusic.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/quanlynhac.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
    
    <div class="danhsach ">
        <h3> Danh Sách Nhạc Đã Đăng Lên</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="audion">
                         <p> <%# Eval("iDacc") %></p>
                   <a href="#"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     <p class="per-r"> Tên Bài Hát  <%# Eval("DisplayName") %> </p> 
                        <p> <%# Eval("casi") %></p>
                      <audio src='<%# Eval("Data") %>' controls="controls"  > </audio>
                        <div>
                            <a class="btnsua" href="Suanhac.aspx?idmusic=<%# Eval("iDmusic") %>"> Sửa </a>
                            <asp:Button ID="btnxoa" runat="server" Text="Xóa" />
                        </div>

                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

    </div>


</asp:Content>
