<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="text-align: center">
       
       
        <h2>Register Here</h2>
        <hr /><br /> <br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Name"  CssClass="txt" required></asp:TextBox>
        <br /> <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email Id" TextMode="Email" CssClass="txt" required></asp:TextBox>
        <br /> <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Mobile No." TextMode="Phone"  CssClass="txt" required></asp:TextBox>
        <br /> <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Password" TextMode="Password" CssClass="txt" required></asp:TextBox>
         <br /> <br />
         <asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm Password" TextMode="Password" CssClass="txt" required></asp:TextBox>
         <br /> <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click"/>
         <br /> <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br /> <br />
         <a href="Default.aspx">Login</a>
         <br /> <br />
    </div>
    </form>
    
</body>
</html>
