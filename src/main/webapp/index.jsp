<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Dark Animated Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --primary:#8b7cff;
    --primary-dark:#7060ee;
    --secondary:#c06cff;
    --cyan:#43d9ff;

    --bg:#090a10;
    --surface:#10121a;
    --surface-2:#151823;
    --surface-3:#1b1e2b;

    --text:#f7f7fb;
    --muted:#8e93a7;
    --border:rgba(255,255,255,.08);

    --success:#22c98b;
    --danger:#ff557b;

    --shadow:0 20px 70px rgba(0,0,0,.35);
    --shadow-hover:0 30px 90px rgba(0,0,0,.55);

    --radius:22px;
    --ease:cubic-bezier(.22,1,.36,1);
    --transition:.4s var(--ease);
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
    background:
        radial-gradient(circle at 10% 10%,rgba(139,124,255,.07),transparent 30%),
        radial-gradient(circle at 90% 20%,rgba(67,217,255,.05),transparent 25%),
        var(--bg);
    color:var(--text);
    line-height:1.5;
    overflow-x:hidden;
}

body::before{
    content:"";
    position:fixed;
    inset:0;
    pointer-events:none;
    z-index:-1;
    background:
        linear-gradient(rgba(255,255,255,.015) 1px,transparent 1px),
        linear-gradient(90deg,rgba(255,255,255,.015) 1px,transparent 1px);
    background-size:55px 55px;
    mask-image:linear-gradient(to bottom,black,transparent);
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
    background:rgba(9,10,16,.78);
    backdrop-filter:blur(25px);
    border-bottom:1px solid var(--border);
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
    background:linear-gradient(135deg,var(--primary),var(--secondary),var(--cyan));
    background-size:200% 200%;
    box-shadow:0 8px 30px rgba(139,124,255,.35);
    animation:gradientMove 5s ease infinite,logoFloat 3s ease-in-out infinite;
}

.logo span{
    background:linear-gradient(90deg,var(--primary),var(--secondary));
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
}

.nav{
    display:flex;
    align-items:center;
    gap:5px;
}

.nav a{
    position:relative;
    padding:10px 14px;
    border-radius:12px;
    font-size:13px;
    font-weight:700;
    color:var(--muted);
    transition:var(--transition);
}

.nav a::after{
    content:"";
    position:absolute;
    left:14px;
    right:14px;
    bottom:4px;
    height:2px;
    border-radius:10px;
    background:linear-gradient(90deg,var(--primary),var(--cyan));
    transform:scaleX(0);
    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    color:white;
    background:rgba(139,124,255,.09);
}

.nav a:hover::after,
.nav a.active::after{
    transform:scaleX(1);
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
    background:rgba(255,255,255,.045);
    border:1px solid var(--border);
    border-radius:13px;
    transition:var(--transition);
}

.search:focus-within{
    background:rgba(139,124,255,.07);
    border-color:rgba(139,124,255,.5);
    box-shadow:0 0 0 4px rgba(139,124,255,.08);
    transform:translateY(-1px);
}

.search i{
    color:#777d91;
    font-size:13px;
}

.search input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    color:white;
    font-size:13px;
}

.search input::placeholder{
    color:#666b7d;
}

.icon-btn{
    position:relative;
    width:43px;
    height:43px;
    display:grid;
    place-items:center;
    border-radius:13px;
    background:transparent;
    color:#969bad;
    transition:var(--transition);
}

.icon-btn:hover{
    background:rgba(139,124,255,.12);
    color:var(--primary);
    transform:translateY(-3px);
}

.cart-count{
    position:absolute;
    top:1px;
    right:0;
    min-width:17px;
    height:17px;
    padding:0 4px;
    display:grid;
    place-items:center;
    border-radius:50px;
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    color:white;
    border:2px solid var(--bg);
    font-size:9px;
    font-weight:800;
}

.menu-btn{
    display:none;
}

/* ================= HERO ================= */

