<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Next Generationsssssssssssssssssssssssssssssssss Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   CORE
========================================================= */

:root{
    --purple:#7c5cff;
    --purple2:#a855f7;
    --cyan:#22d3ee;

    --dark:#08090d;
    --dark2:#10121a;
    --dark3:#171923;

    --light:#f6f7fb;
    --white:#fff;

    --text:#15161c;
    --muted:#777b8b;

    --border:#e8e9ef;

    --shadow:0 25px 80px rgba(20,20,40,.10);

    --radius:24px;
    --ease:cubic-bezier(.2,.8,.2,1);
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
    background:var(--light);
    color:var(--text);
    overflow-x:hidden;
}

body::before{
    content:"";
    position:fixed;
    inset:0;
    pointer-events:none;
    z-index:-2;

    background:
        radial-gradient(circle at 10% 10%,rgba(124,92,255,.07),transparent 25%),
        radial-gradient(circle at 90% 40%,rgba(168,85,247,.06),transparent 25%);
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

section{
    position:relative;
}


/* =========================================================
   ANIMATION SYSTEM
========================================================= */

@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(35px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

@keyframes float{
    0%,100%{
        transform:translateY(0);
    }

    50%{
        transform:translateY(-14px);
    }
}

@keyframes pulse{
    0%,100%{
        box-shadow:0 0 0 0 rgba(124,92,255,.25);
    }

    50%{
        box-shadow:0 0 0 15px rgba(124,92,255,0);
    }
}

@keyframes gradientMove{
    0%{
        background-position:0% 50%;
    }

    50%{
        background-position:100% 50%;
    }

    100%{
        background-position:0% 50%;
    }
}

@keyframes shimmer{
    0%{
        transform:translateX(-100%);
    }

    100%{
        transform:translateX(100%);
    }
}

@keyframes rotateGlow{
    from{
        transform:rotate(0deg);
    }

    to{
        transform:rotate(360deg);
    }
}

.reveal{
    animation:fadeUp .8s var(--ease) both;
}


/* =========================================================
   HEADER
========================================================= */

header{
    position:sticky;
    top:0;
    z-index:1000;

    background:rgba(255,255,255,.78);
    backdrop-filter:blur(25px);

    border-bottom:1px solid rgba(220,222,230,.7);
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

    font-size:21px;
    font-weight:900;
    letter-spacing:-1px;
}

.logo span{
    color:var(--purple);
}

.logo-icon{
    width:41px;
    height:41px;

    display:grid;
    place-items:center;

    border-radius:13px;

    color:white;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2),
            var(--cyan)
        );

    background-size:200% 200%;

    animation:gradientMove 5s ease infinite;

    box-shadow:
        0 10px 30px rgba(124,92,255,.35);
}

.nav{
    display:flex;
    align-items:center;
    gap:4px;
}

.nav a{
    position:relative;

    padding:10px 14px;

    border-radius:12px;

    color:var(--muted);

    font-size:12px;
    font-weight:750;

    transition:.3s var(--ease);
}

.nav a::after{
    content:"";

    position:absolute;

    left:50%;
    bottom:4px;

    width:0;
    height:2px;

    border-radius:10px;

    background:linear-gradient(
        90deg,
        var(--purple),
        var(--cyan)
    );

    transform:translateX(-50%);

    transition:.3s var(--ease);
}

.nav a:hover,
.nav a.active{
    color:var(--text);
    background:#f0efff;
}

.nav a:hover::after,
.nav a.active::after{
    width:18px;
}

.header-right{
    display:flex;
    align-items:center;
    gap:7px;
}

.search{
    width:230px;
    height:42px;

    display:flex;
    align-items:center;
    gap:10px;

    padding:0 14px;

    background:#f0f1f5;

    border:1px solid transparent;
    border-radius:13px;

    transition:.3s var(--ease);
}

.search:focus-within{
    background:white;

    border-color:#d0c9ff;

    box-shadow:
        0 0 0 4px rgba(124,92,255,.08),
        0 10px 30px rgba(30,30,50,.08);
}

.search i{
    color:#8c90a0;
    font-size:12px;
}

.search input{
    width:100%;

    border:0;
    outline:0;

    background:transparent;

    font-size:12px;
}

.icon-btn{
    position:relative;

    width:42px;
    height:42px;

    display:grid;
    place-items:center;

    background:transparent;

    border-radius:13px;

    color:#626675;

    transition:.3s var(--ease);
}

.icon-btn:hover{
    color:var(--purple);
    background:#efedff;
    transform:translateY(-2px);
}

