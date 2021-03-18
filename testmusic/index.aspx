<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="testmusic.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <script type="text/javascript" >

       function prev() {
           document.getElementById('slider-container').scrollLeft -= 270;
       }

       function next() {
           document.getElementById('slider-container').scrollLeft += 270;
       }


       $(".slide img").on("click", function () {
           $(this).toggleClass('zoomed');
           $(".overlay").toggleClass('active');
       })

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="menutheloai">
       <div>
           <nav class="menulist">
               <ul>
                   <li> <a href="#"> Nhạc Mới</a></li>
                   <li> <a href="#">Thể Loại</a></li>
                   <li> <a href="#"> Top100</a></li>
                   <li> <a href="#"> Ca sĩ</a></li>
               </ul>
               <hr style="width:85%" />
               <ul>
                   <li><a href="Uploadnhac.aspx" > Đóng góp nhạc</a> </li>
                   <li><a href="#" > Danh sách nhạc đã đóng góp</a> </li>
               </ul>
           </nav>
       </div>
   </div>
    
</asp:Content>
<asp:Content ContentPlaceHolderID="Content2" runat="server">
 
    <div class="banner">


    </div>
         <div class="box-list" > 
                   <div class="box-list1" >
                     <a href="#">  <img class="imga" src="/image/8246ddb97803da19aaa7cb5039e26671.jpg" /></a>
                </div>
                <div class="box-list2">
                    <a href="#"> <img class="imga"  src="/image/8246ddb97803da19aaa7cb5039e26671.jpg" /></a>
                </div>
            <div  class="box-list3">
                 <a href="#"> <img class="imga"  src="/image/8246ddb97803da19aaa7cb5039e26671.jpg" /> </a>
            </div>

    </div>
      <h3> top nhạc</h3>
    <div class="hhit">
      
    <div class="warp">
        <div class="slider">
           <div class="item" >
                     <a href="#">  <img class="imgwward" src="/image/1.jpg" /></a>
                </div>            
            </div>
    </div>
    <div class="wrap2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="bang" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="audion">
                   <a href="#"> <image class="imgg" src=" <%# Eval ("Image") %>"></image></a>
                     <p class="per-r">  <%# Eval("DisplayName") %> </br> <%# Eval("casi") %></p>
                      <audio   src='<%# Eval("Data") %>' controls="controls"  ></audio>
                        </div>
                        </ContentTemplate>         
                        </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
        </div>
    </div>
    <h3> Danh Sách nhạc gì gì đó</h3>
   <div class="k11">
         
      <div> <a href="#">  <img class="img-k11" src="/image/3.jpg" /> Top gì đó</a> </div>
         <div> <a href="#">  <img class="img-k11" src="/image/3.jpg" /></a> </div>
          <div> <a href="#">  <img class="img-k11" src="/image/3.jpg" /></a> </div>
         <div> <a href="#">  <img class="img-k11" src="/image/3.jpg" /></a> </div>

   </div>
    <h3> cái này cũng vậy</h3>
    <div class="k22">
        
      <div> <a href="#">  <img class="img-k22" src="/image/2.jpg" /> Top gì đó</a> </div>
         <div> <a href="#">  <img class="img-k22" src="/image/2.jpg" /></a> </div>
          <div> <a href="#">  <img class="img-k22" src="/image/2.jpg" /></a> </div>
         <div> <a href="#">  <img class="img-k22" src="/image/2.jpg" /></a> </div>
        <div> <a href="#">  <img class="img-k22" src="/image/2.jpg" /></a> </div>
   </div>

</asp:Content>
