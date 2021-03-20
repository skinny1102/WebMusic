<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="Uploadnhac.aspx.cs" Inherits="testmusic.WebForm4" %>

<%@ Register Src="~/upload.ascx" TagPrefix="uc1" TagName="upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="music/upload.css" rel="stylesheet" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="taochude">
            <a href="chude.aspx" class="tbnthemchude"> Tạo chủ đề</a>
       </div>
    
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
   
    <uc1:upload runat="server" id="upload" />
   
</asp:Content>
