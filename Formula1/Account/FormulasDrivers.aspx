<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormulasDrivers.aspx.cs" Inherits="Formula1.Account.ForumlasDrivers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-center">Insert Formulas and Drivers</h1>

    <div>
        <hr />
        <h3>Insert formula</h3>
        <asp:Label ID="Label1" runat="server" Text="Formula brand:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Year of creation:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <h3>Insert Driver</h3>
        <asp:Label ID="Label4" runat="server" Text="Full name:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Team name:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Insert Formula" CssClass="btn btn-danger" OnClick="Button1_Click"/>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>


</asp:Content>
