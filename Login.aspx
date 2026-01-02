<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppleStoreShop.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-5">
        <div class="row  h-100" style="width: 500px;margin: auto;text-align: center;">

            <div class="col-md-12">
                <h2 class="mb-5 mt-5">Login</h2>
                <div class="row">
                    <div class="col-md-12">
                        <input runat="server" type="text" placeholder="email" class="form-control" id="email">
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="email"
                            ErrorMessage="Email can not be empty"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row mt-3 center">

                    <div class="col-md-12">
                        <input runat="server" type="password" placeholder="password" class="form-control" id="password">
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator4" 
                                runat="server"
                                ControlToValidate="password"
                                ErrorMessage="Password can not be empty"
                                ForeColor="Red" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    </div>
                 <div class="row mt-3 center">
                    <div class="col-md-12">
                        <br>
                        <asp:Button ID="btnLogin" runat="server" Text="LOG IN" CssClass="btn btn-primary" style="width: 15rem;" OnClick="btnLogin_Click" />
                        <br />
                        <br />
                        <asp:HyperLink ID="Register" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="black">Register</asp:HyperLink><br />
                        <asp:Label ID="lableMsg" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
