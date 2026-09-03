<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Modern Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --primary:#6c5ce7;
    --primary-dark:#5545d4;
    --secondary:#a855f7;
    --bg:#f7f8fc;
    --surface:#ffffff;
    --text:#151625;
    --muted:#74788a;
    --border:#e9eaf1;
    --success:#19a974;
    --danger:#ef476f;
    --shadow:0 15px 45px rgba(31,35,55,.08);
    --shadow-hover:0 25px 60px rgba(31,35,55,.14);
    --radius:22px;
    --transition:.28s ease;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Inter,Arial,sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.5;
}

button,
input{
    font:inherit;
}

button{
    border:0;
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

img{
    width:100%;
    display:block;
}

.container{
    width:min(1180px,calc(100% - 32px));
    margin:auto;
}

/* ================= HEADER ================= */

header{
    position:sticky;
    top:0;
    z-index:999;
    background:rgba(255,255,255,.86);
    backdrop-filter:blur(20px);
    border-bottom:1px solid rgba(225,227,235,.7);
}

.header{
    height:76px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:25px;
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
    font-size:22px;
    font-weight:900;
    letter-spacing:-1px;
    white-space:nowrap;
}

.logo-icon{
    width:40px;
    height:40px;
    display:grid;
    place-items:center;
    border-radius:13px;
    color:white;
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    box-shadow:0 8px 20px rgba(108,92,231,.3);
}

.logo span{
    color:var(--primary);
}

.nav{
    display:flex;
    align-items:center;
    gap:5px;
}

.nav a{
    padding:10px 14px;
    border-radius:12px;
    font-size:13px;
    font-weight:700;
    color:var(--muted);
    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    background:#efedff;
    color:var(--primary);
}

.header-right{
    display:flex;
    align-items:center;
    gap:8px;
}

.search{
    width:235px;
    height:43px;
    display:flex;
    align-items:center;
    gap:10px;
    padding:0 14px;
    background:#f2f3f7;
    border:1px solid transparent;
    border-radius:13px;
    transition:var(--transition);
}

.search:focus-within{
    background:#fff;
    border-color:#cfc8ff;
    box-shadow:0 0 0 4px rgba(108,92,231,.08);
}

.search i{
    color:#9699a8;
    font-size:13px;
}

.search input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    font-size:13px;
}

.icon-btn{
    position:relative;
    width:43px;
    height:43px;
    display:grid;
    place-items:center;
    border-radius:13px;
    background:transparent;
    color:#626677;
    transition:var(--transition);
}

.icon-btn:hover{
    background:#efedff;
    color:var(--primary);
}

.cart-count{
    position:absolute;
    top:2px;
    right:1px;
    min-width:17px;
    height:17px;
    padding:0 4px;
    display:grid;
    place-items:center;
    border-radius:50px;
    background:var(--primary);
    color:white;
    border:2px solid white;
    font-size:9px;
    font-weight:800;
}

.menu-btn{
    display:none;
}

/* ================= HERO ================= */

.hero{
    position:relative;
    min-height:520px;
    margin-top:20px;
    border-radius:28px;
    overflow:hidden;
    display:flex;
    align-items:center;
    background:
        linear-gradient(90deg,rgba(13,15,27,.97),rgba(13,15,27,.76),rgba(13,15,27,.18)),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:650px;
    padding:70px 0;
}

.hero-badge{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:8px 13px;
    border:1px solid rgba(255,255,255,.15);
    border-radius:50px;
    background:rgba(255,255,255,.09);
    color:#ddd9ff;
    font-size:11px;
    font-weight:800;
    margin-bottom:20px;
    backdrop-filter:blur(10px);
}

.hero h1{
    color:white;
    font-size:clamp(42px,6vw,68px);
    line-height:1.02;
    letter-spacing:-3px;
    margin-bottom:20px;
}

.hero h1 span{
    color:#a99fff;
}

.hero p{
    max-width:550px;
    color:rgba(255,255,255,.72);
    font-size:16px;
    line-height:1.75;
    margin-bottom:30px;
}

.hero-actions{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    min-height:47px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    padding:0 21px;
    border-radius:13px;
    font-size:13px;
    font-weight:800;
    transition:var(--transition);
}

