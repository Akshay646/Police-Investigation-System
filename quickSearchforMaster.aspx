<%@ Page Title="" Language="C#" MasterPageFile="~/executive.Master" AutoEventWireup="true" CodeFile="quickSearchforMaster.aspx.cs" Inherits="quickSearchforMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            border-collapse: collapse;
            background-color: #fff;
        }
        table th
        {
            background-color: #B8DBFD;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        table, table table td
        {
            border: 0px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" >
       
    <tr>
            <td> Enter Criminal Name:</td>

            
   <td><asp:TextBox ID="txtSearch" CssClass="tb1" runat="server" /></td> 
            </tr>
        <tr>
        <td><asp:Button Text="Search" CssClass="savebtn" runat="server" OnClick="Search1" /></td>
            </tr>
           
    
    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" AllowPaging="true"
        OnRowDataBound="OnRowDataBound" OnPageIndexChanging="OnPageIndexChanging">
        <Columns>
            <asp:BoundField HeaderStyle-Width="150px" DataField="caseno" HeaderText="Case No"
                ItemStyle-CssClass="Entryno" HtmlEncode = "false"  />
           
            <asp:BoundField HeaderStyle-Width="150px" DataField="Criminalname" HeaderText="Criminal Name" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Address" HeaderText="Address" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Date" HeaderText="Date" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Crimetype" HeaderText="Crime Type" />
            <asp:BoundField HeaderStyle-Width="150px" DataField="Gender" HeaderText="Gender" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Mobileno" HeaderText="Mobile No" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Crimeplace" HeaderText="Crime Place" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Crimebrief" HeaderText="Crime Brief" />
            <asp:BoundField HeaderStyle-Width="150px" DataField="Penalty" HeaderText="Penalty" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Handledby" HeaderText="Handled By" />
             <asp:BoundField HeaderStyle-Width="150px" DataField="Casestatus" HeaderText="Case Status" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
</asp:Content>