.hero{
    position:relative;
    min-height:570px;
    margin-top:20px;
    border-radius:30px;
    overflow:hidden;
    display:flex;
    align-items:center;

    background:
        linear-gradient(
            90deg,
            rgba(7,8,14,.98),
            rgba(7,8,14,.82),
            rgba(7,8,14,.30)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
        center/cover;

    box-shadow:var(--shadow);
}

.hero::before{
    content:"";
    position:absolute;
    width:500px;
    height:500px;
    left:-200px;
    top:-200px;
    border-radius:50%;
    background:radial-gradient(circle,rgba(139,124,255,.35),transparent 65%);
    filter:blur(25px);
    animation:float 7s ease-in-out infinite;
}

.hero::after{
    content:"";
    position:absolute;
    width:350px;
    height:350px;
    right:5%;
    top:8%;
    border:1px solid rgba(255,255,255,.07);
    border-radius:50%;
    box-shadow:0 0 100px rgba(139,124,255,.12);
    animation:rotateGlow 18s linear infinite;
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:650px;
    padding:75px 0;
}

.hero-badge{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:9px 14px;
    border:1px solid rgba(255,255,255,.13);
    border-radius:50px;
    background:rgba(255,255,255,.06);
    color:#d8d2ff;
    font-size:10px;
    font-weight:800;
    backdrop-filter:blur(15px);
    animation:fadeUp .8s .1s both,pulse 3s infinite;
}

.hero h1{
    margin-top:20px;
    color:white;
    font-size:clamp(44px,6vw,70px);
    line-height:1;
    letter-spacing:-4px;
    animation:fadeUp .8s .2s both;
}

.hero h1 span{
    display:block;
    background:
        linear-gradient(
            90deg,
            #9e92ff,
            #d89cff,
            #52dcff,
            #9e92ff
        );
    background-size:300% 100%;
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
    animation:gradientMove 5s ease infinite;
}

.hero p{
    max-width:550px;
    margin-top:22px;
    color:rgba(255,255,255,.63);
    font-size:15px;
    line-height:1.8;
    animation:fadeUp .8s .35s both;
}

.hero-actions{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
    margin-top:30px;
    animation:fadeUp .8s .45s both;
}

/* ================= BUTTONS ================= */

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
    position:relative;
    overflow:hidden;
    color:white;
    background:
        linear-gradient(
            135deg,
            var(--primary),
            var(--secondary),
            var(--cyan)
        );
    background-size:200% 200%;
    animation:gradientMove 5s ease infinite;
    box-shadow:0 15px 35px rgba(139,124,255,.25);
}

.btn-primary::before{
    content:"";
    position:absolute;
    top:0;
    left:-100%;
    width:50%;
    height:100%;
    background:linear-gradient(
        90deg,
        transparent,
        rgba(255,255,255,.35),
        transparent
    );
    transform:skewX(-20deg);
    transition:.7s;
}

.btn-primary:hover::before{
    left:150%;
}

.btn-primary:hover{
    transform:translateY(-4px) scale(1.02);
    box-shadow:0 20px 50px rgba(139,124,255,.4);
}

.btn-light{
    color:white;
    border:1px solid rgba(255,255,255,.13);
    background:rgba(255,255,255,.06);
    backdrop-filter:blur(12px);
}

.btn-light:hover{
    background:rgba(255,255,255,.12);
    transform:translateY(-4px);
}

/* ================= SECTIONS ================= */

.section{
    padding:80px 0;
}

.section-head{
    display:flex;
    align-items:end;
    justify-content:space-between;
    gap:20px;
    margin-bottom:27px;
}

.section-title h2{
    font-size:29px;
    letter-spacing:-1.3px;
}

.section-title p{
    color:var(--muted);
    font-size:12px;
    margin-top:5px;
}

.view-all{
    display:flex;
    align-items:center;
    gap:7px;
    color:var(--primary);
    font-size:12px;
    font-weight:800;
    transition:var(--transition);
}

.view-all:hover{
    gap:12px;
    color:#b1a9ff;
}

