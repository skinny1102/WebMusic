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
        <h3> Quản lý người dùng và nhạc</h3>
        <hr style="width:85%"/>
        <div class="audion">
                        <div class="btn"> 
                           
                        </div>
                        <div>
                            <p style="font-weight:600 ; text-align:center"> ID Acount</p>
                        </div>
                         <div > <p style="font-weight:600 ; text-align:center">  Tên người dùng</p></div>
                         <div><p style="font-weight:600 ; text-align:center"> Email </p></div>
                         <div><p style="font-weight:600 ; text-align:center"> Ngày Sinh</p></div>
                         <div>  <p style="font-weight:600 ; text-align:center"> Giới Tính</p>  </div>                                    
                        </div>
        <asp:Repeater runat="server" ID="rpp">
            <ItemTemplate>
                    <div class="audion">
                        <div class="btn"> 
                            <div class="btnxx">
                             <a class="btnxemds"  style="color:black" href='dsnhacnguoidung.aspx?id=<%# Eval("IDacount") %>'>
                                Xem DS
                            </a>
                             <a class="btnxoa" style="color:black" href="">
                                Xóa
                            </a>
                            </a>
                                </div>
                        </div>
                        <div class="nd">  <p> <%# Eval("IDacount") %></p> </div >
                         <div class="nd">  <p>  <%# Eval("Name") %></p></div>
                         <div class="nd"><p> <%# Eval("email")%> </p></div>
                         <div class="nd"><p> <%# Eval("ngaysinh") %></p></div>
                         <div class="nd">  <p> <%# Eval("gioitinh") %></p>  </div>
                       
                        
                    
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
        </asp:Repeater>
       

    </div>


</asp:Content>