.cart-count{
    position:absolute;

    top:0;
    right:0;

    min-width:17px;
    height:17px;

    padding:0 4px;

    display:grid;
    place-items:center;

    border-radius:50px;

    background:linear-gradient(
        135deg,
        var(--purple),
        var(--purple2)
    );

    color:white;

    border:2px solid white;

    font-size:8px;
    font-weight:900;
}

.menu-btn{
    display:none;
}


/* =========================================================
   HERO — DARK SECTION
========================================================= */

.hero{
    min-height:570px;

    margin-top:20px;

    display:flex;
    align-items:center;

    overflow:hidden;

    border-radius:30px;

    background:
        linear-gradient(
            90deg,
            rgba(5,6,10,.98) 0%,
            rgba(8,9,14,.88) 48%,
            rgba(8,9,14,.25) 100%
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
        center/cover;

    box-shadow:
        0 35px 100px rgba(0,0,0,.22);
}

.hero::before{
    content:"";

    position:absolute;

    width:500px;
    height:500px;

    left:-220px;
    top:-220px;

    border-radius:50%;

    background:
        radial-gradient(
            circle,
            rgba(124,92,255,.38),
            transparent 65%
        );

    filter:blur(20px);

    animation:float 7s ease-in-out infinite;
}

.hero::after{
    content:"";

    position:absolute;

    width:300px;
    height:300px;

    right:7%;
    top:12%;

    border-radius:50%;

    border:1px solid rgba(255,255,255,.07);

    box-shadow:
        0 0 80px rgba(124,92,255,.13);

    animation:rotateGlow 20s linear infinite;
}

.hero-content{
    position:relative;
    z-index:5;

    max-width:650px;

    padding:80px 0;
}

.hero-badge{
    display:inline-flex;
    align-items:center;
    gap:8px;

    padding:8px 13px;

    border:1px solid rgba(255,255,255,.12);
    border-radius:50px;

    background:rgba(255,255,255,.07);

    color:#c9c2ff;

    font-size:10px;
    font-weight:850;

    backdrop-filter:blur(15px);

    animation:
        fadeUp .8s .1s both,
        pulse 3s infinite;
}

.hero h1{
    margin-top:20px;

    color:white;

    font-size:clamp(45px,6vw,70px);

    line-height:.99;

    letter-spacing:-4px;

    animation:fadeUp .8s .2s both;
}

.hero h1 span{
    display:block;

    background:
        linear-gradient(
            90deg,
            #a99dff,
            #d9b4ff,
            #63e7ff
        );

    background-size:200% 200%;

    animation:gradientMove 4s ease infinite;

    -webkit-background-clip:text;
    background-clip:text;

    color:transparent;
}

.hero p{
    max-width:560px;

    margin-top:22px;

    color:rgba(255,255,255,.62);

    font-size:14px;
    line-height:1.8;

    animation:fadeUp .8s .35s both;
}

.hero-actions{
    display:flex;
    gap:11px;

    margin-top:30px;

    animation:fadeUp .8s .45s both;
}

.btn{
    min-height:47px;

    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;

    padding:0 21px;

    border-radius:13px;

    font-size:12px;
    font-weight:850;

    transition:.35s var(--ease);
}

.btn-primary{
    position:relative;
    overflow:hidden;

    color:white;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2),
            var(--cyan)
        );

    background-size:200% 200%;

    animation:gradientMove 5s ease infinite;

    box-shadow:
        0 15px 35px rgba(124,92,255,.3);
}

.btn-primary::before{
    content:"";

    position:absolute;

    top:0;
    left:0;

    width:40%;
    height:100%;

    background:linear-gradient(
        90deg,
        transparent,
        rgba(255,255,255,.3),
        transparent
    );

    transform:translateX(-150%);

    transition:.6s;
}

.btn-primary:hover::before{
    transform:translateX(350%);
}

.btn-primary:hover{
    transform:translateY(-4px) scale(1.02);

    box-shadow:
        0 20px 45px rgba(124,92,255,.4);
}

.btn-light{
    color:white;

    border:1px solid rgba(255,255,255,.14);

    background:rgba(255,255,255,.07);

    backdrop-filter:blur(12px);
}

.btn-light:hover{
    background:rgba(255,255,255,.14);
    transform:translateY(-4px);
}


/* =========================================================
   LIGHT SECTIONS
========================================================= */

.section{
    padding:75px 0;
}

.section-head{
    display:flex;
    align-items:end;
    justify-content:space-between;

    margin-bottom:25px;
}

.section-title h2{
    font-size:29px;
    letter-spacing:-1.4px;
}

.section-title p{
    margin-top:5px;

    color:var(--muted);

    font-size:12px;
}

