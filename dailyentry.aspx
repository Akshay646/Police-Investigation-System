<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="dailyentry.aspx.cs" Inherits="Police_Investigation_System_NEW_.dailyentry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/complaintform.css" rel="stylesheet" />
    <link href="CSS/messages.css" rel="stylesheet" />
    <center>
     <h2 class="top">ENTRY DETAILS</h2>
   
        </center>
    <style>
        .auto-style1{
            margin-top:40px;
        }

    
    </style>
    <center>
        <div>  
            <table class="auto-style1"> 
                
                <tr>  
                    <td>Entryno</td>  
                    <td>  
                        <asp:TextBox ID="entryno" CssClass="tb1"  runat="server" TextMode="Number"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required Field" ControlToValidate="entryno" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
  
               </tr> 
                <tr>  
                    <td>Entry Type </td>  
                    <td>  
                        <asp:TextBox ID="entrytype" CssClass="tb1" runat="server" Textmode="MultiLine"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="entrytype" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
  
               </tr> 
                
                <tr>  
                    <td>Date</td>  
                     <td> <asp:TextBox ID="entrydate" CssClass="tb1" runat="server" TextMode="MultiLine"></asp:TextBox></td>  
                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="entrydate" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    </tr>  

               
                <tr>  
                    <td>Police ID</td>  
                    <td>  
                        <asp:TextBox ID="policeid" CssClass="tb1" runat="server" TextMode="Number"></asp:TextBox>  
                    </td>  
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="policeid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                <tr>  
                    <td>Entry Description</td>  
                    <td>  &nbsp;<asp:TextBox ID="entrydesciption" CssClass="tb1" runat="server" TextMode="MultiLine"></asp:TextBox>  
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="entrydesciption" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                 <tr>  
                    <td>  
                       <asp:Button ID="savebtn" CssClass="savebtn" runat="server" Text="Save" OnClick="savebtn_Click" />
                    </td>  
                </tr>  
                
                </table>
             <asp:Label ID="Label2" runat="server" CssClass="regbtn" Text=""></asp:Label>
            </div>
        </center>
</asp:Content>