.btn-primary{
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    color:white;
    box-shadow:0 12px 28px rgba(108,92,231,.3);
}

.btn-primary:hover{
    transform:translateY(-3px);
    box-shadow:0 17px 35px rgba(108,92,231,.4);
}

.btn-light{
    color:white;
    border:1px solid rgba(255,255,255,.2);
    background:rgba(255,255,255,.09);
    backdrop-filter:blur(10px);
}

.btn-light:hover{
    background:rgba(255,255,255,.16);
}

/* ================= SECTIONS ================= */

.section{
    padding:70px 0;
}

.section-head{
    display:flex;
    align-items:end;
    justify-content:space-between;
    gap:20px;
    margin-bottom:25px;
}

.section-title h2{
    font-size:28px;
    letter-spacing:-1px;
}

.section-title p{
    color:var(--muted);
    font-size:13px;
    margin-top:5px;
}

.view-all{
    display:flex;
    align-items:center;
    gap:7px;
    color:var(--primary);
    font-size:13px;
    font-weight:800;
}

/* ================= CATEGORIES ================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    padding:23px 10px;
    text-align:center;
    border:1px solid var(--border);
    border-radius:19px;
    background:white;
    transition:var(--transition);
    cursor:pointer;
}

.category:hover{
    transform:translateY(-6px);
    box-shadow:var(--shadow);
    border-color:#d7d1ff;
}

.category-icon{
    width:53px;
    height:53px;
    margin:auto auto 12px;
    display:grid;
    place-items:center;
    border-radius:16px;
    background:linear-gradient(135deg,#efedff,#f6edff);
    color:var(--primary);
    font-size:21px;
}

.category h4{
    font-size:13px;
}

.category small{
    display:block;
    margin-top:3px;
    color:var(--muted);
    font-size:10px;
}

/* ================= PRODUCTS ================= */

.filters{
    display:flex;
    gap:8px;
    overflow-x:auto;
    padding-bottom:5px;
    margin-bottom:20px;
}

.filter{
    flex-shrink:0;
    padding:9px 15px;
    border:1px solid var(--border);
    border-radius:50px;
    background:white;
    color:var(--muted);
    font-size:11px;
    font-weight:750;
    transition:var(--transition);
}

.filter:hover,
.filter.active{
    background:#efedff;
    color:var(--primary);
    border-color:#d5ceff;
}

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:17px;
}

.product{
    overflow:hidden;
    display:flex;
    flex-direction:column;
    background:white;
    border:1px solid var(--border);
    border-radius:20px;
    transition:var(--transition);
}

.product:hover{
    transform:translateY(-7px);
    border-color:#ded8ff;
    box-shadow:var(--shadow-hover);
}

.product-image{
    position:relative;
    aspect-ratio:1;
    overflow:hidden;
    background:#f0f1f5;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s ease;
}

.product:hover .product-image img{
    transform:scale(1.07);
}

.product-badge{
    position:absolute;
    top:11px;
    left:11px;
    padding:6px 9px;
    border-radius:8px;
    color:white;
    background:var(--primary);
    font-size:9px;
    font-weight:900;
}

.product-badge.sale{
    color:#6a4310;
    background:#ffd166;
}

.wishlist{
    position:absolute;
    top:10px;
    right:10px;
    width:35px;
    height:35px;
    display:grid;
    place-items:center;
    border-radius:11px;
    background:rgba(255,255,255,.92);
    color:#686c7d;
    backdrop-filter:blur(10px);
    transition:var(--transition);
}

.wishlist:hover{
    color:var(--danger);
    transform:scale(1.08);
}

.product-info{
    padding:15px 15px 8px;
}

.product-category{
    color:#9a9eac;
    font-size:9px;
    text-transform:uppercase;
    letter-spacing:.8px;
    font-weight:800;
}

.product h3{
    margin-top:5px;
    font-size:14px;
    line-height:1.4;
}

.rating{
    margin-top:7px;
    color:#f2a93b;
    font-size:11px;
}

.rating span{
    color:var(--muted);
    margin-left:3px;
}

.price-row{
    display:flex;
    align-items:center;
    gap:8px;
    margin-top:8px;
}

