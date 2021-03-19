<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="danhsachnhacdonggop.aspx.cs" Inherits="testmusic.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/dsdonggop.css" rel="stylesheet" />
</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
    <div class="danhsach ">
        <h3> Danh Sách Nhạc Đã Đăng Lên</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="audion">
                   <a href="#"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     <p class="per-r">  <%# Eval("DisplayName") %> </br> <%# Eval("casi") %></p>
                      <audio src='<%# Eval("Data") %>' controls="controls"  > </audio>
                        <p> <%# Eval("Cotenttype") %> </p>
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
