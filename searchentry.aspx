<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="searchentry.aspx.cs" Inherits="Police_Investigation_System_NEW_.searchentry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title></title>
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
</head>
<body>
    <form id="form1" >
   
        <tr>
            <td>Enter Date</td>

            
   <td><asp:TextBox ID="txtSearch" CssClass="tb1" runat="server" /></td> 
            </tr>
        <tr>
        
        <td><asp:Button Text="SEARCH" CssClass="savebtn" runat="server" OnClick="Search" /></td>
            </tr>
            
    <hr />
    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" AllowPaging="true"
        OnRowDataBound="OnRowDataBound" OnPageIndexChanging="OnPageIndexChanging">
        <Columns>
            <asp:BoundField HeaderStyle-Width="150px" DataField="Entryno" HeaderText="Entry No"
                ItemStyle-CssClass="Entryno" HtmlEncode = "false"  />
            <asp:BoundField HeaderStyle-Width="150px" DataField="Entrytype" HeaderText="Entry Type" />
            <asp:BoundField HeaderStyle-Width="150px" DataField="Date" HeaderText="Date" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Policeid" HeaderText="Police Id" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Entrydesciption" HeaderText="Entry Description" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>

</asp:Content>
