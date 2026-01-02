<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AppleStoreShop.Products" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

    <div class="container mt-5">
        <h4 style="color: #4a4a4a" class="mb-4">Product List</h4>
        <div class="row">
            <asp:ListView runat="server" ID="ListView1" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-5 d-flex justify-content-center">
                        <a href="Details.aspx?PID=<%#Eval("PID") %>" style="text-decoration:none; color:black">
                            <div class="card text-center"> 
                                <img src="<%#Eval("PImage") %>" width="100%" height="100%"/>
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
    </div>

    <asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    DataSourceMode="DataReader"
    ConnectionString="<%$ ConnectionStrings:db %>"
    SelectCommand="
        SELECT [PID], [PName], [PPrice], [PImage], [Category] 
        FROM [Product]
        WHERE (@Cat = 'all' OR @Cat = '' OR [Category] = @Cat)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Cat" QueryStringField="category" DefaultValue="all" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>
