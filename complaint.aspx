<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="complaint.aspx.cs" Inherits="Police_Investigation_System_NEW_.complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!DOCTYPE html>  
  
<html>  
<head>  
    <title></title>  
    <link href="CSS/complaintform.css" rel="stylesheet" />
    <link href="CSS/messages.css" rel="stylesheet" />
</head>  
<body>  
    <center>
     <style>
        .auto-style1{
            margin-top:40px;
        }

    
    </style>
    <h2 class="top">COMPLAINT DETAILS</h2>
    
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>Case No</td>  
                    <td>  
                        <asp:TextBox ID="caseno" CssClass="tb1"  runat="server"></asp:TextBox>  
                    </td>  
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="caseno" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
  
               </tr> 
                <tr>  
                    <td>Criminalname </td>  
                    <td>  
                        <asp:TextBox ID="criminalname" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="criminalname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
  
               </tr> 
                
                <tr>  
                    <td>Address</td>  
                     
                   <td> <asp:TextBox ID="address" CssClass="tb1" runat="server"></asp:TextBox></td>  
               <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    </tr>  
                <tr>  
                    <td>Date</td>  
                    <td>  
                        <asp:TextBox ID="date" CssClass="tb1" runat="server" ></asp:TextBox>  
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="date" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                <tr>  
                    <td>Crime Type</td>  
                    <td>  
                        <asp:DropDownList ID="crimetype" runat="server">  
                            <asp:ListItem Text="Select Type" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Murdered" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="robbery" Value="robbery"></asp:ListItem>  
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="crimetype" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                <tr>  
                    <td>Gender</td>  
                    <td>  
                        <asp:RadioButtonList ID="gender" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required Field" ControlToValidate="gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
               </tr>  
                <tr>  
                    <td>Mobile</td>  
                    <td>  
                        <asp:TextBox ID="mobileno" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required Field" ControlToValidate="mobileno" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                 <tr>  
                    <td>Crime Place</td>  
                    <td>  
                        <asp:TextBox ID="crimeplace" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required Field" ControlToValidate="crimeplace" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                 <tr>  
                    <td>Crime Brief</td>  
                    <td>  
                        <asp:TextBox ID="crimebrief" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required Field" ControlToValidate="crimebrief" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>  
                    <td>penalty</td>  
                    <td>  
                        <asp:TextBox ID="penalty" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required Field" ControlToValidate="penalty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                 <tr>  
                    <td>Handled By</td>  
                    <td>  
                        <asp:TextBox ID="handledby" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td> 
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Required Field" ControlToValidate="handledby" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                 <tr>  
                    <td>Case Status</td>  
                    <td>  
                        <asp:TextBox ID="casestatus" CssClass="tb1" runat="server"></asp:TextBox>  
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required Field" ControlToValidate="casestatus" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr>  
                    <td>  
                       <asp:Button ID="submitbtn" CssClass="savebtn" runat="server" Text="Save" OnClick="submitbtn_Click" />
                        
                    </td>  
                </tr>  
            </table>  
     <asp:Label ID="Label1" runat="server" CssClass="regbtn" Text=""></asp:Label>
        </div>  
      </center>
</body>  
</html>  
</asp:Content>
