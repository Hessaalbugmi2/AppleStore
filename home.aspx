<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AppleStoreShop.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background: url(Products/homehero.png) no-repeat center center / cover; height: 100vh; width: 100%;">
        <div class="container" style="margin: auto;text-align: center;padding-top: 10em;">           
            <h1 style="font-family: 'Poppins', san-sarif;font-weight: 700;text-transform: none; font-size: 4em;">iPhone Air</h1>
            <p class="lead text-muted">The thinnest iPhone ever. <br /> With the power of pro inside </p>
            <a href="Products.aspx" class="btn btn-primary my-2">Learn more</a>
            <a href="Products.aspx" class="btn btn-primary my-2">Buy</a>
        </div>
    </section> 
    <style>
        .products img {
            width: 100%;
            height: auto;
            display: block;
            margin-top: 16px;
        }
    </style>

    <div class="container-fluid products">
        <div class="row">
            <div class="col-md-6">
                <img src="Products/home1.png" alt="Alternate Text"  style="cursor:pointer;" onclick="window.location.href='Products.aspx';"/>
            </div>
            <div class="col-md-6">
                <img src="Products/home2.png" alt="Alternate Text" style="cursor:pointer;" onclick="window.location.href='Products.aspx?category=Air Pods';"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <img src="Products/home3.png" alt="Alternate Text"  style="cursor:pointer;" onclick="window.location.href='Products.aspx?category=Mac Book';"/>
            </div>
            <div class="col-md-6">
                <img src="Products/home4.png" alt="Alternate Text"  style="cursor:pointer;" onclick="window.location.href='Products.aspx?category=Watch';"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <img src="Products/home5.png" alt="Alternate Text"  style="cursor:pointer;" onclick="window.location.href='Products.aspx?category=Phone';"/>
            </div>
            <div class="col-md-6">
                <img src="Products/home6.png" alt="Alternate Text"  style="cursor:pointer;" onclick="window.location.href='Products.aspx?category=Phone';"/>
            </div>
        </div>
    </div>

    <%--    <div class="container mt-5">
        <h4 style="color: #4a4a4a" class="mb-4">If you can dream it, You can do it.</h4>
        <div class="row">
            <asp:ListView runat="server" ID="ListView1" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-lg-6 col-md-6 col-sm-12 mb-5 d-flex justify-content-center">
                        <a href="Details.aspx?PID=<%#Eval("PID") %>" style="text-decoration: none; color: black">
                            <div class="card text-center">

                                <img src="<%#Eval("PImage") %>" width="100%" height="100%" />

                                <div class="card-body text-left">
                                    <p class="card-title" style="font-size: 12px"><%#Eval("PName") %></p>
                                    <strong style="font-size: 20px; font-size: 20px; color: black;"><%#Eval("PPrice", "{0:c}") %></strong>
                                </div>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>--%>

    <%--<asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server"
        DataSourceMode="DataReader"
        ConnectionString="<%$ ConnectionStrings:db %>"
        SelectCommand="SELECT TOP 6 [PID], [PName], [PPrice], [PImage] FROM [Product] ORDER BY NEWID()"></asp:SqlDataSource>--%>
</asp:Content>
