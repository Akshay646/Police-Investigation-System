<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="Police_Investigation_System_NEW_.login1" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
      <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <meta charset="utf-8">
    <title></title>
    
    
      <style type="text/css">
          .auto-style2 {
              width: 100%;
          }
          .auto-style3 {
              height: 107px;
              float:right;
              padding-right:35px;
          }
          .auto-style4 {
              height: 109px;
              background-color: #34495e;
          }
          .auto-style6 {
              height: 107px;
              width: 926px;

          }
          .auto-style6 h1
          {
              color:white;
              font-family:Arial, Helvetica, sans-serif;
              padding-left:27px;
          }
      </style>
     
    
  </head>
    
  <body>
       <link href="CSS/login1.css" rel="stylesheet" />
      <div class="auto-style4">
             
      
          <table class="auto-style2">
              <tr>
                  <td class="auto-style6">
                      <h1>POLICE INVESTIGATION SYSTEM</h1>
                  </td>
                  <td class="auto-style3">
                      <asp:Image ID="Image1" ImageUrl="~/Home Images/ashok.png" Width="60px" runat="server" />
                  </td>
              </tr>
          </table>
             
      
          </div>

      <form  runat="server" class="login-form">
          
        <h1>LOGIN</h1>

        <div class="txtb">
            <label class="control-label">Emailid: </label>
            <asp:TextBox ID="username" runat="server"  /> 

         <%-- <span data-placeholder="Username"></span>--%> 
        </div>

        <div class="txtb">
            <label class="control-label">Password: </label>
          <asp:Textbox Id="userpasswd" runat="server" TextMode="Password" />          <%-- <span data-placeholder="Password"></span>--%>
        </div>

          <asp:Button ID="Button1" CssClass="logbtn" runat="server" Text="Login" OnClick="Button1_Click" />

        <div class="bottom-text">
          Don't have account? <a href="staffregister.aspx">Register</a><br/>
               </div>
            <div class="label">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
     
          

      </form>
       
     


  </body>
     

</html>
