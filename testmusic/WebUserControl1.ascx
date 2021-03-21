<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="testmusic.WebUserControl1" %>


<div class="login-page">
  <div class="form">
    <form class="login-form">
        <asp:TextBox ID="username" runat="server" placeholder="Username" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="username" Text=" *Tên Đăng Nhập Không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
       
        <asp:TextBox ID="password" runat="server" placeholder="PassWord" CssClass="textbox" TextMode="Password"></asp:TextBox>
  <asp:RequiredFieldValidator runat="server" ControlToValidate="password" Text=" Password không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
       <asp:TextBox ID="Name" runat="server" placeholder="Họ và tên" CssClass="textbox"></asp:TextBox>
        
    <asp:RequiredFieldValidator runat="server" ControlToValidate="Name" Text="Không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
       <asp:TextBox ID="email" runat="server" placeholder="Email" CssClass="textbox"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="email" Text="Không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
       <asp:TextBox ID="ngaysinh" runat="server" placeholder="Ngày Sinh" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="ngaysinh" Text="Không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="ngaysinh"
    ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$"
   Text="*mm/dd/yyyy"  ForeColor="Red"/>
                 <p> Giới tính</p>
                     <asp:RadioButtonList ID="gtss" runat="server">
                        <asp:ListItem Text ="Nam" Value="Nam" />
                        <asp:ListItem Text ="Nữ" Value="Nu" />
                    </asp:RadioButtonList>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="gtss" Text="Không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Button ID="btnresign" runat="server" Text="Đăng ký" CssClass="btnlogin" OnClick="btnresign_Click"/>
        <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
      <p class="message"> <a href="Login.aspx">Đăng Nhập</a></p>
   
    </form>
  </div>
</div>