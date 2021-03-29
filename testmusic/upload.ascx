<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="upload.ascx.cs" Inherits="testmusic.upload" %>
 <div class="form-fileup">
      <form>
                                      <h3 class="theh3"> UpLoad Nhạc </h3>
                                                <p> Chọn chủ đề âm nhạc</p>  
                                                <asp:DropDownList runat="server" id="chudeamnhac" > </asp:DropDownList>
                                                <p> File Âm Thanh :</p> 
                                                <asp:FileUpload ID="Fileupload" runat="server" CssClass="fileUpload"  />
          <br />
                        <asp:RequiredFieldValidator ID="amthanh" runat="server" ControlToValidate="Fileupload" Text="Trống" ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
          <asp:RegularExpressionValidator ControlToValidate="Fileupload" ValidationExpression="^.*\.(mp3|MP3)$" runat="server" Text="Chỉ Nhận File MP3" ForeColor="Red" />
                                                 <br />
                                                <hr />
                                                <p>Hình ảnh :</p>
                                                <asp:FileUpload ID="Fileupload2" runat="server" CssClass="imageupload" /> 
        <br />
        <asp:RequiredFieldValidator ID="hinhanh" runat="server" ControlToValidate="Fileupload2" Text="Trống" ForeColor="Red" ></asp:RequiredFieldValidator>
          <br />
          <asp:RegularExpressionValidator ControlToValidate="Fileupload2" ValidationExpression="^.*\.(jpg|JPG|PNG|png)$" runat="server" Text="Chỉ Nhận File Hình Ảnh" ForeColor="Red" />
                                                  <hr />
                                                 <p> Tên Âm Thanh :</p>
                                                <asp:TextBox ID="txtTennhac" runat="server" CssClass="txtname" > </asp:TextBox>
        <br />
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTennhac" Text="Tên Nhạc không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 <p> Tác Giả :</p>
                                                <asp:TextBox ID="txtcasi" runat="server" CssClass="txtname" ></asp:TextBox><br />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcasi" Text="Trống" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <br /><hr />
                                                <p>Nội Dung :</p>
                                                <asp:TextBox ID="txtcontent" runat="server" CssClass="txtnd" TextMode="MultiLine" Rows="10" ></asp:TextBox>  <br />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcontent" Text="Trống" ForeColor="Red"></asp:RequiredFieldValidator>    
                                <hr />
   
                                            <asp:Label ID="Label" runat="server" ></asp:Label>
                                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CssClass="btnUpload" />  <br />
                                        <hr />
          </form>
</div>   
