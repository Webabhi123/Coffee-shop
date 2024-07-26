<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="project1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .review .box-container
        {
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(30rem,1fr));
            gap:1.5rem;
        }
        .review .box-container .box
        {
            border:var(--border);
            text-align:center;
            padding:3rem 2rem;
        }
            .review .box-container .box p {
            font-size: 16px;
            color: black;
            padding: 0rem 0;
            margin-right: -6rem;
            position: relative;
            left: -218px;
            font-family: initial;
            border: 2px solid;
            font-weight: bold;
            }
   
        .review .box-container .box .user
        {
            height:7rem;
            width:7rem;
            border-radius:50%;
            object-fit:cover;
        }
        .review .box-container .box h3
        {
            padding:1rem 0;
            font-size:2rem;
            color:black;
            margin-top: -4%;
        }
        .review .box-container .box .stars i
        {
            font-size:2rem;
            color:black;
            margin-top: -4%;
        }
/*SECTION HEADING*/
        .heading
        {
            font-size: 40px;
            text-align: center;
        }
/*REVIEW BODY*/
        .review
        {
            background-image: url(image/review-coffee.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    margin-top: -49px;
    margin-bottom: -93px;
        }
        .quote
        {
            color: coral;
    font-size: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="review" id="review">
        <h1 class="heading">Customer's <span>review</span></h1>
        <div class="box-container">
            <div class="box">
            <%--<img src="image/quote.png" alt="" class="quote"/>--%>
                <a href="#" class="quote"><i class="fa-solid fa-quote-left"></i></a>
            <p> This place is amazing! They offered the best coffee and showed the best attitude to its costumers. Internet connection is very fast and is unlimited as well. 
                This place is indeed perfect for studying and chilling out.</p>
            <img src="image/person1.jpg" class="user" alt=""/>
            <h3>Rohan</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
            <div class="box">
            <%--<img src="image/quote.png" alt="" class="quote"/>--%>
                <a href="#" class="quote"><i class="fa-solid fa-quote-left"></i></a>
            <p>This place is amazing! They offered the best coffee and showed the best attitude to its costumers. Internet connection is very fast and is unlimited as well. 
                This place is indeed perfect for studying and chilling out.</p>
            <img src="image/person2.jpg" class="user" alt=""/>
            <h3>Elizabeth</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
            <div class="box">
            <%--<img src="image/quote.png" alt="" class="quote"/>--%>
                <a href="#" class="quote"><i class="fa-solid fa-quote-left"></i></a>
            <p>I would probably say that this coffee shop is a must for coffee lovers! The service was good, and the variety of coffee served in the ambiance was very satisfying. 
                If you like your coffee shops, then this is a must-visit! We will be back again!</p>
            <img src="image/person3.jpeg" class="user" alt=""/>
            <h3>Rani</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
            
        <div class="box">
            <%--<img src="image/quote.png" alt="" class="quote"/>--%>
                <a href="#" class="quote"><i class="fa-solid fa-quote-left"></i></a>
            <p>I would probably say that this coffee shop is a must for coffee lovers! The service was good, and the variety of coffee served in the ambiance was very satisfying. 
                If you like your coffee shops, then this is a must-visit! We will be back again!</p>
            <img src="image/person4.jpg" class="user" alt=""/>
            <h3>Soni</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        <div class="box">
            <%--<img src="image/quote.png" alt="" class="quote"/>--%>
                <a href="#" class="quote"><i class="fa-solid fa-quote-left"></i></a>
            <p>I would probably say that this coffee shop is a must for coffee lovers! The service was good, and the variety of coffee served in the ambiance was very satisfying. 
                If you like your coffee shops, then this is a must-visit! We will be back again!</p>
            <img src="image/person5.jpg" class="user" alt=""/>
            <h3>Raj</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        <div class="box">
            <%--<img src="image/quote.png" alt="" class="quote"/>--%>
                <a href="#" class="quote"><i class="fa-solid fa-quote-left"></i></a>
            <p>I would probably say that this coffee shop is a must for coffee lovers! The service was good, and the variety of coffee served in the ambiance was very satisfying. 
                If you like your coffee shops, then this is a must-visit! We will be back again!</p>
            <img src="image/person6.jpg" class="user" alt=""/>
            <h3>Kundhra</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
            </div>
    </section>
        
</asp:Content>