.view-all{
    display:flex;
    align-items:center;
    gap:7px;

    color:var(--purple);

    font-size:11px;
    font-weight:850;

    transition:.3s;
}

.view-all:hover{
    transform:translateX(5px);
}


/* =========================================================
   CATEGORY CARDS
========================================================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    position:relative;

    padding:24px 10px;

    text-align:center;

    background:white;

    border:1px solid var(--border);
    border-radius:20px;

    overflow:hidden;

    cursor:pointer;

    transition:.4s var(--ease);
}

.category::before{
    content:"";

    position:absolute;

    inset:0;

    background:
        radial-gradient(
            circle at 50% 0%,
            rgba(124,92,255,.13),
            transparent 55%
        );

    opacity:0;

    transition:.4s;
}

.category:hover{
    transform:
        translateY(-8px)
        scale(1.02);

    border-color:#d6d0ff;

    box-shadow:
        0 20px 55px rgba(40,40,80,.1);
}

.category:hover::before{
    opacity:1;
}

.category-icon{
    position:relative;
    z-index:1;

    width:54px;
    height:54px;

    display:grid;
    place-items:center;

    margin:auto auto 12px;

    border-radius:17px;

    background:
        linear-gradient(
            135deg,
            #f0eeff,
            #f8edff
        );

    color:var(--purple);

    font-size:20px;

    transition:.4s var(--ease);
}

.category:hover .category-icon{
    transform:
        rotate(-8deg)
        scale(1.1);

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2)
        );

    color:white;

    box-shadow:
        0 10px 25px rgba(124,92,255,.25);
}

.category h4{
    position:relative;
    z-index:1;

    font-size:12px;
}

.category small{
    position:relative;
    z-index:1;

    display:block;

    margin-top:3px;

    color:var(--muted);

    font-size:9px;
}


/* =========================================================
   PRODUCTS
========================================================= */

.filters{
    display:flex;
    gap:8px;

    overflow-x:auto;

    padding-bottom:7px;
    margin-bottom:20px;
}

.filters::-webkit-scrollbar{
    height:0;
}

.filter{
    flex-shrink:0;

    padding:9px 15px;

    border:1px solid var(--border);
    border-radius:50px;

    background:white;

    color:var(--muted);

    font-size:10px;
    font-weight:800;

    transition:.3s var(--ease);
}

.filter:hover,
.filter.active{
    color:white;

    border-color:transparent;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2)
        );

    box-shadow:
        0 8px 22px rgba(124,92,255,.2);

    transform:translateY(-2px);
}

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:17px;
}

.product{
    position:relative;

    overflow:hidden;

    display:flex;
    flex-direction:column;

    background:white;

    border:1px solid var(--border);
    border-radius:21px;

    transition:.45s var(--ease);
}

.product::after{
    content:"";

    position:absolute;

    inset:0;

    border-radius:21px;

    border:1px solid transparent;

    pointer-events:none;

    transition:.4s;
}

.product:hover{
    transform:
        translateY(-9px)
        scale(1.015);

    box-shadow:
        0 30px 70px rgba(35,35,65,.13);
}

.product:hover::after{
    border-color:rgba(124,92,255,.2);
}

.product-image{
    position:relative;

    aspect-ratio:1;

    overflow:hidden;

    background:#eeeef2;
}

.product-image::after{
    content:"";

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            120deg,
            transparent 35%,
            rgba(255,255,255,.25),
            transparent 65%
        );

    transform:translateX(-120%);

    transition:.8s;
}

.product:hover .product-image::after{
    transform:translateX(120%);
}

.product-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.7s var(--ease);
}

.product:hover .product-image img{
    transform:scale(1.09);
}

.product-badge{
    position:absolute;

    top:11px;
    left:11px;

    z-index:2;

    padding:6px 9px;

    border-radius:8px;

    color:white;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2)
        );

    font-size:8px;
    font-weight:900;

    text-transform:uppercase;
}

.product-badge.sale{
    color:#65440b;
    background:#ffd166;
}

.wishlist{
    position:absolute;

    top:10px;
    right:10px;

    z-index:3;

    width:35px;
    height:35px;

    display:grid;
    place-items:center;

    border-radius:11px;

    background:rgba(255,255,255,.9);

    color:#676b7b;

    backdrop-filter:blur(10px);

    transition:.3s var(--ease);
}

.wishlist:hover{
    color:#ef476f;
    transform:scale(1.12) rotate(-8deg);
}

.product-info{
    padding:15px 15px 8px;
}

.product-category{
    color:#9b9eaa;

    font-size:8px;

    letter-spacing:1px;

    text-transform:uppercase;

    font-weight:850;
}

