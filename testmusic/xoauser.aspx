<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="xoauser.aspx.cs" Inherits="testmusic.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">


    <div>
      <p>  Bạn có chắc chắn muốn xóa user <asp:Label runat="server" id="lb1"></asp:Label> chứ</p>
     <asp:Button  runat="server" ID="btnco" Text="Có" OnClick="btnco_Click"/>
     <asp:Button  runat="server" ID="btnkhong" Text="Không"/>
    </div>

</asp:Content>
