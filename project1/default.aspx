
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="project1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        #body-content
        {
        background-image:url("image/body-coffee.png");
        background-repeat:no-repeat;
        background-size:cover;
        padding-top:38%;
        }
        #para-intro
        {
        border: 2px solid;
        position: absolute;
        top: 38%;
        right: 64%;
        margin-left: 12px;
        color:wheat;
        }
        .link {
        text-decoration: none;
        background-color: sandybrown;
        font-size: 25px;
        border-radius: 6px;
        color: lightyellow;
        font-weight: bold;
        }
        .link:hover
        {
            background-color:palegreen;
            color:black;
        }
        #setimage
        {
        margin-left:43%;
        margin-top:-40%;

        }
        h1{
        color: aqua;
        position: absolute;
        top: 25%;
        left: 13%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body-content">
        <h1>Coffee Shop</h1>
            <p id="para-intro">Coffee is a beverage prepared from roasted coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content. 
                It has the highest sales in the world market for hot drinks.Caffeine is the first thing that comes to mind when you think about coffee. But coffee also contains antioxidants and other active substances that may reduce internal inflammation and protect against disease, 
                say nutrition experts from Johns Hopkins University School of Medicine.
                <br />
                Click Below the button for More Info 
            </p>
        <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" PostBackUrl="~/Products.aspx">OurProduct</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" CssClass="link" runat="server" PostBackUrl="~/About.aspx">About Shop</asp:LinkButton>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>        
    </div>
    <div id="setimage">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:Image ID="Image1" Height="500px" Width="850px" runat="server" BorderStyle="Double" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>