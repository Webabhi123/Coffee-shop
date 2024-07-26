<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        section
        {
        background-image: url(image/contact.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        margin-top: -36px;
        margin-bottom: -93px;
        }
        h2{
            text-align:center;
        }
        #heading
        {
            margin-left: 9px;
        }
        #icon
        {
        position: absolute;
        top: 33%;
        left: 13px;
        }
        .contact-icon .icon1
        {
            font-size: 34px;
            list-style-type: none;
        }
        .box h3
        {
        margin-left: 6%;
        /*margin-top: -2%;*/
        }
        .box p
        {
                margin-left: -78%;
        }
        /*box 1-content*/
        #icon1
        {
            position: relative;
            top: 10px;
        }
        .box1 h3
        {
        margin-top: -3%;
        margin-left: 6%;
        }
        .box1 p
        {
            margin-left:-81%;
        }
        /*box 2-content*/
        #icon2
        {
            /*margin-left:26px;*/
            margin-top:35px;
        }
        .box2 h3
        {
            margin-top: -51px;
            margin-left: 6%;
        }
        .box2 p
        {
            margin-left:-75%;
        }
        /*Container message*/
        #container-message{
            position: relative;
            left: 36%;
            margin-top: -14%;
            background-color: wheat;
            width: 45%;
            border-radius: 30%;
        }
       #container-message h3
       {
           font-size:35px;
           margin-left:33%;
       }
       .textbox
       {
           margin-left:33%;
       }
       #name
       {
           margin-left:1%;
       }
       .button
       {
            background-color: cornsilk;
            margin-left: 45%;
            font-size: 20px;
            border-radius: 25px;
       }
       .label
       {
           margin-left: 37%;
           font-size: 18px;
       }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="contact"> 
            <div class="content">
                <h2>Contact Us</h2>
                <p id="heading">Here is the contact Page if you have any feedback you can just give
                    we will contact you soon.
                </p>
            </div>
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div id="icon">
                            <ul class="contact-icon">
                                <li class="icon1"><a href="#"><i class="fa-solid fa-location-dot"></i></a></li>
                            </ul>
                        </div>
                        <h3>Address</h3>
                        <p>b-6 block Vikas Nagar <br />Uttam Nagar </p>
                    </div>
                    <div class="box1">
                        <div id="icon1">
                            <ul class="contact-icon">
                                <li class="icon1"><a href="#"><i class="fa-solid fa-phone"></i></a></li>
                            </ul>
                        </div>
                        <h3>Phone</h3>
                        <p>+91 9267985467</p>
                    </div>
                    <div class="box2">
                        <div id="icon2">
                            <ul class="contact-icon">
                                <li class="icon1"><a href="#"><i class="fa-regular fa-envelope"></i></a></li>
                            </ul>
                        </div>
                        <h3>Email</h3>
                        <p>abhishekdass123@gmail.com</p>
                    </div>
                </div>
            </div>
            
            <div id="container-message">
                <div>
                    <h3>Send Message</h3>
                </div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" Width="35%" BorderColor="#FF3300" Height="25px" CssClass="textbox">Type Your Full Name</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Name" ForeColor="Red" ToolTip="textbox">*</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="35%" BorderColor="#FF9966" Height="25px" CssClass="textbox">Type your Email</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Email" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="35%" BorderColor="#FF6600" Height="50px" CssClass="textbox" TextMode="MultiLine">Type your Message</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Your Message" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </div>
                <asp:Button ID="Button1" CssClass="button" runat="server" Text="Send" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" CssClass="label"></asp:Label>
            </div>
                
        </div>
    </section>
</asp:Content>
