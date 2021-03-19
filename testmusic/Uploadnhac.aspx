<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="Uploadnhac.aspx.cs" Inherits="testmusic.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="music/upload.css" rel="stylesheet" />
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

              }
          }
          protected void btnxoa_Click(object sender, EventArgs e)
          {
              chude.Text = "";


          }
      </script>
  



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="taochude">
         <asp:ScriptManager ID="scrip1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
                     <p> Tạo chủ đề Âm Nhạc : </p>
                  <asp:DropDownList ID="Dropdownlisttheloai" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Dropdownlisttheloai_SelectedIndexChanged" >
                      </asp:DropDownList><br/>
                       <asp:Label ID="chude" runat="server"></asp:Label> 
                       <asp:Button  ID="btnxoa" CssClass="btnxoa" runat="server" text="X" OnClick="btnxoa_Click" />
                       <hr /> 
                            </ContentTemplate>
                </asp:UpdatePanel>
            <asp:Button  ID="tbnthemchude" runat="server" text="Thêm Chủ Đề" OnClick="tbnthemchude_Click" CssClass="tbnthemchude" />
     
       </div>
    
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content2" runat="server">
   
    
    
    
    
    
    <div class="form-fileup">
     
                                    

                                      <h3 class="theh3"> UpLoad Nhạc </h3>
                                                <p> Chọn chủ đề âm nhạc</p>  
                                                <asp:DropDownList runat="server" id="chudeamnhac" > </asp:DropDownList>
                                                <p> File Âm Thanh :</p> 
                                                <asp:FileUpload ID="Fileupload" runat="server" CssClass="fileUpload"  />
                                                 <br />
                                                <hr />
                                                <p>Hình ảnh :</p>
                                                <asp:FileUpload ID="Fileupload2" runat="server" CssClass="imageupload" /> 
                                                  <hr />
                                                 <p> Tên Âm Thanh :</p>
                                                <asp:TextBox ID="txtTennhac" runat="server" CssClass="txtname" > Tên Nhạc</asp:TextBox>
                                                 <p> Tác Giả :</p>
                                                <asp:TextBox ID="txtcasi" runat="server" CssClass="txtname" > Người sáng tác</asp:TextBox>
                                                <br /><hr />
                                                <p>Nội Dung :</p>
                                                <asp:TextBox ID="txtcontent" runat="server" CssClass="txtnd" TextMode="MultiLine" Rows="10" > Content</asp:TextBox>  <br /><hr />
                                              
                                            <asp:Label ID="Label" runat="server" ></asp:Label>
                                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CssClass="btnUpload" />  <br />
                                        <hr />
</div>   
</asp:Content>
