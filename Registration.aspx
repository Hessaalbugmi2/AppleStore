<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AppleStoreShop.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container-fluid {
            margin: 5rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row  h-100" style="margin: auto; text-align: center; width: 32rem; margin-top: 3rem; margin-bottom: 3rem;">
            <div class="col-md-12">
                <h2 class="mb-5">Registration</h2>
                <div class="row">

                    <div class="col-md-12">
                        <input runat="server" type="text" class="form-control" id="Name" placeholder="Your name">

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidatorName"
                            runat="server"
                            ControlToValidate="Name"
                            ErrorMessage="Name can not be empty"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row mt-3">

                    <div class="col-md-12">
                        <input runat="server" type="text" class="form-control " id="email" placeholder="Email">

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="email"
                            ErrorMessage="Email can not be empty"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row mt-3">

                    <div class="col-md-12">
                        <asp:RadioButtonList ID="RadioButtonGender" RepeatDirection="Horizontal" runat="server" CssClass="FormatRadioButtonList">
                            <asp:ListItem Value="0">Male</asp:ListItem>
                            <asp:ListItem Value="1">Female</asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="RadioButtonGender"
                            ErrorMessage="You should choose gender"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row mt-3">

                    <div class="col-md-12">
                        <input runat="server" type="password" class="form-control" id="password" placeholder="Password">

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="password"
                            ErrorMessage="Password can not be empty"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row mt-3">

                    <div class="col-md-12">
                        <input runat="server" type="password" class="form-control" id="Confirmpass" placeholder="Confirm Password">

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4"
                            runat="server"
                            ControlToValidate="Confirmpass"
                            ErrorMessage="Confirm Password can not be empty"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1"
                            runat="server"
                            ErrorMessage="Password and confirm password does not match"
                            ControlToValidate="Confirmpass"
                            ControlToCompare="password"
                            Display="Dynamic"
                            ForeColor="Red">
                        </asp:CompareValidator>
                    </div>
                </div>
                <div class="row mt-3">

                    <div class="col-md-12">


                        <asp:Button ID="Button1" runat="server" style="width: 20rem;" Text="REGISTER" CssClass="btn btn-primary" OnClick="btnRegistration_Click" />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" ForeColor="black">Login</asp:HyperLink>
                        <br />
                        <br />
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>

                    </div>
            </div>
        </div>
    </div>
</asp:Content>