.product h3{
    margin-top:5px;

    font-size:13px;
    line-height:1.45;
}

.rating{
    margin-top:7px;

    color:#f1a63a;

    font-size:10px;
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
    color:#a5a7b1;

    font-size:10px;

    text-decoration:line-through;
}

.product-footer{
    padding:7px 15px 15px;
}

.add-cart{
    width:100%;
    height:40px;

    display:flex;
    align-items:center;
    justify-content:center;
    gap:8px;

    border-radius:11px;

    background:#161821;

    color:white;

    font-size:10px;
    font-weight:850;

    transition:.35s var(--ease);
}

.add-cart:hover{
    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2)
        );

    transform:translateY(-2px);

    box-shadow:
        0 10px 25px rgba(124,92,255,.22);
}

.add-cart.added{
    background:#18a875;
}


/* =========================================================
   DARK DEAL SECTION
========================================================= */

.dark-section{
    padding:85px 0;

    background:
        radial-gradient(
            circle at 15% 50%,
            rgba(124,92,255,.12),
            transparent 30%
        ),
        radial-gradient(
            circle at 85% 20%,
            rgba(34,211,238,.08),
            transparent 30%
        ),
        var(--dark);

    color:white;
}

.dark-section .section-title h2{
    color:white;
}

.dark-section .section-title p{
    color:#777c8e;
}

.deal{
    position:relative;

    overflow:hidden;

    display:grid;
    grid-template-columns:1fr 1fr;

    border:1px solid rgba(255,255,255,.08);

    border-radius:27px;

    background:
        linear-gradient(
            135deg,
            #11131b,
            #090a0e
        );

    box-shadow:
        0 30px 100px rgba(0,0,0,.35);
}

.deal::before{
    content:"";

    position:absolute;

    width:350px;
    height:350px;

    top:-180px;
    right:-100px;

    border-radius:50%;

    background:
        radial-gradient(
            circle,
            rgba(124,92,255,.3),
            transparent 68%
        );

    filter:blur(10px);
}

.deal-image{
    min-height:390px;

    overflow:hidden;
}

.deal-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.86;

    transition:.8s var(--ease);
}

.deal:hover .deal-image img{
    transform:scale(1.06);
}

.deal-content{
    position:relative;
    z-index:2;

    display:flex;
    flex-direction:column;
    justify-content:center;

    padding:55px;
}

.deal-tag{
    align-self:flex-start;

    padding:7px 11px;

    border-radius:8px;

    background:rgba(255,209,102,.12);

    border:1px solid rgba(255,209,102,.18);

    color:#ffd166;

    font-size:8px;
    font-weight:900;

    text-transform:uppercase;
}

.deal h2{
    margin-top:15px;

    font-size:33px;
    line-height:1.12;

    letter-spacing:-1.4px;
}

.deal-desc{
    margin-top:11px;

    max-width:450px;

    color:#85899a;

    font-size:12px;

    line-height:1.8;
}

.deal-price{
    margin-top:18px;

    font-size:32px;
    font-weight:900;
}

.deal-price del{
    margin-left:7px;

    color:#6f7380;

    font-size:14px;
    font-weight:500;
}

.timer{
    display:flex;
    gap:8px;

    margin:20px 0;
}

.time{
    min-width:61px;

    padding:10px;

    text-align:center;

    border:1px solid rgba(255,255,255,.08);

    border-radius:11px;

    background:rgba(255,255,255,.035);

    transition:.3s;
}

.time:hover{
    background:rgba(124,92,255,.12);

    border-color:rgba(124,92,255,.3);

    transform:translateY(-3px);
}

.time strong{
    display:block;

    font-size:19px;
}

.time span{
    color:#717583;

    font-size:7px;

    text-transform:uppercase;
}


/* =========================================================
   REVIEWS
========================================================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
}

.review{
    padding:22px;

    background:white;

    border:1px solid var(--border);
    border-radius:19px;

    transition:.4s var(--ease);
}

.review:hover{
    transform:translateY(-7px);

    box-shadow:
        0 25px 60px rgba(35,35,60,.1);
}

.review-stars{
    color:#f2a93b;

    font-size:11px;

    margin-bottom:12px;
}

.review p{
    min-height:80px;

    color:#555a6a;

    font-size:11px;

    line-height:1.75;
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
    font-size:10px;
}

.reviewer span{
    color:var(--muted);
    font-size:8px;
}


/* =========================================================
   NEWSLETTER DARK
========================================================= */

