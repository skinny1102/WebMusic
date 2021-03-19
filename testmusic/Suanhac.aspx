<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="Suanhac.aspx.cs" Inherits="testmusic.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Suanhac.css" rel="stylesheet" />
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
    
    <div class="form-fileup"> 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <h2>Thay Đổi Nội Dung</h2>
        <asp:Repeater runat="server" ID="rpp" OnItemCommand="rpp_ItemCommand">
            <ItemTemplate>
                <div class="imgg2">                     
                    <img class="imgg" src=" <%# Eval ("Image") %>"/> </div>           
                </ItemTemplate>
        </asp:Repeater>
             <p> Tên Âm Thanh :</p>
                       <asp:TextBox ID="Tennhac" runat="server" CssClass="txtname"  > </asp:TextBox>
                       <p> Tác Giả :</p>
                          <asp:TextBox ID="txtcasi" runat="server" CssClass="txtname"></asp:TextBox>
                     <br /><hr />
                   <p>Nội Dung :</p>
                       <asp:TextBox ID="txtcontent" runat="server" CssClass="txtnd" TextMode="MultiLine" Rows="10"> Content</asp:TextBox>  <br /><hr />
                <asp:Label ID="Label" runat="server" ></asp:Label>
                  <asp:Button ID="btnSua" runat="server" Text="Sửa" CssClass="btnSua"  OnClick="btnSua_Click"/>  <br />
                                        <hr />

       
</div>   
</asp:Content>
