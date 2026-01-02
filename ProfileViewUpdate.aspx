<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProfileViewUpdate.aspx.cs" Inherits="AppleStoreShop.ProfileViewUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Profile</title>
    <style>
        .form-container { 
            width: 600px; 
            margin: auto; 
            padding: 20px; 
            background: #f5f5f5; 
            border-radius: 10px; 
        }
        label { font-weight: bold; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ===== VIEW PANEL ===== -->
    <asp:Panel ID="PanelView" runat="server" CssClass="form-container" Visible="true" style="padding: 3em;">
        <h2 style="margin-bottom: 2em;">Profile Information</h2>

        <p><label>Name:</label> <asp:Label ID="lblName" runat="server" /></p>
        <p><label>Email:</label> <asp:Label ID="lblEmail" runat="server" /></p>
        <p><label>Gender:</label> <asp:Label ID="lblGender" runat="server" /></p>
        <p><label>Joined:</label> <asp:Label ID="lblJoined" runat="server" /></p>

        <asp:Button ID="btnEdit" Text="Edit Profile" CssClass="btn btn-primary" runat="server" OnClick="btnEdit_Click" />
    </asp:Panel>

    <!-- ===== UPDATE PANEL ===== -->
    <asp:Panel ID="PanelEdit" runat="server" CssClass="form-container" Visible="false">
        <h2>Edit Profile</h2>

        <p><label>Name:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
        </p>

        <p><label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"  ReadOnly="true" />
        </p>

        <p><label>Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" />
        </p>

        <p><label>Gender:</label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                <asp:ListItem Text="Male" />
                <asp:ListItem Text="Female" />
                <asp:ListItem Text="Other" />
            </asp:DropDownList>
        </p>

        <asp:Button ID="btnUpdate" Text="Save Changes" CssClass="btn btn-success" runat="server" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnCancel" Text="Cancel" CssClass="btn btn-secondary" runat="server" OnClick="btnCancel_Click" />
    </asp:Panel>

</asp:Content>
