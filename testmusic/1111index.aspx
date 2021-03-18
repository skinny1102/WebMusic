<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="1111index.aspx.cs" Inherits="testmusic.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="FileName" />
            <asp:TemplateField>
                <ItemTemplate>
               <audio  autoplay="autoplay" src='<%# Eval("Id", "FileCS.ashx?Id={0}") %>' controls="controls"  ></audio>
                            <asp:Button ID="Button22" runat="server" Text="Button" />
                        </ContentTemplate>
             
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" Text="Download" DataNavigateUrlFormatString="~/FileCS.ashx?Id={0}"
                HeaderText="Download" />
        </Columns>
    </asp:GridView>
</asp:Content>
