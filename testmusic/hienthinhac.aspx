<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="hienthinhac.aspx.cs" Inherits="testmusic.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/hienthinhac.css" rel="stylesheet" />
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


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None">
        <Columns>
           
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="audion">
                        <p class="per-r">  <%# Eval("DisplayName") %> </p>
                        <p> Ca sĩ : <%# Eval("casi") %></p>

                        
                        <p> Chủ đề <%# Eval("theloai1") %> , <%# Eval("theloai2") %> ,  <%# Eval("theloai3") %> </p>

                        <a > <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     
                      <audio  autoplay="autoplay" src='<%# Eval("Data") %>' controls="controls"  ></audio>
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>



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
