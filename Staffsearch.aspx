<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="Staffsearch.aspx.cs" Inherits="Police_Investigation_System_NEW_.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     <link href="CSS/searches.css" rel="stylesheet" />

    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        
        table
        {
            border: 1px solid #ccc;
        }
        
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
        table tbody table
        {
            padding: 5px;
            border-color: #fff !important;
        }
    </style>
  

    <form id="form1" >
       
   <TABEL>
        <tr>
            <td>Enter ID</td>

            
   <td><asp:TextBox ID="txtSearch" CssClass="tb1" runat="server" /></td> 
            </tr>
        <tr>
        
        <td><asp:Button Text="SEARCH" CssClass="savebtn" runat="server" OnClick="search_Click"  /></td>
            </tr>
       </TABEL>
            
    <hr />
    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" AllowPaging="true"
        OnRowDataBound="OnRowDataBound" OnPageIndexChanging="OnPageIndexChanging">
        <Columns>
            <asp:BoundField HeaderStyle-Width="150px" DataField="Id" HeaderText="Police ID"
                ItemStyle-CssClass="Entryno" HtmlEncode = "false"  />
            <asp:BoundField HeaderStyle-Width="150px" DataField="Name" HeaderText="Name" />
            <asp:BoundField HeaderStyle-Width="150px" DataField="Rank" HeaderText="Rank" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Address" HeaderText="Address" />
             
            <asp:BoundField HeaderStyle-Width="150px" DataField="Contact" HeaderText="Contact" />
         <asp:BoundField HeaderStyle-Width="150px" DataField="Emailid" HeaderText="Email" />
           
        </Columns>
    </asp:GridView>
        </form>
</asp:Content>
