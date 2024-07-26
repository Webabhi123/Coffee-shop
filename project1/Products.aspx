<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="project1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css">
        .products .box-container
        {
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(30rem,1fr));
            gap:1.5rem;
        }
        .products .box-container .box
        {
            text-align:center;
            border:var(--border);
            padding:2rem;
        }
        .products .box-container .box .icon a{
            height:5rem;
            width:5rem;
            line-height:5rem;
            font-size:2rem;
            border:var(--border);
            color:black;
            margin:.3rem;
        }
        .products .box-container .box .icon a:hover
        {
            background:var(--main-color);
            background-color:aqua;
        }
        .products .box-container .box .image
        {
            padding:2.5rem 0;
        }
        .products .box-container .box .image img
        {
            height:25rem;
            border-radius:50%;
        }
        .products .box-container .box .content h3
        {
            color:black;
            font-size:2.5rem;
        }
        .products .box-container .box .content .stars
        {
            padding:1.5rem;
        }
        .products .box-container .box .content .stars i
        {
            font-size:1.7rem;
            color:var(--main-color);
        }
        .products .box-container .box .content .price
        {
            color:black;
            font-size:2.5rem;
        }
        .products .box-container .box .content .price span
        {
            text-decoration:line-through;
            font-weight:lighter;
            font-size:1.5rem;
            font-size:1.5rem;
            color:black;
        }
        /*HEADING*/
        h1
        {
            /*font-size: 40px;*/
        text-align: center;
        color: crimson;
        font-size:xxx-large;
        font-family: sans-serif;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="products" id="products">

        <h1 class="heading">Our<span>Products</span></h1>

        <div class="box-container">
            <div class="box">
                <div class="icon">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="image/1.jpeg"/>
                </div>
                <div class="content">
                    <div class="stars">
                    <h3 id="h3">fresh coffee</h3>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    </div>
                <div class="price">15.99<span>2099</span></div>
               </div>
            </div>
            <div class="box">
                <div class="icon">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image" id="img">
                    <img src="image/2.jpg"/>
                </div>
                <div class="content">
                    <div class="stars">
                    <h3>fresh coffee</h3>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                     </div>
                <div class="price">15.99<span>2099</span></div>
                     </div>
            </div>
            <div class="box">
                <div class="icon">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="image/7.jpg"/>
                </div>
                <div class="content">
                    <div class="stars">
                    <h3>fresh coffee</h3>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                        </div>
                <div class="price">15.99<span>2099</span></div>
                    </div>
            </div>
        </div>
    </section>
</asp:Content>