.newsletter{
    position:relative;

    overflow:hidden;

    display:flex;
    align-items:center;
    justify-content:space-between;

    gap:30px;

    padding:48px;

    border-radius:27px;

    background:
        radial-gradient(
            circle at 80% 0%,
            rgba(124,92,255,.35),
            transparent 35%
        ),
        radial-gradient(
            circle at 20% 100%,
            rgba(34,211,238,.12),
            transparent 30%
        ),
        #11131a;

    border:1px solid rgba(124,92,255,.13);

    color:white;

    box-shadow:
        0 25px 80px rgba(10,10,20,.25);
}

.newsletter::after{
    content:"";

    position:absolute;

    width:160px;
    height:160px;

    right:40%;
    top:-100px;

    border-radius:50%;

    border:1px solid rgba(255,255,255,.06);

    animation:rotateGlow 15s linear infinite;
}

.newsletter h2{
    font-size:26px;

    letter-spacing:-1px;
}

.newsletter p{
    margin-top:5px;

    color:#858998;

    font-size:11px;
}

.newsletter-form{
    position:relative;
    z-index:2;

    display:flex;

    width:450px;
    max-width:100%;

    gap:8px;
}

.newsletter-form input{
    flex:1;

    min-width:0;

    height:45px;

    padding:0 14px;

    outline:0;

    border:1px solid rgba(255,255,255,.1);

    border-radius:11px;

    background:rgba(255,255,255,.06);

    color:white;

    font-size:11px;

    transition:.3s;
}

.newsletter-form input:focus{
    border-color:rgba(124,92,255,.5);

    box-shadow:
        0 0 0 4px rgba(124,92,255,.08);
}

.newsletter-form input::placeholder{
    color:#676b79;
}

.newsletter-message{
    display:none;

    margin-top:8px;

    font-size:10px;
}


/* =========================================================
   FOOTER DARK
========================================================= */

footer{
    padding:60px 0 25px;

    background:#07080b;

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

    color:#6f7380;

    font-size:10px;

    line-height:1.8;
}

.footer h4{
    margin-bottom:14px;

    font-size:11px;
}

.footer a{
    display:block;

    width:max-content;

    margin-bottom:9px;

    color:#6f7380;

    font-size:10px;

    transition:.3s;
}

.footer a:hover{
    color:white;

    transform:translateX(4px);
}

.socials{
    display:flex;

    gap:7px;

    margin-top:18px;
}

.social{
    width:34px;
    height:34px;

    display:grid;
    place-items:center;

    border-radius:10px;

    background:#151720;

    color:#858997;
}

.social:hover{
    color:white;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--purple2)
        );

    transform:translateY(-3px) !important;
}

.footer-bottom{
    display:flex;
    justify-content:space-between;

    gap:15px;

    margin-top:45px;
    padding-top:20px;

    border-top:1px solid #1d2028;

    color:#555965;

    font-size:9px;
}


/* =========================================================
   MOBILE
========================================================= */

.mobile-menu{
    display:none;

    padding:10px 0 18px;
}

.mobile-menu a{
    display:block;

    padding:12px;

    border-radius:10px;

    color:var(--muted);

    font-size:12px;
    font-weight:700;
}