/* ================= CATEGORIES ================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    position:relative;
    padding:24px 10px;
    text-align:center;
    border:1px solid var(--border);
    border-radius:20px;
    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.055),
            rgba(255,255,255,.018)
        );
    overflow:hidden;
    cursor:pointer;
    transition:var(--transition);
}

.category::before{
    content:"";
    position:absolute;
    inset:-100%;
    background:radial-gradient(circle,rgba(139,124,255,.16),transparent 55%);
    opacity:0;
    transition:.5s;
}

.category:hover{
    transform:translateY(-9px) scale(1.02);
    border-color:rgba(139,124,255,.35);
    box-shadow:var(--shadow-hover);
}

.category:hover::before{
    opacity:1;
    animation:spinSlow 4s linear infinite;
}

.category-icon{
    position:relative;
    z-index:1;
    width:54px;
    height:54px;
    margin:auto auto 12px;
    display:grid;
    place-items:center;
    border-radius:17px;
    background:linear-gradient(
        135deg,
        rgba(139,124,255,.13),
        rgba(192,108,255,.09)
    );
    color:var(--primary);
    font-size:20px;
    transition:var(--transition);
}

.category:hover .category-icon{
    transform:rotate(-8deg) scale(1.12);
    color:white;
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    box-shadow:0 12px 30px rgba(139,124,255,.3);
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

/* ================= FILTERS ================= */

.filters{
    display:flex;
    gap:8px;
    overflow-x:auto;
    padding-bottom:6px;
    margin-bottom:20px;
    scrollbar-width:none;
}

.filters::-webkit-scrollbar{
    display:none;
}

.filter{
    flex-shrink:0;
    padding:9px 15px;
    border:1px solid var(--border);
    border-radius:50px;
    background:rgba(255,255,255,.035);
    color:var(--muted);
    font-size:11px;
    font-weight:750;
    transition:var(--transition);
}

.filter:hover,
.filter.active{
    background:rgba(139,124,255,.13);
    color:#bdb6ff;
    border-color:rgba(139,124,255,.35);
    transform:translateY(-2px);
}

/* ================= PRODUCTS ================= */

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
    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.055),
            rgba(255,255,255,.018)
        );
    border:1px solid var(--border);
    border-radius:20px;
    transition:var(--transition);
    animation:cardIn .7s var(--ease) both;
}

.product:hover{
    transform:translateY(-9px);
    border-color:rgba(139,124,255,.35);
    box-shadow:var(--shadow-hover);
}

.product::after{
    content:"";
    position:absolute;
    inset:0;
    pointer-events:none;
    background:linear-gradient(
        120deg,
        transparent,
        rgba(255,255,255,.045),
        transparent
    );
    transform:translateX(-120%);
    transition:.8s;
}

.product:hover::after{
    transform:translateX(120%);
}

.product-image{
    position:relative;
    aspect-ratio:1;
    overflow:hidden;
    background:#0c0e15;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.7s var(--ease);
}

.product:hover .product-image img{
    transform:scale(1.08);
}

.product-badge{
    position:absolute;
    top:11px;
    left:11px;
    padding:6px 9px;
    border-radius:8px;
    color:white;
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    font-size:9px;
    font-weight:900;
    box-shadow:0 6px 18px rgba(139,124,255,.25);
}

.product-badge.sale{
    color:#241a00;
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
    background:rgba(12,14,21,.72);
    color:#8f94a8;
    border:1px solid rgba(255,255,255,.08);
    backdrop-filter:blur(12px);
    transition:var(--transition);
}

.wishlist:hover{
    color:var(--danger);
    transform:scale(1.12) rotate(-8deg);
}

.product-info{
    padding:15px 15px 8px;
}

.product-category{
    color:#777d91;
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
    color:#686d80;
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
    background:#191c27;
    color:white;
    font-size:11px;
    font-weight:800;
    transition:var(--transition);
}

.add-cart:hover{
    background:linear-gradient(135deg,var(--primary),var(--secondary));
    transform:translateY(-2px);
    box-shadow:0 10px 30px rgba(139,124,255,.25);
}

.add-cart.added{
    background:var(--success);
}

/* ================= DEAL ================= */

.deal{
    position:relative;
    overflow:hidden;
    display:grid;
    grid-template-columns:1fr 1fr;
    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.055),
            rgba(255,255,255,.015)
        );
    border:1px solid var(--border);
    border-radius:25px;
    box-shadow:var(--shadow);
}

