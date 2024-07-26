<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
    <style type="text/css">
        .about
        {
            width:100%;
            padding:78px 0px;
            /*background-color:#191919;*/
            background-image:url("image/about-us.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin-top: -16px;
            margin-bottom: -93px;

        }
        .about img
        {
            height:auto;
            width:420px;
            border-radius:50%;
        }
        .about-text
        {
            width:550px;
        }
        .main
        {
            width:1130px;
            max-width:95%;
            margin:0 auto;
            display:flex;
            align-items:center;
            justify-content:space-around;
        }
        .about-text h1
        {
            color:wheat;
            font-size:80px;
            text-transform:capitalize;
            margin-bottom:20px;
            margin-left:34%;
        }
        .about-text h5
        {
            color: wheat;
            font-size: 25px;
            text-transform: capitalize;
            margin-bottom: 25px;
            letter-spacing: 2px;
            margin-left: 52%;
        }
        .about-text p
        {
            color: aliceblue;
            letter-spacing: 5px;
            line-height: 19px;
            font-size: 20px;
            margin-right: -41%;
            margin-left: 1%;
            font-family: initial;
            border: 2px solid black;
            border-radius: 47px;
            background-color: chocolate;
        }
        button
        {
            background:#f9004d;
            color:white;
            text-decoration:none;
            border:2px solid transparent;
            font-weight:bold;
            padding:13px 30px;
            border-radius:30px;
            transition:.4s;
            margin-left: 58%;
        }
        button:hover
        {
            background:transparent;
            border:2px solid #f9004d;
            cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="about">
        <div class="main">
            <img src="image/abhi1.jpeg" />
            <div class="about-text">
                <h1>About Us</h1>
                <h5>Coffee Shop</h5>
                <p>Coffee shops provide a place to gather, work, and drink. Smart use of atmospherics can not only help you attract more customers, 
                    but also create a space in which they’ll savor both their coffee and their experience in your establishment.
                    A good coffee shop will create a warm, homely feel, yet at the same time create spaces where people can sit and work in relative privacy. 
                    This balance is why the coffee shop has overtaken places such as libraries, becoming the go-to location for those freelancing or working out of the office.
                    With an increasing number of people pursuing these working arrangements, coffee shops will only continue to become more popular.
                    Even for businesses and employees still working in a traditional manner, the coffee shop offers the perfect place to spend informal meetings.
                </p>
                <button type="button"></button>
            </div>
        </div>    
    </section>
</asp:Content>
