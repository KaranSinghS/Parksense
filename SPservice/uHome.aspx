<%@ Page Title="" Language="C#" MasterPageFile="~/UMasterPage.master" AutoEventWireup="true" CodeFile="uHome.aspx.cs" Inherits="uHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
        .auto-style2 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="text-align: center"><h2>Current Status</h2></div>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <asp:Table ID="Table1" runat="server" GridLines="Vertical" Width="100%">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" Font-Bold="True">Parking Place</asp:TableCell>
            <asp:TableCell runat="server" Font-Bold="True">Distance</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
            <div style="text-align: center">
                <asp:Literal ID="Literal5" runat="server"></asp:Literal></div>
    
        <br />
    <div style="text-align: center">Parking Zone</div>
    <br />
    <table style="width: 100%; text-align: center;">
         <tr>
            <td class="auto-style1">Parking No.</td>
            <td>Status</td>
        </tr>
        <tr>
            <td class="auto-style1">1</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">2</td>
            <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr>
            <td class="auto-style1">3</td>
            <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">4</td>
            <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">5</td>
            <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">6</td>
            <td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
    <br />
             </ContentTemplate>
    </asp:UpdatePanel>
     <br />
    <br />
</asp:Content>

