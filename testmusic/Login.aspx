<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="testmusic.WebForm3" %>

<%@ Register Src="~/Login.ascx" TagPrefix="uc1" TagName="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="logincss.css" rel="stylesheet" />
    <link href="music/logincss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:Login runat="server" ID="Login" />

</asp:Content>