.mobile-menu a:hover{
    color:var(--purple);

    background:#efedff;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px){

    .nav{
        display:none;
    }

    .menu-btn{
        display:grid;
    }

    .search{
        width:205px;
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

    .hero{
        min-height:570px;

        margin-top:11px;

        border-radius:21px;
    }

    .hero-content{
        padding:40px 22px;
    }

    .hero h1{
        font-size:44px;
        letter-spacing:-2.5px;
    }

    .hero p{
        font-size:13px;
    }

    .hero-actions{
        flex-direction:column;
    }

    .hero-actions .btn{
        width:100%;
    }

    .section{
        padding:55px 0;
    }

    .section-head{
        align-items:flex-start;
        flex-direction:column;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-info{
        padding:12px 11px 6px;
    }

    .product-footer{
        padding:6px 11px 11px;
    }

    .product h3{
        font-size:11px;
    }

    .price{
        font-size:14px;
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-image{
        min-height:270px;
    }

    .deal-content{
        padding:32px 23px;
    }

    .deal h2{
        font-size:27px;
    }

    .dark-section{
        padding:65px 0;
    }

    .newsletter{
        flex-direction:column;
        align-items:flex-start;

        padding:32px 23px;
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

    .categories{
        gap:9px;
    }

    .category{
        padding:18px 7px;
    }

    .category-icon{
        width:45px;
        height:45px;
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


<!-- =====================================================
     HEADER
===================================================== -->

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

<input
id="searchInput"
type="text"
placeholder="Search products..."
>

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



<!-- =====================================================
     HERO
===================================================== -->

<main id="home">

<section class="container hero">

<div class="hero-content">

<div class="hero-badge">

<i class="fas fa-sparkles"></i>

NEXT GENERATION SHOPPING

</div>


<h1>

Shop smarter.

<span>Live better.</span>

</h1>


<p>

Discover premium products, exclusive offers and everyday
essentials — all inside a beautifully simple shopping experience.

</p>


<div class="hero-actions">

<button class="btn btn-primary" id="shopNow">

Shop Collection

<i class="fas fa-arrow-right"></i>

</button>


<button class="btn btn-light" id="exploreDeals">

<i class="fas fa-bolt"></i>

Today's Deals

</button>

</div>

</div>

</section>



<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="container section" id="categories">

<div class="section-head">

<div class="section-title">

<h2>Explore categories</h2>

<p>Everything organized exactly how you need it.</p>

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

<small>120+ products</small>

</div>


<div class="category">

<div class="category-icon">

<i class="fas fa-shirt"></i>

</div>

<h4>Fashion</h4>

<small>250+ products</small>

</div>


<div class="category">

<div class="category-icon">

<i class="fas fa-couch"></i>

</div>

<h4>Home</h4>

<small>180+ products</small>

</div>


<div class="category">

<div class="category-icon">

<i class="fas fa-dumbbell"></i>

</div>

<h4>Fitness</h4>

<small>90+ products</small>

</div>


<div class="category">

<div class="category-icon">

<i class="fas fa-gamepad"></i>

</div>

<h4>Gaming</h4>

<small>75+ products</small>

</div>


<div class="category">

<div class="category-icon">

<i class="fas fa-gem"></i>

</div>

<h4>Accessories</h4>

<small>140+ products</small>

</div>


</div>

</section>



<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="container section" id="products">

<div class="section-head">

<div class="section-title">

<h2>Trending right now</h2>

<p>Products shoppers are loving this week.</p>

</div>

<a href="#" class="view-all">

Explore all

<i class="fas fa-arrow-right"></i>

</a>

</div>


<div class="filters">

<button class="filter active" data-category="all">
All
</button>

<button class="filter" data-category="electronics">
Electronics
</button>

<button class="filter" data-category="fashion">
Fashion
</button>

<button class="filter" data-category="home">
Home
</button>

<button class="filter" data-category="fitness">
Fitness
</button>

<button class="filter" data-category="gaming">
Gaming
</button>

</div>


<div class="products" id="productsGrid"></div>

</section>



<!-- =====================================================
     DARK DEAL SECTION
===================================================== -->

<section class="dark-section" id="deals">

<div class="container">

<div class="section-head">

<div class="section-title">

<h2>Deal of the day</h2>

<p>Premium products. Serious discounts.</p>

</div>

</div>


<div class="deal">

<div class="deal-image">

<img
src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=1000&q=90"
alt="Premium wireless headphones"
>

</div>


<div class="deal-content">

<div class="deal-tag">

Limited time offer

</div>


<h2>

Premium Wireless Headphones

</h2>


<p class="deal-desc">

Immersive sound, adaptive noise cancellation,
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

Grab the deal

</button>

</div>

</div>

</div>

</section>



<!-- =====================================================
     REVIEWS
===================================================== -->

<section class="container section" id="reviews">

<div class="section-head">

<div class="section-title">

<h2>What shoppers say</h2>

<p>Thousands of customers. One simple experience.</p>

</div>

</div>


<div class="reviews">


<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>

“The entire shopping experience was extremely smooth.
The product arrived quickly and looked even better than expected.”

</p>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=12"
alt=""
>

<div>

<strong>Sarah Johnson</strong>

<span>Verified customer</span>

</div>

</div>

</div>


<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>

“I loved how simple the website is.
Finding products and checking deals takes only a few seconds.”

</p>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=32"
alt=""
>

<div>

<strong>David Miller</strong>

<span>Verified customer</span>

</div>

</div>

</div>


<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>

“Great products, clean packaging and very fast delivery.
Definitely coming back for more.”

</p>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=47"
alt=""
>

<div>

<strong>Emma Wilson</strong>

<span>Verified customer</span>

</div>

</div>

</div>


<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>

“The deals are actually useful and the product quality
has been excellent so far.”

</p>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=52"
alt=""
>

<div>

<strong>Michael Brown</strong>

<span>Verified customer</span>

</div>

</div>

</div>


</div>

</section>



<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="container section">

<div class="newsletter">

<div>

<h2>Stay ahead of the deals.</h2>

<p>
New arrivals, exclusive discounts and weekly product drops.
</p>

<div
class="newsletter-message"
id="newsletterMessage">
</div>

</div>


<form
class="newsletter-form"
id="newsletterForm"
>

<input
id="newsletterEmail"
type="email"
placeholder="Enter your email"
required
>

<button class="btn btn-primary">

Subscribe

</button>

</form>

</div>

</section>

</main>



<!-- =====================================================
     FOOTER
===================================================== -->

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

A modern shopping experience built around
simplicity, quality products and better customer experiences.

</p>


<div class="socials">

<a href="#" class="social">

<i class="fab fa-instagram"></i>

</a>

<a href="#" class="social">

<i class="fab fa-facebook-f"></i>

</a>

<a href="#" class="social">

<i class="fab fa-x-twitter"></i>

</a>

<a href="#" class="social">

<i class="fab fa-youtube"></i>

</a>

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

<span>

© <span id="year"></span> NexusShop.
All rights reserved.

</span>

<span>

Designed for a better shopping experience.

</span>

</div>

</div>

</footer>



<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

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


const grid =
document.getElementById("productsGrid");

const cartCountElement =
document.getElementById("cartCount");


/* =========================================================
   PRODUCT RENDER
========================================================= */

function renderProducts(list){

grid.innerHTML = "";

if(!list.length){

grid.innerHTML = `

<div style="
grid-column:1/-1;
text-align:center;
padding:60px;
background:white;
border:1px solid var(--border);
border-radius:22px;
color:var(--muted);
">

<i
class="fas fa-box-open"
style="
font-size:38px;
margin-bottom:14px;
color:var(--purple);
">
</i>

<h3>No products found</h3>

<p style="margin-top:5px;">
Try another search.
</p>

</div>

`;

return;

}


list.forEach((product,index)=>{

const card =
document.createElement("article");

card.className = "product";

card.style.animation =
`fadeUp .65s ${index * .07}s both`;


const badge =
product.badge

?

`<span class="product-badge ${
product.badge === "Sale"
? "sale"
: ""
}">
${product.badge}
</span>`

: "";


const stars =
"★".repeat(product.rating) +
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


<h3>

${product.title}

</h3>


<div class="rating">

${stars}

<span>
(${product.reviews})
</span>

</div>


<div class="price-row">

<span class="price">

$${product.price}

</span>

<span class="old-price">

$${product.oldPrice}

</span>

</div>

</div>


<div class="product-footer">

<button
class="add-cart"
data-id="${product.id}"
>

<i class="fas fa-cart-plus"></i>

Add to Cart

</button>

</div>

`;


grid.appendChild(card);

});


bindProductButtons();

}


/* =========================================================
   PRODUCT BUTTONS
========================================================= */

function bindProductButtons(){

document.querySelectorAll(".add-cart")
.forEach(button=>{

button.addEventListener("click",()=>{

cartCount++;

cartCountElement.textContent =
cartCount;


button.classList.add("added");

button.innerHTML = `

<i class="fas fa-check"></i>

Added

`;


setTimeout(()=>{

button.classList.remove("added");

button.innerHTML = `

<i class="fas fa-cart-plus"></i>

Add to Cart

`;

},1500);

});

});


document.querySelectorAll(".wishlist")
.forEach(button=>{

button.addEventListener("click",()=>{

const icon =
button.querySelector("i");


icon.classList.toggle("far");

icon.classList.toggle("fas");


if(icon.classList.contains("fas")){

button.style.color =
"#ef476f";

button.style.transform =
"scale(1.12)";

}else{

button.style.color = "";

button.style.transform = "";

}

});

});

}


/* =========================================================
   SEARCH
========================================================= */

const searchInput =
document.getElementById("searchInput");


searchInput.addEventListener(
"input",
()=>{

const query =
searchInput.value
.trim()
.toLowerCase();


const filtered =
products.filter(product=>

product.title
.toLowerCase()
.includes(query)

||

product.category
.toLowerCase()
.includes(query)

);


renderProducts(filtered);

});


/* =========================================================
   FILTER
========================================================= */

document.querySelectorAll(".filter")
.forEach(filter=>{

filter.addEventListener("click",()=>{

document.querySelectorAll(".filter")
.forEach(item=>
item.classList.remove("active")
);


filter.classList.add("active");


const category =
filter.dataset.category;


if(category === "all"){

renderProducts(products);

}else{

renderProducts(
products.filter(
product =>
product.category === category
)
);

}

});

});


/* =========================================================
   MOBILE MENU
========================================================= */

const menuBtn =
document.getElementById("menuBtn");

const mobileMenu =
document.getElementById("mobileMenu");


menuBtn.addEventListener(
"click",
()=>{

const open =
mobileMenu.style.display === "block";


mobileMenu.style.display =
open ? "none" : "block";


menuBtn.innerHTML =
open

? `<i class="fas fa-bars"></i>`

: `<i class="fas fa-xmark"></i>`;

});


document.querySelectorAll(
".mobile-menu a"
)
.forEach(link=>{

link.addEventListener(
"click",
()=>{

mobileMenu.style.display =
"none";

menuBtn.innerHTML =
`<i class="fas fa-bars"></i>`;

});

});


/* =========================================================
   CART
========================================================= */

document.getElementById("cartBtn")
.addEventListener("click",()=>{

alert(
`Your cart has ${cartCount} item${
cartCount === 1 ? "" : "s"
}.`
);

});


/* =========================================================
   HERO ACTIONS
========================================================= */

document.getElementById("shopNow")
.addEventListener("click",()=>{

document.getElementById("products")
.scrollIntoView({
behavior:"smooth"
});

});


document.getElementById("exploreDeals")
.addEventListener("click",()=>{

document.getElementById("deals")
.scrollIntoView({
behavior:"smooth"
});

});


/* =========================================================
   DEAL TIMER
========================================================= */

let dealEnd =
Date.now() + 24*60*60*1000;


function updateTimer(){

const remaining =
dealEnd - Date.now();


if(remaining <= 0){

dealEnd =
Date.now() +
24*60*60*1000;

return;

}


const days =
Math.floor(
remaining /
(1000*60*60*24)
);


const hours =
Math.floor(
(remaining /
(1000*60*60)) % 24
);


const minutes =
Math.floor(
(remaining /
(1000*60)) % 60
);


const seconds =
Math.floor(
(remaining / 1000) % 60
);


document.getElementById(
"dealDays"
).textContent =
String(days).padStart(2,"0");


document.getElementById(
"dealHours"
).textContent =
String(hours).padStart(2,"0");


document.getElementById(
"dealMinutes"
).textContent =
String(minutes).padStart(2,"0");


document.getElementById(
"dealSeconds"
).textContent =
String(seconds).padStart(2,"0");

}


setInterval(updateTimer,1000);

updateTimer();


/* =========================================================
   DEAL CART
========================================================= */

document.getElementById("buyDeal")
.addEventListener("click",function(){

cartCount++;

cartCountElement.textContent =
cartCount;


const original =
this.innerHTML;


this.innerHTML = `

<i class="fas fa-check"></i>

Added to Cart

`;


this.style.background =
"#18a875";


setTimeout(()=>{

this.innerHTML = original;

this.style.background = "";

},1600);

});


/* =========================================================
   NEWSLETTER
========================================================= */

document.getElementById(
"newsletterForm"
)
.addEventListener(
"submit",
function(e){

e.preventDefault();


const email =
document.getElementById(
"newsletterEmail"
).value.trim();


const message =
document.getElementById(
"newsletterMessage"
);


if(!email.includes("@")){

message.textContent =
"Please enter a valid email.";

message.style.color =
"#ff8585";

message.style.display =
"block";

return;

}


message.textContent =
"✓ You're subscribed! Welcome to NexusShop.";

message.style.color =
"#76e8b0";

message.style.display =
"block";


this.reset();


setTimeout(()=>{

message.style.display =
"none";

},3500);

});


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year")
.textContent =
new Date().getFullYear();


/* =========================================================
   INITIAL LOAD
========================================================= */

renderProducts(products);


/* =========================================================
   SCROLL REVEAL
========================================================= */

const observer =
new IntersectionObserver(
(entries)=>{

entries.forEach(entry=>{

if(entry.isIntersecting){

entry.target.classList.add(
"reveal"
);

observer.unobserve(
entry.target
);

}

});

},
{
threshold:.12
}
);


document
.querySelectorAll(
".section-title,.category,.review,.newsletter"
)
.forEach(element=>{

observer.observe(element);

});


/* =========================================================
   ACTIVE NAV ON SCROLL
========================================================= */

const sections =
document.querySelectorAll(
"main section[id]"
);

const navLinks =
document.querySelectorAll(
".nav a"
);


window.addEventListener(
"scroll",
()=>{

let current = "";

sections.forEach(section=>{

const top =
section.offsetTop - 150;

if(window.scrollY >= top){

current =
section.getAttribute("id");

}

});


navLinks.forEach(link=>{

link.classList.remove("active");

if(
link.getAttribute("href") ===
"#" + current
){

link.classList.add("active");

}

});

});

</script>

</body>
</html>
