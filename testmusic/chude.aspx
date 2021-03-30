<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="chude.aspx.cs" Inherits="testmusic.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/chude.css" rel="stylesheet" />
        <script  type="text/javascript" runat="server">
          void Dropdownlisttheloai_SelectedIndexChanged(object sender, EventArgs e)
          {

              string[] arrListStr = chude.Text.Split(',');
              if(arrListStr.Length >3)
              {
              }
              else
              {
                  chude.Text += Dropdownlisttheloai.SelectedItem.Text +",";
                    Label1.Text="";

              }
          }
          protected void btnxoa_Click(object sender, EventArgs e)
          {
              chude.Text = "";

          }
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h3 style="margin-left:20px;"> <a href="index.aspx" style="color:black;text-decoration:none" > Trang Chủ</a> - Tạo Chủ Đề</h3>
   <div class="taochude">
       <asp:Label runat="server" ID="lb1" Text="" ForeColor="Red"></asp:Label>
         <asp:ScriptManager ID="scrip1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
                     
                     <p> Tạo chủ đề Âm Nhạc : </p>
                  <asp:DropDownList ID="Dropdownlisttheloai" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Dropdownlisttheloai_SelectedIndexChanged" >
                      </asp:DropDownList><br/>
                       <br />
                       <asp:Label ID="chude" runat="server" ></asp:Label> 
                       <asp:Button  ID="btnxoa" CssClass="btnxoa" runat="server" text="X" OnClick="btnxoa_Click" />
                       <br />
                       <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label> 
                       <hr /> 
                            </ContentTemplate>
                </asp:UpdatePanel>
            <asp:Button  ID="tbnthemchude" runat="server" text="Thêm Chủ Đề" OnClick="tbnthemchude_Click" CssClass="tbnthemchude" />
    
       </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
</asp:Content>