.price{
    font-size:17px;
    font-weight:900;
}

.old-price{
    color:#a4a7b2;
    text-decoration:line-through;
    font-size:11px;
}

.product-footer{
    padding:7px 15px 15px;
}

.add-cart{
    width:100%;
    height:40px;
    display:flex;
    justify-content:center;
    align-items:center;
    gap:8px;
    border-radius:11px;
    background:#171925;
    color:white;
    font-size:11px;
    font-weight:800;
    transition:var(--transition);
}

.add-cart:hover{
    background:linear-gradient(135deg,var(--primary),var(--secondary));
}

.add-cart.added{
    background:var(--success);
}

/* ================= DEAL ================= */

.deal{
    overflow:hidden;
    display:grid;
    grid-template-columns:1fr 1fr;
    background:white;
    border:1px solid var(--border);
    border-radius:24px;
    box-shadow:var(--shadow);
}

.deal-image{
    min-height:380px;
}

.deal-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.deal-content{
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:50px;
}

.deal-tag{
    align-self:flex-start;
    padding:7px 11px;
    border-radius:8px;
    background:#fff3d9;
    color:#9c6716;
    font-size:9px;
    font-weight:900;
    text-transform:uppercase;
}

.deal h2{
    margin-top:14px;
    font-size:32px;
    line-height:1.15;
    letter-spacing:-1.2px;
}

.deal-desc{
    margin-top:10px;
    max-width:450px;
    color:var(--muted);
    font-size:13px;
    line-height:1.7;
}

.deal-price{
    margin-top:18px;
    font-size:31px;
    font-weight:900;
}

.deal-price del{
    margin-left:7px;
    color:#a0a3ae;
    font-size:15px;
    font-weight:500;
}

.timer{
    display:flex;
    gap:9px;
    margin:20px 0;
}

.time{
    min-width:62px;
    padding:10px;
    text-align:center;
    border:1px solid var(--border);
    border-radius:11px;
    background:#fafaff;
}

.time strong{
    display:block;
    font-size:20px;
}

.time span{
    color:var(--muted);
    font-size:8px;
    text-transform:uppercase;
}

/* ================= REVIEWS ================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
}

.review{
    padding:21px;
    border:1px solid var(--border);
    border-radius:18px;
    background:white;
    transition:var(--transition);
}

.review:hover{
    transform:translateY(-5px);
    box-shadow:var(--shadow);
}

.review-stars{
    color:#f2a93b;
    font-size:12px;
    margin-bottom:11px;
}

.review p{
    min-height:80px;
    color:#555a6c;
    font-size:12px;
    line-height:1.7;
}

.reviewer{
    display:flex;
    align-items:center;
    gap:10px;
    padding-top:13px;
    border-top:1px solid var(--border);
}

.reviewer img{
    width:37px;
    height:37px;
    border-radius:50%;
    object-fit:cover;
}

.reviewer strong{
    display:block;
    font-size:11px;
}

.reviewer span{
    color:var(--muted);
    font-size:9px;
}

/* ================= NEWSLETTER ================= */