.deal::before{
    content:"";
    position:absolute;
    width:400px;
    height:400px;
    right:-180px;
    top:-180px;
    border-radius:50%;
    background:radial-gradient(circle,rgba(139,124,255,.22),transparent 65%);
    filter:blur(15px);
    animation:float 6s ease-in-out infinite;
}

.deal-image{
    min-height:390px;
    overflow:hidden;
}

.deal-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.8s var(--ease);
}

.deal:hover .deal-image img{
    transform:scale(1.07);
}

.deal-content{
    position:relative;
    z-index:2;
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:50px;
}

.deal-tag{
    align-self:flex-start;
    padding:7px 11px;
    border-radius:8px;
    background:rgba(255,209,102,.1);
    border:1px solid rgba(255,209,102,.15);
    color:#ffd166;
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
    color:#676c7e;
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
    background:rgba(255,255,255,.035);
    transition:var(--transition);
}

.time:hover{
    transform:translateY(-4px);
    border-color:rgba(139,124,255,.3);
    background:rgba(139,124,255,.08);
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
    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.045),
            rgba(255,255,255,.015)
        );
    transition:var(--transition);
}

.review:hover{
    transform:translateY(-7px);
    border-color:rgba(139,124,255,.3);
    box-shadow:var(--shadow);
}

.review-stars{
    color:#f2a93b;
    font-size:12px;
    margin-bottom:11px;
}

