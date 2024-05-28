<%@ Page Title="" Language="C#" MasterPageFile="~/UMasterPage.master" AutoEventWireup="true" CodeFile="nBook.aspx.cs" Inherits="nBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        
    <h1>New Booking</h1>
    <hr />
    Enter Date
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="txt" required></asp:TextBox>
    <br />
    Enter Entry Time
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Time" CssClass="txt" required></asp:TextBox>
    <br />
    Enter Exit Time
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Time" CssClass="txt" required></asp:TextBox>
     <br /><br />
    Select Parking No.
    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:Listitem Value="1">Parking1</asp:Listitem>
        <asp:ListItem Value="2">Parking2</asp:ListItem>
        <asp:ListItem Value="3">Parking3</asp:ListItem>
        <asp:ListItem Value="4">Parking4</asp:ListItem>
        <asp:ListItem Value="5">Parking5</asp:ListItem>
        <asp:ListItem Value="6">Parking6</asp:ListItem>
    </asp:DropDownList>
     <br /><br />
     <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
     <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="300px" Width="100%" ScrollBars="Auto">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BDate" HeaderText="Date" SortExpression="BDate" />
            <asp:BoundField DataField="BENTime" HeaderText="ENTime" SortExpression="BENTime" />
            <asp:BoundField DataField="BEXTime" HeaderText="EXTime" SortExpression="BEXTime" />
            <asp:BoundField DataField="TMinutes" HeaderText="TMinutes" SortExpression="TMinutes" />
            <asp:BoundField DataField="PId" HeaderText="ParkId" SortExpression="PId" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NTDBConnectionString %>" SelectCommand="SELECT [BDate], [BENTime], [BEXTime], [TMinutes], [PId] FROM [BTable] WHERE ([UId] = @UId)">
        <SelectParameters>
            <asp:SessionParameter Name="UId" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        </asp:Panel>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