.newsletter{
    position:relative;
    overflow:hidden;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:30px;
    padding:42px;
    border-radius:25px;
    background:
        radial-gradient(circle at 85% 20%,rgba(168,85,247,.35),transparent 35%),
        linear-gradient(135deg,#191b29,#2d3045);
    color:white;
}

.newsletter h2{
    font-size:25px;
    letter-spacing:-.8px;
}

.newsletter p{
    color:rgba(255,255,255,.62);
    font-size:12px;
    margin-top:5px;
}

.newsletter-form{
    display:flex;
    gap:8px;
    width:460px;
    max-width:100%;
}

.newsletter-form input{
    flex:1;
    height:45px;
    min-width:0;
    padding:0 14px;
    border:1px solid rgba(255,255,255,.12);
    border-radius:11px;
    outline:0;
    background:rgba(255,255,255,.08);
    color:white;
}

.newsletter-form input::placeholder{
    color:rgba(255,255,255,.4);
}

.newsletter-message{
    display:none;
    margin-top:8px;
    font-size:11px;
}

/* ================= FOOTER ================= */

footer{
    margin-top:60px;
    padding:55px 0 25px;
    background:#151722;
    color:white;
}

.footer-grid{
    display:grid;
    grid-template-columns:1.5fr 1fr 1fr 1fr;
    gap:45px;
}

.footer-brand p{
    max-width:310px;
    margin-top:13px;
    color:#9296a7;
    font-size:12px;
    line-height:1.7;
}

.footer h4{
    margin-bottom:14px;
    font-size:12px;
}

.footer a{
    display:block;
    width:max-content;
    margin-bottom:9px;
    color:#9296a7;
    font-size:11px;
    transition:var(--transition);
}

.footer a:hover{
    color:white;
    transform:translateX(3px);
}

.socials{
    display:flex;
    gap:7px;
    margin-top:18px;
}

.social{
    width:35px;
    height:35px;
    display:grid;
    place-items:center;
    border-radius:10px;
    background:#232633;
    color:#b8bbc7;
}

.social:hover{
    color:white;
    background:var(--primary);
}

.footer-bottom{
    display:flex;
    justify-content:space-between;
    gap:15px;
    margin-top:45px;
    padding-top:20px;
    border-top:1px solid #282b37;
    color:#737787;
    font-size:10px;
}

/* ================= MOBILE MENU ================= */

.mobile-menu{
    display:none;
    padding:10px 0 18px;
}

.mobile-menu a{
    display:block;
    padding:12px;
    border-radius:10px;
    color:var(--muted);
    font-size:13px;
    font-weight:700;
}

.mobile-menu a:hover{
    background:#efedff;
    color:var(--primary);
}

/* ================= RESPONSIVE ================= */

@media(max-width:1050px){
    .nav{
        display:none;
    }

    .menu-btn{
        display:grid;
    }

    .search{
        width:210px;
    }

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .reviews{
        grid-template-columns:repeat(2,1fr);
    }
}

@media(max-width:760px){
    .container{
        width:min(100% - 22px,600px);
    }

    .header{
        height:68px;
        gap:5px;
    }

    .logo{
        font-size:18px;
    }

    .logo-icon{
        width:36px;
        height:36px;
    }

    .search{
        display:none;
    }

    .header-right{
        margin-left:auto;
    }

    .hero{
        min-height:560px;
        margin-top:11px;
        border-radius:21px;
    }

    .hero-content{
        padding:40px 22px;
    }

    .hero h1{
        font-size:44px;
        letter-spacing:-2px;
    }

    .hero p{
        font-size:14px;
    }

    .section{
        padding:50px 0;
    }

    .section-head{
        align-items:flex-start;
        flex-direction:column;
        margin-bottom:18px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
        gap:11px;
    }

    .product h3{
        font-size:12px;
    }

    .product-info{
        padding:12px 11px 6px;
    }

    .product-footer{
        padding:6px 11px 11px;
    }

    .add-cart{
        height:37px;
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-image{
        min-height:270px;
    }

    .deal-content{
        padding:30px 23px;
    }

    .deal h2{
        font-size:27px;
    }

    .newsletter{
        flex-direction:column;
        align-items:flex-start;
        padding:30px 23px;
    }

    .newsletter-form{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
        gap:30px;
    }
}

@media(max-width:480px){
    .hero h1{
        font-size:39px;
    }

    .hero-actions .btn{
        width:100%;
    }

    .categories{
        gap:9px;
    }

    .category{
        padding:17px 7px;
    }

    .category-icon{
        width:45px;
        height:45px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .price{
        font-size:14px;
    }

    .timer{
        gap:5px;
    }

    .time{
        min-width:55px;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .review p{
        min-height:auto;
    }

    .newsletter-form{
        flex-direction:column;
    }

    .newsletter-form input,
    .newsletter-form button{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }

    .footer-bottom{
        flex-direction:column;
    }
}
</style>
</head>

<body>

<header>
    <div class="container header">

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fas fa-bag-shopping"></i>
            </div>
            Nexus<span>Shop</span>
        </a>

        <nav class="nav">
            <a href="#home" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Products</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="header-right">

            <div class="search">
                <i class="fas fa-search"></i>
                <input id="searchInput" type="text" placeholder="Search products...">
            </div>

            <button class="icon-btn">
                <i class="far fa-heart"></i>
            </button>

            <button class="icon-btn" id="cartBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </button>

            <button class="icon-btn menu-btn" id="menuBtn">
                <i class="fas fa-bars"></i>
            </button>

        </div>
    </div>

    <div class="container mobile-menu" id="mobileMenu">
        <a href="#home">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Products</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>
    </div>
</header>

<main id="home">

<section class="container hero">
    <div class="hero-content">

        <div class="hero-badge">
            <i class="fas fa-sparkles"></i>
            NEW SEASON COLLECTION
        </div>

        <h1>
            Everything you need.
            <span>One beautiful place.</span>
        </h1>

        <p>
            Discover carefully selected products, exclusive deals and everyday
            essentials — designed to make shopping simple and enjoyable.
        </p>

        <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow">
                Shop Now
                <i class="fas fa-arrow-right"></i>
            </button>

            <button class="btn btn-light" id="exploreDeals">
                Explore Deals
            </button>
        </div>

    </div>
</section>


<section class="container section" id="categories">

    <div class="section-head">
        <div class="section-title">
            <h2>Shop by category</h2>
            <p>Find exactly what you're looking for.</p>
        </div>

        <a href="#products" class="view-all">
            View all
            <i class="fas fa-arrow-right"></i>
        </a>
    </div>

    <div class="categories">

        <div class="category">
            <div class="category-icon">
                <i class="fas fa-mobile-screen-button"></i>
            </div>
            <h4>Electronics</h4>
            <small>120+ items</small>
        </div>

        <div class="category">
            <div class="category-icon">
                <i class="fas fa-shirt"></i>
            </div>
            <h4>Fashion</h4>
            <small>250+ items</small>
        </div>

        <div class="category">
            <div class="category-icon">
                <i class="fas fa-couch"></i>
            </div>
            <h4>Home</h4>
            <small>180+ items</small>
        </div>

        <div class="category">
            <div class="category-icon">
                <i class="fas fa-dumbbell"></i>
            </div>
            <h4>Fitness</h4>
            <small>90+ items</small>
        </div>

        <div class="category">
            <div class="category-icon">
                <i class="fas fa-gamepad"></i>
            </div>
            <h4>Gaming</h4>
            <small>75+ items</small>
        </div>

        <div class="category">
            <div class="category-icon">
                <i class="fas fa-gem"></i>
            </div>
            <h4>Accessories</h4>
            <small>140+ items</small>
        </div>

    </div>
</section>


<section class="container section" id="products">

    <div class="section-head">
        <div class="section-title">
            <h2>Popular products</h2>
            <p>Our most loved products right now.</p>
        </div>

        <a href="#" class="view-all">
            See all
            <i class="fas fa-arrow-right"></i>
        </a>
    </div>

    <div class="filters">
        <button class="filter active" data-category="all">All</button>
        <button class="filter" data-category="electronics">Electronics</button>
        <button class="filter" data-category="fashion">Fashion</button>
        <button class="filter" data-category="home">Home</button>
        <button class="filter" data-category="fitness">Fitness</button>
        <button class="filter" data-category="gaming">Gaming</button>
    </div>

    <div class="products" id="productsGrid"></div>

</section>


<section class="container section" id="deals">

    <div class="section-head">
        <div class="section-title">
            <h2>Deal of the day</h2>
            <p>Grab it before the timer runs out.</p>
        </div>
    </div>

    <div class="deal">

        <div class="deal-image">
            <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=1000&q=85" alt="Premium headphones">
        </div>

        <div class="deal-content">

            <div class="deal-tag">
                Limited time offer
            </div>

            <h2>Premium Wireless Headphones</h2>

            <p class="deal-desc">
                Experience immersive sound with adaptive noise cancellation,
                premium comfort and all-day battery life.
            </p>

            <div class="deal-price">
                $129
                <del>$179</del>
            </div>

            <div class="timer">

                <div class="time">
                    <strong id="dealDays">01</strong>
                    <span>Days</span>
                </div>

                <div class="time">
                    <strong id="dealHours">08</strong>
                    <span>Hours</span>
                </div>

                <div class="time">
                    <strong id="dealMinutes">42</strong>
                    <span>Minutes</span>
                </div>

                <div class="time">
                    <strong id="dealSeconds">18</strong>
                    <span>Seconds</span>
                </div>

            </div>

            <button class="btn btn-primary" id="buyDeal">
                <i class="fas fa-bag-shopping"></i>
                Buy Now
            </button>

        </div>
    </div>
</section>


<section class="container section" id="reviews">

    <div class="section-head">
        <div class="section-title">
            <h2>Loved by shoppers</h2>
            <p>Real feedback from our customers.</p>
        </div>
    </div>

    <div class="reviews">

        <div class="review">
            <div class="review-stars">★★★★★</div>
            <p>
                “The entire shopping experience was extremely smooth.
                The product arrived quickly and looked even better than expected.”
            </p>
            <div class="reviewer">
                <img src="https://i.pravatar.cc/100?img=12" alt="">
                <div>
                    <strong>Sarah Johnson</strong>
                    <span>Verified customer</span>
                </div>
            </div>
        </div>

        <div class="review">
            <div class="review-stars">★★★★★</div>
            <p>
                “I loved how simple the website is. Finding products and
                checking deals takes only a few seconds.”
            </p>
            <div class="reviewer">
                <img src="https://i.pravatar.cc/100?img=32" alt="">
                <div>
                    <strong>David Miller</strong>
                    <span>Verified customer</span>
                </div>
            </div>
        </div>

        <div class="review">
            <div class="review-stars">★★★★★</div>
            <p>
                “Great products, clean packaging and very fast delivery.
                Definitely coming back for more.”
            </p>
            <div class="reviewer">
                <img src="https://i.pravatar.cc/100?img=47" alt="">
                <div>
                    <strong>Emma Wilson</strong>
                    <span>Verified customer</span>
                </div>
            </div>
        </div>

        <div class="review">
            <div class="review-stars">★★★★★</div>
            <p>
                “The deals are actually useful and the product quality
                has been excellent so far.”
            </p>
            <div class="reviewer">
                <img src="https://i.pravatar.cc/100?img=52" alt="">
                <div>
                    <strong>Michael Brown</strong>
                    <span>Verified customer</span>
                </div>
            </div>
        </div>

    </div>
</section>


<section class="container section">

    <div class="newsletter">

        <div>
            <h2>Get the latest deals.</h2>
            <p>Weekly product drops, exclusive discounts and useful updates.</p>
            <div class="newsletter-message" id="newsletterMessage"></div>
        </div>

        <form class="newsletter-form" id="newsletterForm">
            <input id="newsletterEmail" type="email" placeholder="Enter your email" required>
            <button class="btn btn-primary" type="submit">
                Subscribe
            </button>
        </form>

    </div>

</section>

</main>


<footer>

<div class="container">

    <div class="footer-grid">

        <div class="footer-brand">

            <a href="#" class="logo">
                <div class="logo-icon">
                    <i class="fas fa-bag-shopping"></i>
                </div>
                Nexus<span>Shop</span>
            </a>

            <p>
                A modern shopping experience built around simplicity,
                quality products and better customer experiences.
            </p>

            <div class="socials">
                <a href="#" class="social"><i class="fab fa-instagram"></i></a>
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-x-twitter"></i></a>
                <a href="#" class="social"><i class="fab fa-youtube"></i></a>
            </div>

        </div>

        <div>
            <h4>Shop</h4>
            <a href="#products">All Products</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Deals</a>
            <a href="#">New Arrivals</a>
        </div>

        <div>
            <h4>Company</h4>
            <a href="#">About Us</a>
            <a href="#">Contact</a>
            <a href="#">Careers</a>
            <a href="#">Privacy</a>
        </div>

        <div>
            <h4>Support</h4>
            <a href="#">Help Center</a>
            <a href="#">Shipping</a>
            <a href="#">Returns</a>
            <a href="#">Track Order</a>
        </div>

    </div>

    <div class="footer-bottom">
        <span>© <span id="year"></span> NexusShop. All rights reserved.</span>
        <span>Made for a better shopping experience.</span>
    </div>

</div>

</footer>


<script>
const products = [
    {
        id:1,
        title:"Premium Wireless Headphones",
        category:"electronics",
        price:129,
        oldPrice:179,
        rating:5,
        reviews:128,
        badge:"Sale",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:2,
        title:"Minimal Everyday Sneakers",
        category:"fashion",
        price:89,
        oldPrice:119,
        rating:4,
        reviews:94,
        badge:"Popular",
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:3,
        title:"Modern Ceramic Coffee Set",
        category:"home",
        price:42,
        oldPrice:55,
        rating:5,
        reviews:76,
        badge:"",
        image:"https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:4,
        title:"Smart Fitness Watch",
        category:"fitness",
        price:149,
        oldPrice:199,
        rating:4,
        reviews:162,
        badge:"New",
        image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:5,
        title:"Mechanical Gaming Keyboard",
        category:"gaming",
        price:99,
        oldPrice:129,
        rating:5,
        reviews:112,
        badge:"Sale",
        image:"https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:6,
        title:"Premium Leather Backpack",
        category:"fashion",
        price:74,
        oldPrice:95,
        rating:4,
        reviews:81,
        badge:"",
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:7,
        title:"Smart Table Lamp",
        category:"home",
        price:59,
        oldPrice:79,
        rating:5,
        reviews:63,
        badge:"New",
        image:"https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=85"
    },
    {
        id:8,
        title:"Wireless Gaming Controller",
        category:"gaming",
        price:69,
        oldPrice:89,
        rating:4,
        reviews:117,
        badge:"",
        image:"https://images.unsplash.com/photo-1600080972464-8e5f35f63d08?auto=format&fit=crop&w=700&q=85"
    }
];

let cartCount = 0;

const grid = document.getElementById("productsGrid");
const cartCountElement = document.getElementById("cartCount");

function renderProducts(list){

    grid.innerHTML = "";

    if(!list.length){
        grid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:50px;
                background:white;
                border:1px solid var(--border);
                border-radius:20px;
                color:var(--muted);
            ">
                <i class="fas fa-box-open" style="font-size:35px;margin-bottom:12px;"></i>
                <h3>No products found</h3>
                <p>Try another search.</p>
            </div>
        `;
        return;
    }

    list.forEach(product => {

        const card = document.createElement("article");
        card.className = "product";

        const badge = product.badge
            ? `<span class="product-badge ${product.badge === "Sale" ? "sale" : ""}">
                ${product.badge}
               </span>`
            : "";

        const stars = "★".repeat(product.rating) +
                      "☆".repeat(5-product.rating);

        card.innerHTML = `
            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.title}"
                    loading="lazy"
                >

                ${badge}

                <button class="wishlist">
                    <i class="far fa-heart"></i>
                </button>

            </div>

            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <h3>${product.title}</h3>

                <div class="rating">
                    ${stars}
                    <span>(${product.reviews})</span>
                </div>

                <div class="price-row">
                    <span class="price">$${product.price}</span>
                    <span class="old-price">$${product.oldPrice}</span>
                </div>

            </div>

            <div class="product-footer">

                <button class="add-cart" data-id="${product.id}">
                    <i class="fas fa-cart-plus"></i>
                    Add to Cart
                </button>

            </div>
        `;

        grid.appendChild(card);
    });

    bindProductButtons();
}

function bindProductButtons(){

    document.querySelectorAll(".add-cart").forEach(button => {

        button.addEventListener("click",() => {

            cartCount++;

            cartCountElement.textContent = cartCount;

            button.classList.add("added");

            button.innerHTML = `
                <i class="fas fa-check"></i>
                Added
            `;

            setTimeout(() => {

                button.classList.remove("added");

                button.innerHTML = `
                    <i class="fas fa-cart-plus"></i>
                    Add to Cart
                `;

            },1500);

        });

    });

    document.querySelectorAll(".wishlist").forEach(button => {

        button.addEventListener("click",() => {

            const icon = button.querySelector("i");

            icon.classList.toggle("far");
            icon.classList.toggle("fas");

            button.style.color =
                icon.classList.contains("fas")
                ? "var(--danger)"
                : "";

        });

    });
}


/* SEARCH */

const searchInput = document.getElementById("searchInput");

searchInput.addEventListener("input",() => {

    const query = searchInput.value.trim().toLowerCase();

    const filtered = products.filter(product =>
        product.title.toLowerCase().includes(query) ||
        product.category.toLowerCase().includes(query)
    );

    renderProducts(filtered);

});


/* FILTERS */

document.querySelectorAll(".filter").forEach(filter => {

    filter.addEventListener("click",() => {

        document.querySelectorAll(".filter")
            .forEach(item => item.classList.remove("active"));

        filter.classList.add("active");

        const category = filter.dataset.category;

        if(category === "all"){
            renderProducts(products);
        }else{
            renderProducts(
                products.filter(product =>
                    product.category === category
                )
            );
        }

    });

});


/* MOBILE MENU */

const menuBtn = document.getElementById("menuBtn");
const mobileMenu = document.getElementById("mobileMenu");

menuBtn.addEventListener("click",() => {

    const open = mobileMenu.style.display === "block";

    mobileMenu.style.display = open ? "none" : "block";

    menuBtn.innerHTML = open
        ? `<i class="fas fa-bars"></i>`
        : `<i class="fas fa-xmark"></i>`;

});

document.querySelectorAll(".mobile-menu a").forEach(link => {

    link.addEventListener("click",() => {

        mobileMenu.style.display = "none";

        menuBtn.innerHTML =
            `<i class="fas fa-bars"></i>`;

    });

});


/* CART */

document.getElementById("cartBtn").addEventListener("click",() => {

    alert(
        `Your cart currently has ${cartCount} item${cartCount === 1 ? "" : "s"}.`
    );

});


/* HERO */

document.getElementById("shopNow").addEventListener("click",() => {

    document.getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });

});

document.getElementById("exploreDeals").addEventListener("click",() => {

    document.getElementById("deals")
        .scrollIntoView({
            behavior:"smooth"
        });

});


/* DEAL */

let dealEnd = Date.now() + 24*60*60*1000;

function updateTimer(){

    const remaining = dealEnd - Date.now();

    if(remaining <= 0){
        dealEnd = Date.now() + 24*60*60*1000;
        return;
    }

    const days = Math.floor(
        remaining / (1000*60*60*24)
    );

    const hours = Math.floor(
        (remaining / (1000*60*60)) % 24
    );

    const minutes = Math.floor(
        (remaining / (1000*60)) % 60
    );

    const seconds = Math.floor(
        (remaining / 1000) % 60
    );

    document.getElementById("dealDays").textContent =
        String(days).padStart(2,"0");

    document.getElementById("dealHours").textContent =
        String(hours).padStart(2,"0");

    document.getElementById("dealMinutes").textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("dealSeconds").textContent =
        String(seconds).padStart(2,"0");
}

setInterval(updateTimer,1000);
updateTimer();


/* DEAL CART */

document.getElementById("buyDeal").addEventListener("click",function(){

    cartCount++;

    cartCountElement.textContent = cartCount;

    const original = this.innerHTML;

    this.innerHTML = `
        <i class="fas fa-check"></i>
        Added to Cart
    `;

    this.style.background = "var(--success)";

    setTimeout(() => {

        this.innerHTML = original;
        this.style.background = "";

    },1600);

});


/* NEWSLETTER */

document.getElementById("newsletterForm")
.addEventListener("submit",function(e){

    e.preventDefault();

    const email =
        document.getElementById("newsletterEmail").value.trim();

    const message =
        document.getElementById("newsletterMessage");

    if(!email.includes("@")){
        message.textContent =
            "Please enter a valid email address.";
        message.style.color = "#ff9d9d";
        message.style.display = "block";
        return;
    }

    message.textContent =
        "✓ You're subscribed! Welcome to NexusShop.";

    message.style.color = "#8df0c0";
    message.style.display = "block";

    this.reset();

    setTimeout(() => {
        message.style.display = "none";
    },3500);

});


/* YEAR */

document.getElementById("year").textContent =
    new Date().getFullYear();


/* INITIALIZE */

renderProducts(products);

</script>

</body>
</html>
