<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="testmusic.WebUserControl1" %>


<div class="login-page">
  <div class="form">
    <form class="login-form">
        <asp:TextBox ID="username" runat="server" placeholder="Username" CssClass="textbox"></asp:TextBox>
       
        <asp:TextBox ID="password" runat="server" placeholder="PassWord" CssClass="textbox" TextMode="Password"></asp:TextBox>
  
       <asp:TextBox ID="Name" runat="server" placeholder="Họ và tên" CssClass="textbox"></asp:TextBox>
        
    
       <asp:TextBox ID="email" runat="server" placeholder="Email" CssClass="textbox"></asp:TextBox>
          
       <asp:TextBox ID="ngaysinh" runat="server" placeholder="Ngày Sinh" CssClass="textbox"></asp:TextBox>
                 <p> Giới tính</p>
                     <asp:RadioButtonList ID="gtss" runat="server">
                        <asp:ListItem Text ="Nam" Value="Nam" />
                        <asp:ListItem Text ="Nữ" Value="Nu" />
                    </asp:RadioButtonList>
        <asp:Button ID="btnresign" runat="server" Text="Đăng ký" CssClass="btnlogin" OnClick="btnresign_Click"/>
        <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
      <p class="message"> <a href="Login.aspx">Đăng Nhập</a></p>
   
    </form>
  </div>
</div>