.review p{
    min-height:80px;
    color:#a1a6b7;
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
    border:2px solid rgba(139,124,255,.3);
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
    padding:45px;
    border-radius:25px;
    background:
        radial-gradient(
            circle at 85% 15%,
            rgba(192,108,255,.3),
            transparent 35%
        ),
        radial-gradient(
            circle at 15% 100%,
            rgba(67,217,255,.1),
            transparent 30%
        ),
        linear-gradient(135deg,#121521,#191c2b);
    border:1px solid rgba(139,124,255,.16);
    box-shadow:var(--shadow);
}

.newsletter::after{
    content:"";
    position:absolute;
    width:200px;
    height:200px;
    right:30%;
    top:-130px;
    border-radius:50%;
    border:1px solid rgba(255,255,255,.06);
    animation:rotateGlow 15s linear infinite;
}

.newsletter h2{
    font-size:26px;
    letter-spacing:-1px;
}

.newsletter p{
    color:rgba(255,255,255,.5);
    font-size:12px;
    margin-top:5px;
}

.newsletter-form{
    position:relative;
    z-index:2;
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
    border:1px solid rgba(255,255,255,.1);
    border-radius:11px;
    outline:0;
    background:rgba(255,255,255,.06);
    color:white;
    transition:var(--transition);
}

.newsletter-form input:focus{
    border-color:rgba(139,124,255,.55);
    box-shadow:0 0 0 4px rgba(139,124,255,.08);
}

.newsletter-form input::placeholder{
    color:#626779;
}

.newsletter-message{
    display:none;
    margin-top:8px;
    font-size:11px;
}

/* ================= FOOTER ================= */

footer{
    margin-top:60px;
    padding:60px 0 25px;
    background:#06070b;
    color:white;
    border-top:1px solid var(--border);
}

.footer-grid{
    display:grid;
    grid-template-columns:1.5fr 1fr 1fr 1fr;
    gap:45px;
}

.footer-brand p{
    max-width:310px;
    margin-top:13px;
    color:#696e80;
    font-size:11px;
    line-height:1.8;
}

.footer h4{
    margin-bottom:14px;
    font-size:12px;
}

.footer a{
    display:block;
    width:max-content;
    margin-bottom:9px;
    color:#777d90;
    font-size:11px;
    transition:var(--transition);
}

.footer a:hover{
    color:white;
    transform:translateX(5px);
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
    background:#11141d;
    color:#888d9f;
    border:1px solid var(--border);
    transition:var(--transition);
}

.social:hover{
    color:white;
    background:var(--primary);
    transform:translateY(-4px) rotate(-4deg);
    box-shadow:0 10px 25px rgba(139,124,255,.25);
}

.footer-bottom{
    display:flex;
    justify-content:space-between;
    gap:15px;
    margin-top:45px;
    padding-top:20px;
    border-top:1px solid var(--border);
    color:#5f6475;
    font-size:10px;
}

/* ================= MOBILE MENU ================= */

.mobile-menu{
    display:none;
    padding:10px 0 18px;
    animation:fadeDown .35s var(--ease);
}

.mobile-menu a{
    display:block;
    padding:12px;
    border-radius:10px;
    color:var(--muted);
    font-size:13px;
    font-weight:700;
    transition:.3s;
}

.mobile-menu a:hover{
    background:rgba(139,124,255,.09);
    color:white;
    padding-left:17px;
}

/* ================= ANIMATIONS ================= */

@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(25px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

@keyframes fadeDown{
    from{
        opacity:0;
        transform:translateY(-10px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

@keyframes cardIn{
    from{
        opacity:0;
        transform:translateY(30px) scale(.97);
    }
    to{
        opacity:1;
        transform:translateY(0) scale(1);
    }
}

@keyframes gradientMove{
    0%{background-position:0% 50%}
    50%{background-position:100% 50%}
    100%{background-position:0% 50%}
}

@keyframes float{
    0%,100%{
        transform:translateY(0) translateX(0);
    }
    50%{
        transform:translateY(25px) translateX(15px);
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

@keyframes spinSlow{
    from{
        transform:rotate(0deg);
    }
    to{
        transform:rotate(360deg);
    }
}

@keyframes pulse{
    0%,100%{
        box-shadow:0 0 0 0 rgba(139,124,255,0);
    }
    50%{
        box-shadow:0 0 0 8px rgba(139,124,255,.06);
    }
}

@keyframes logoFloat{
    0%,100%{transform:translateY(0)}
    50%{transform:translateY(-3px)}
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
        padding:55px 0;
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

@media(prefers-reduced-motion:reduce){
    *,
    *::before,
    *::after{
        animation-duration:.01ms !important;
        animation-iteration-count:1 !important;
        transition-duration:.01ms !important;
        scroll-behavior:auto !important;
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

            <button class="icon-btn" id="wishlistBtn">
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
            <span>Is Hereeee....</span>
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

        <a href="#products" class="view-all">
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
            <img
                src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=1000&q=85"
                alt="Premium headphones"
            >
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
            <input
                id="newsletterEmail"
                type="email"
                placeholder="Enter your email"
                required
            >

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
                padding:60px;
                background:rgba(255,255,255,.035);
                border:1px solid var(--border);
                border-radius:20px;
                color:var(--muted);
                animation:fadeUp .5s ease both;
            ">
                <i class="fas fa-box-open"
                   style="font-size:35px;margin-bottom:12px;color:var(--primary)">
                </i>

                <h3>No products found</h3>
                <p>Try another search.</p>
            </div>
        `;

        return;
    }


    list.forEach((product,index) => {

        const card = document.createElement("article");

        card.className = "product";

        card.style.animationDelay = `${index * .06}s`;


        const badge = product.badge
            ? `
                <span class="product-badge ${
                    product.badge === "Sale" ? "sale" : ""
                }">
                    ${product.badge}
                </span>
              `
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


function bindProductButtons(){

    document.querySelectorAll(".add-cart").forEach(button => {

        button.addEventListener("click",()=>{

            cartCount++;

            cartCountElement.textContent = cartCount;

            button.classList.add("added");

            button.innerHTML = `
                <i class="fas fa-check"></i>
                Added
            `;

            cartCountElement.animate(
                [
                    {transform:"scale(1)"},
                    {transform:"scale(1.5)"},
                    {transform:"scale(1)"}
                ],
                {
                    duration:400,
                    easing:"ease-out"
                }
            );

            setTimeout(()=>{

                button.classList.remove("added");

                button.innerHTML = `
                    <i class="fas fa-cart-plus"></i>
                    Add to Cart
                `;

            },1500);

        });

    });


    document.querySelectorAll(".wishlist").forEach(button => {

        button.addEventListener("click",()=>{

            const icon = button.querySelector("i");

            icon.classList.toggle("far");
            icon.classList.toggle("fas");

            button.style.color =
                icon.classList.contains("fas")
                ? "var(--danger)"
                : "";

            button.animate(
                [
                    {transform:"scale(1)"},
                    {transform:"scale(1.25) rotate(-8deg)"},
                    {transform:"scale(1)"}
                ],
                {
                    duration:350,
                    easing:"ease-out"
                }
            );

        });

    });

}


/* SEARCH */

const searchInput =
    document.getElementById("searchInput");


searchInput.addEventListener("input",()=>{

    const query =
        searchInput.value.trim().toLowerCase();

    const filtered =
        products.filter(product =>
            product.title.toLowerCase().includes(query) ||
            product.category.toLowerCase().includes(query)
        );

    renderProducts(filtered);

});


/* FILTERS */

document.querySelectorAll(".filter").forEach(filter => {

    filter.addEventListener("click",()=>{

        document.querySelectorAll(".filter")
            .forEach(item =>
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


/* MOBILE MENU */

const menuBtn =
    document.getElementById("menuBtn");

const mobileMenu =
    document.getElementById("mobileMenu");


menuBtn.addEventListener("click",()=>{

    const open =
        mobileMenu.style.display === "block";

    mobileMenu.style.display =
        open ? "none" : "block";

    menuBtn.innerHTML =
        open
        ? `<i class="fas fa-bars"></i>`
        : `<i class="fas fa-xmark"></i>`;

});


document.querySelectorAll(".mobile-menu a")
.forEach(link => {

    link.addEventListener("click",()=>{

        mobileMenu.style.display = "none";

        menuBtn.innerHTML =
            `<i class="fas fa-bars"></i>`;

    });

});


/* CART */

document.getElementById("cartBtn")
.addEventListener("click",()=>{

    alert(
        `Your cart currently has ${cartCount} item${
            cartCount === 1 ? "" : "s"
        }.`
    );

});


/* HERO */

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


/* DEAL TIMER */

let dealEnd =
    Date.now() + 24*60*60*1000;


function updateTimer(){

    const remaining =
        dealEnd - Date.now();


    if(remaining <= 0){

        dealEnd =
            Date.now() + 24*60*60*1000;

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


    document.getElementById("dealDays")
        .textContent =
        String(days).padStart(2,"0");


    document.getElementById("dealHours")
        .textContent =
        String(hours).padStart(2,"0");


    document.getElementById("dealMinutes")
        .textContent =
        String(minutes).padStart(2,"0");


    document.getElementById("dealSeconds")
        .textContent =
        String(seconds).padStart(2,"0");

}


setInterval(updateTimer,1000);

updateTimer();


/* DEAL CART */

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
        "var(--success)";

    setTimeout(()=>{

        this.innerHTML = original;

        this.style.background = "";

    },1600);

});


/* NEWSLETTER */

document.getElementById("newsletterForm")
.addEventListener("submit",function(e){

    e.preventDefault();

    const email =
        document
            .getElementById("newsletterEmail")
            .value
            .trim();

    const message =
        document.getElementById(
            "newsletterMessage"
        );


    if(!email.includes("@")){

        message.textContent =
            "Please enter a valid email address.";

        message.style.color =
            "#ff9d9d";

        message.style.display =
            "block";

        return;

    }


    message.textContent =
        "✓ You're subscribed! Welcome to NexusShop.";

    message.style.color =
        "#8df0c0";

    message.style.display =
        "block";

    this.reset();


    setTimeout(()=>{

        message.style.display =
            "none";

    },3500);

});


/* ACTIVE NAV */

const sections =
    document.querySelectorAll("main section[id]");

const navLinks =
    document.querySelectorAll(".nav a");


window.addEventListener("scroll",()=>{

    let current = "home";

    sections.forEach(section => {

        const top =
            section.offsetTop - 150;

        if(window.scrollY >= top){

            current =
                section.getAttribute("id");

        }

    });


    navLinks.forEach(link => {

        link.classList.remove("active");

        if(link.getAttribute("href") === `#${current}`){

            link.classList.add("active");

        }

    });

});


/* YEAR */

document.getElementById("year")
.textContent =
new Date().getFullYear();


/* INITIALIZE */

renderProducts(products);

</script>

</body>
</html>
