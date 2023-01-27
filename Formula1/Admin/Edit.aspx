<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Formula1.Admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Manage formulas and drivers</h1>

    <div>
        <h3>Formulas</h3>
        <asp:GridView ID="GridView1" runat="server"
            CssClass="table"
            AutoGenerateSelectButton="true"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>

        <br />

        <asp:Panel ID="Panel1" Visible="false" runat="server">
            
            <h3>Formula edit</h3>

            <asp:Label ID="Label2" runat="server" Text="Formula ID:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="Label4" runat="server" Text="Formula brand:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Year of creation:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

            <br />

            <asp:Button ID="Button1" runat="server" Text="Edit formula" CssClass="btn btn-danger" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Delete formula" CssClass="btn btn-secondary" OnClick="Button2_Click" />

            <br />
            <br />
            <asp:Label ID="FormulaError" runat="server" ForeColor="Red" Text=""></asp:Label>
        </asp:Panel>

        <br />

        <h3>Drivers</h3>
        <asp:GridView ID="GridView2" runat="server"
            CssClass="table"
            AutoGenerateSelectButton="true"
            OnSelectedIndexChanged="GridView2_SelectedIndexChanged"></asp:GridView>

        <br />

        <asp:Panel ID="Panel2" Visible="false" runat="server">

            <h3>Drivers edit</h3>

            <asp:Label ID="Label5" runat="server" Text="Driver ID:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="Label6" runat="server" Text="Full name:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="Label7" runat="server" Text="Team name:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Button ID="Button3" runat="server" Text="Edit driver" CssClass="btn btn-danger" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Delete driver" CssClass="btn btn-secondary" OnClick="Button4_Click" />

            <br />
            <br />

            <asp:Label ID="DriversError" runat="server" ForeColor="Red" Text=""></asp:Label>
        </asp:Panel>

        <br />
    </div>

    <div>
        <h3>Write us list</h3>

        <asp:GridView ID="GridView3" runat="server" CssClass="table"></asp:GridView>
    </div>

</asp:Content>
