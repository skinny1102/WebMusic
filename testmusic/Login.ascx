<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="testmusic.Login" %>


<div class="login-page">
  <div class="form">
    <form class="login-form">
        <asp:TextBox ID="username" runat="server" placeholder="Username" CssClass="textbox"></asp:TextBox>
        <asp:TextBox ID="password" runat="server" placeholder="PassWord" CssClass="textbox"></asp:TextBox>
        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btnlogin" OnClick="btnlogin_Click" />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
