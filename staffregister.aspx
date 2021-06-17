<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffregister.aspx.cs" Inherits="Police_Investigation_System_NEW_.staffregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/messages.css" rel="stylesheet" />
    <link href="CSS/complaintform.css" rel="stylesheet" />
    <link href="CSS/login1.css" rel="stylesheet" />
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
     
    <center>
       
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

    

<body>
    <form id="form1" runat="server">
      
         <style>
        .auto-style1{
            margin-top:40px;
        }

    
    </style>
    <h2 class="top">STAFF REGISTRATION</h2>
    
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>ID</td>  
                    <td>  
                        <asp:TextBox ID="Textid" CssClass="tb1"  runat="server" TextMode="number"></asp:TextBox>  
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="Textid"></asp:RequiredFieldValidator>
                    </td>
  
               </tr> 
                <tr>  
                    <td>Name </td>  
                    <td>  
                        <asp:TextBox ID="Textname" CssClass="tb1" runat="server" TextMode="MultiLine"></asp:TextBox>  
                    </td>  
   <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="Textname" ></asp:RequiredFieldValidator>
                    </td>
               </tr> 
                <tr>  
                    <td>Rank</td>  
                    <td>  
                        <asp:TextBox ID="Textrank" CssClass="tb1" runat="server" TextMode="multiline"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="Textrank" ></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                
                <tr>  
                    <td>Address</td>  
                     <td> <asp:TextBox ID="Textaddrs" CssClass="tb1" runat="server" TextMode="MultiLine"></asp:TextBox></td>  
                
                 <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="Textaddrs" ></asp:RequiredFieldValidator>
                    </td>
                      </tr>  
                <tr>  
                    <td>Contact</td>  
                    <td>  
                        <asp:TextBox ID="Textcontact" CssClass="tb1" runat="server" TextMode="Number"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="Textcontact" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>  
                    <td>Email Id </td>  
                    <td>  
                        <asp:TextBox ID="emailid" CssClass="tb1" runat="server" TextMode="MultiLine"></asp:TextBox>  
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required Field" ControlToValidate="Textpasswd" ></asp:RequiredFieldValidator>
                    </td>
                <tr>  
                    <td>Password</td>  
                    <td>  
                        <asp:TextBox ID="Textpasswd" CssClass="tb1" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required Field" ControlToValidate="Textpasswd" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>  
                    <td> Confirm Password</td>  
                    <td>  
                        <asp:TextBox ID="cnfpasswd" CssClass="tb1" runat="server" TextMode="Password"></asp:TextBox>  
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cnfpasswd" ErrorMessage="password must required" ></asp:RequiredFieldValidator><br/>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Textpasswd" ControlToValidate="cnfpasswd" ErrorMessage="password not match" ></asp:CompareValidator>
                    </td>
                    </tr>
                <tr>  
                    <td>  
                       <asp:Button ID="savebtn" CssClass="savebtn" runat="server" Text="Save" OnClick="savebtn_Click" />
                    </td> 
                </tr>  
                    
                </table>
             
            <asp:Label ID="msg_lbl" runat="server" CssClass="regbtn" Font-Size="XX-Large" /><br />
            
            </div>
         
        </center>
            
       
        
           
    </form>
</body>
</html>
