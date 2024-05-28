<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="css/StyleSheet.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
       
        <hr />
        <h1>Smart Parking</h1>
        <hr />
        <br /> <img src="images/logo1.jpg" class="img"  /> <br /><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Mobile No." TextMode="Phone" CssClass="txt" required></asp:TextBox>
        <br /> <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" TextMode="Password" CssClass="txt" required></asp:TextBox>
         <br /> <br />
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click"/>
         <br /> <br />
         <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br /> <br />
         <a href="Reg.aspx">New User</a>
         <br /> <br />
    </div>
    </form>
</body>
</html>
