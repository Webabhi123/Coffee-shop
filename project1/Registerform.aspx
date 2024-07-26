<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerform.aspx.cs" Inherits="project1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
        background-image:url(image/body-signup.jpg);
        background-repeat:no-repeat;
        background-size:cover;
        }
        #content
        {
            background-color:lightsteelblue;
            width: 30%;
            margin-left: 59%;
            border-radius: 17%;
            margin-top:-19%;
        }
        h3
        {
            text-align:center;
            font-size:34px;
        }
        h5
        {
            position: relative;
            left: 39%;
            font-size: 15px;
            font-family: system-ui
        }
        .textbox1
        {
            position: relative;
            left: 39%;
            top: -17px;
            border-radius: 10px;
            font-size: 19px;
        }
        .textbox2
        {
            position: relative;
            left: 39%;
            top: -17px;
            border-radius: 10px;
            font-size: 19px;
        }
        .textbox3
        {
            position: relative;
            left: 39%;
            top: -17px;
            border-radius: 10px;
            font-size: 19px;
        }
        .textbox4
        {
            position: relative;
            left: 39%;
            top: -17px;
            border-radius: 10px;
            font-size: 19px;
        }
        .button
        {
            margin-left:43%;
            border-radius: 50px;
            font-size: 17px;
        }
        .Signuplabel
        {
            position: relative;
            left: 19%;
            color: red;
        }
        /*Login Page*/
        #login-content
        {
            background-color: lightsteelblue;
            width: 30%;
            margin-left: 9%;
            border-radius: 26%;
            margin-top: 9%;
        }
        h2
        {
            margin-left:40%;
            font-size:31px;
        }
        h4
        {
            margin-left: 27%;
            font-size: 18px;
            margin-top: -2px;
        }
        .textbox5
        {
            position: relative;
            top: -20px;
            left: 120px;
            border-radius: 10px;
            font-size: 19px;
        }
        .textbox6
        {
            position: relative;
            top: -20px;
            left: 120px;
            border-radius: 10px;
            font-size: 19px;
        }
        .button1
        {
            margin-left:39%;
            border-radius: 50px;
            font-size: 17px;
        }
        .label2
        {
            margin-left:24%;
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-content">
            <h2>login</h2>
            <div>
                <h4>UserName</h4>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox5" Width="25%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Your UserName" ControlToValidate="TextBox5" ForeColor="Red" SetFocusOnError="True" ValidationGroup="login">*</asp:RequiredFieldValidator>
                <h4>Password</h4>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox6" Width="25%" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Password
                    " ControlToValidate="TextBox6" ForeColor="Red" SetFocusOnError="True" ValidationGroup="login">*</asp:RequiredFieldValidator>
            <br />
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="login" />
            </div>
            <div>
                <asp:Button ID="Button2" runat="server" Text="Log in" CssClass="button1" BorderColor="#FF3300" BorderStyle="Inset" ValidationGroup="login" OnClick="Button2_Click" />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="label2"></asp:Label>
            </div>
        </div>

        <div id="content">
            <h3>Sign Up</h3>
            <div id="Container">
                <h5>UserName</h5>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" Height="30%" Width="25%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your UserName" 
                    ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup">*</asp:RequiredFieldValidator>
                <br />
                <h5>Your Email</h5>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox2" Width="25%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Email" ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup">*</asp:RequiredFieldValidator>
                <br />
                <h5>Password</h5>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox3" Width="25%" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Password" ControlToValidate="TextBox3" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup">*</asp:RequiredFieldValidator>
                <br />
                <h5>Confirm Password</h5>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox4" Width="25%" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your Confirm Password" ControlToValidate="TextBox4" ForeColor="Red" SetFocusOnError="True" ValidationGroup="signup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not match" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" ValidationGroup="signup">*</asp:CompareValidator>
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="signup" />
            </div>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Register" CssClass="button" BorderColor="#FF3300" BorderStyle="Inset" BorderWidth="10px" ValidationGroup="signup" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="Signuplabel"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
