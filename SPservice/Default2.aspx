<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
      Enter Entry Time
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Time" CssClass="txt" required></asp:TextBox>
        <br />
    <br />
    Enter Exit Time&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Time" CssClass="txt" required></asp:TextBox>
        <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
        <div style="padding: 10px; margin: 10px; text-align: center;  font-size: large; font-weight: bold; background-color: #000099">
            Hello World
        </div>
    </form>
</body>
</html>
