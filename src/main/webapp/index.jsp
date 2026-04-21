<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Redefine Modern Commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #050b14;
            --bg-surface: #0f1825;
            --card-bg: rgba(18, 28, 40, 0.85);
            --glass-border: rgba(255, 255, 255, 0.08);
            --primary: #6ee7ff;
            --primary-glow: #00d4ff;
            --accent: #ff6e7f;
            --accent-soft: #ff8a9c;
            --text-light: #f1f5f9;
            --text-muted: #9ca3af;
            --success: #10b981;
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
            --shadow-soft: 0 25px 40px -12px rgba(0, 0, 0, 0.35);
            --transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: radial-gradient(circle at 10% 20%, #0a0f1c, #03060c);
            color: var(--text-light);
            line-height: 1.5;
            overflow-x: hidden;
        }

        /* animated background grain */
        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: radial-gradient(rgba(110, 231, 255, 0.03) 1px, transparent 1px);
            background-size: 40px 40px;
            pointer-events: none;
            z-index: 0;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
            position: relative;
            z-index: 2;
        }

        /* glass header */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(5, 11, 20, 0.75);
            border-bottom: 1px solid var(--glass-border);
            transition: var(--transition);
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 800;
            font-size: 1.8rem;
            background: linear-gradient(135deg, #FFFFFF, var(--primary));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .nav-links {
            display: flex;
            gap: 12px;
            align-items: center;
        }

        .nav-links a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            transition: var(--transition);
            color: var(--text-light);
            font-size: 0.95rem;
            backdrop-filter: blur(4px);
        }

        .nav-links a:hover {
            background: rgba(110, 231, 255, 0.15);
            color: var(--primary);
            box-shadow: 0 0 10px rgba(110, 231, 255, 0.2);
        }

        .search-glass {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(8px);
            border-radius: 60px;
            padding: 8px 20px;
            gap: 12px;
            border: 1px solid rgba(110, 231, 255, 0.2);
            transition: var(--transition);
        }

        .search-glass:focus-within {
            border-color: var(--primary);
            box-shadow: 0 0 16px rgba(110, 231, 255, 0.3);
            background: rgba(10, 20, 30, 0.8);
        }

        .search-glass input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
            font-size: 0.9rem;
        }

        .cart-icon {
            position: relative;
            background: rgba(110, 231, 255, 0.1);
            padding: 10px 14px;
            border-radius: 40px;
            cursor: pointer;
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: #0a0f1c;
            font-weight: 800;
            font-size: 12px;
            width: 22px;
            height: 22px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 8px var(--accent);
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 1.6rem;
            cursor: pointer;
        }

        /* modern hero */
        .hero-neo {
            padding: 80px 0 100px;
            position: relative;
            overflow: hidden;
        }

        .hero-neo .container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 40px;
        }

        .hero-text {
            flex: 1;
        }

        .hero-badge {
            display: inline-block;
            background: rgba(110, 231, 255, 0.2);
            backdrop-filter: blur(8px);
            border-radius: 40px;
            padding: 6px 16px;
            font-size: 0.8rem;
            font-weight: 500;
            color: var(--primary);
            margin-bottom: 24px;
            border: 1px solid rgba(110, 231, 255, 0.3);
        }

        .hero-text h1 {
            font-size: 3.8rem;
            font-weight: 800;
            font-family: 'Space Grotesk', sans-serif;
            line-height: 1.2;
            background: linear-gradient(to right, #fff, var(--primary));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            margin-bottom: 20px;
        }

        .hero-text p {
            color: var(--text-muted);
            max-width: 500px;
            margin-bottom: 32px;
        }

        .btn-primary-glow {
            background: linear-gradient(95deg, var(--primary), #3b82f6);
            border: none;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 700;
            color: #050b14;
            cursor: pointer;
            transition: 0.2s;
            box-shadow: 0 8px 20px rgba(0, 212, 255, 0.3);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid rgba(110, 231, 255, 0.5);
            padding: 14px 28px;
            border-radius: 60px;
            color: white;
            font-weight: 600;
            margin-left: 12px;
            transition: 0.2s;
        }

        /* categories grid */
        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
            margin-bottom: 8px;
        }

        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin: 48px 0 20px;
        }

        .cat-card {
            background: rgba(18, 28, 40, 0.7);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(110, 231, 255, 0.1);
            border-radius: var(--radius-lg);
            padding: 28px 12px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--primary);
            box-shadow: 0 20px 30px -12px rgba(0, 212, 255, 0.2);
            background: rgba(20, 32, 48, 0.8);
        }

        .cat-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 12px;
        }

        /* products grid modern */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
            margin: 40px 0;
        }

        .product-card {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            border-radius: var(--radius-xl);
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.05);
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--primary);
            box-shadow: 0 25px 35px -15px rgba(0,0,0,0.5);
        }

        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 18px;
        }

        .price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
        }

        .old-price {
            text-decoration: line-through;
            font-size: 0.8rem;
            color: var(--text-muted);
            margin-left: 8px;
        }

        .add-btn {
            background: rgba(110, 231, 255, 0.12);
            border: 1px solid rgba(110, 231, 255, 0.3);
            width: 100%;
            padding: 12px;
            border-radius: 60px;
            font-weight: 600;
            color: white;
            margin-top: 12px;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-btn:hover {
            background: var(--primary);
            color: #050b14;
            border-color: var(--primary);
        }

        /* flash sale */
        .flash-sale {
            background: linear-gradient(125deg, #0f1825, #07111e);
            border-radius: 40px;
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            padding: 32px;
            margin: 40px 0;
            border: 1px solid rgba(110, 231, 255, 0.2);
            box-shadow: var(--shadow-soft);
        }

        .deal-img {
            flex: 1;
            border-radius: 28px;
            overflow: hidden;
        }

        .timer-group {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-card {
            background: #00000040;
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 12px 16px;
            text-align: center;
            min-width: 70px;
            border: 1px solid rgba(110, 231, 255, 0.2);
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 20px 4px 30px;
        }

        .testi-card {
            min-width: 320px;
            background: rgba(18, 28, 40, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 28px;
            padding: 28px;
            border: 1px solid rgba(110, 231, 255, 0.1);
        }

        /* newsletter */
        .newsletter-glow {
            background: radial-gradient(ellipse at 30% 40%, #102a3f, #03060c);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            border: 1px solid rgba(110, 231, 255, 0.2);
        }

        .newsletter-glow input {
            padding: 14px 24px;
            border-radius: 80px;
            border: none;
            width: 300px;
            background: #0f1825;
            color: white;
            border: 1px solid rgba(110,231,255,0.3);
        }

        footer {
            border-top: 1px solid rgba(110, 231, 255, 0.1);
            padding: 48px 0 32px;
            margin-top: 40px;
        }

        @media (max-width: 1024px) {
            .products-grid { grid-template-columns: repeat(3,1fr); }
        }
        @media (max-width: 800px) {
            .nav-links, .search-glass { display: none; }
            .mobile-toggle { display: block; }
            .products-grid { grid-template-columns: repeat(2,1fr); }
            .hero-text h1 { font-size: 2.4rem; }
        }
        @media (max-width: 560px) {
            .products-grid { grid-template-columns: 1fr; }
            .grid-categories { grid-template-columns: repeat(2,1fr); }
            .timer-group { flex-wrap: wrap; justify-content: center; }
        }
        button {
            cursor: pointer;
        }
        .muted {
            color: var(--text-muted);
        }
    </style>
</head>
<body>
    <div class="glass-header">
        <div class="container header-flex">
            <div style="display: flex; align-items: center; gap: 20px;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <div class="brand">NEXUS<span style="color:#6ee7ff;">SHOP</span></div>
            </div>
            <div class="nav-links" id="desktopNav">
                <a href="#">Home</a>
                <a href="#" id="catNavBtn">Categories</a>
                <a href="#dealsSection">Flash Sale</a>
                <a href="#">Trending</a>
            </div>
            <div style="display: flex; gap: 14px; align-items: center;">
                <div class="search-glass">
                    <input type="text" id="searchInput" placeholder="Search products...">
                    <i class="fas fa-search" id="searchBtn" style="color: var(--primary); cursor: pointer;"></i>
                </div>
                <div class="cart-icon" id="cartBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>
        <div id="mobileMenuPanel" style="display: none; background: rgba(5,11,20,0.95); backdrop-filter: blur(20px); padding: 20px 28px; border-top: 1px solid #2a3a50;">
            <div style="display: flex; flex-direction: column; gap: 16px;">
                <a href="#" style="color:white;">Home</a>
                <a href="#" style="color:white;">Shop</a>
                <a href="#dealsSection" style="color:white;">Deals</a>
                <a href="#" style="color:white;">Support</a>
            </div>
        </div>
    </div>

    <main>
        <!-- Hero Section -->
        <section class="hero-neo">
            <div class="container">
                <div class="hero-text">
                    <div class="hero-badge"><i class="fas fa-bolt"></i> Limited winter drop</div>
                    <h1>Elevate your <br>everyday style</h1>
                    <p>Discover curated tech, streetwear & lifestyle essentials. Free shipping + exclusive flash deals.</p>
                    <div>
                        <button class="btn-primary-glow" id="shopNowBtn">Shop now <i class="fas fa-arrow-right"></i></button>
                        <button class="btn-outline" id="exploreDealsBtn">Explore deals</button>
                    </div>
                </div>
                <div style="flex:0.8; min-width: 200px; text-align: center;">
                    <i class="fas fa-crown" style="font-size: 120px; color: rgba(110,231,255,0.2); filter: drop-shadow(0 0 12px #6ee7ff);"></i>
                </div>
            </div>
        </section>

        <!-- Categories dynamic -->
        <div class="container">
            <h2 class="section-title">Shop by category</h2>
            <p class="muted">Explore premium collections</p>
            <div class="grid-categories" id="categoriesGrid"></div>
        </div>

        <!-- Products grid -->
        <div class="container">
            <h2 class="section-title">⚡ Trending now</h2>
            <p class="muted">Bestsellers that define the season</p>
            <div class="products-grid" id="productsGrid"></div>
        </div>

        <!-- Flash Deal Section with countdown -->
        <div class="container" id="dealsSection">
            <h2 class="section-title">🔥 Flash sale</h2>
            <p class="muted">Hurry up! exclusive discount</p>
            <div class="flash-sale">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Macbook deal" style="width:100%; height:100%; object-fit:cover;">
                </div>
                <div style="flex: 1.2;">
                    <h2 style="font-size: 2rem;">MacBook Air M2</h2>
                    <p>Supercharged by M2 — 18hrs battery, 256GB SSD.</p>
                    <div class="timer-group" id="timerRoot">
                        <div class="time-card"><span id="dealDays">0</span><br><small>Days</small></div>
                        <div class="time-card"><span id="dealHours">00</span><br><small>Hrs</small></div>
                        <div class="time-card"><span id="dealMinutes">00</span><br><small>Mins</small></div>
                        <div class="time-card"><span id="dealSeconds">00</span><br><small>Secs</small></div>
                    </div>
                    <div><span class="price" style="font-size: 2rem;">$999</span> <span class="old-price">$1,299</span> <span style="background:#ff4757; padding:6px 12px; border-radius: 40px; font-weight: bold;">-23%</span></div>
                    <button class="btn-primary-glow" id="buyDealBtn" style="margin-top: 20px; background: linear-gradient(95deg,#ff6e7f,#ff3b4a);">Add to cart <i class="fas fa-bolt"></i></button>
                </div>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="container">
            <h2 class="section-title">Loved by 10k+ shoppers</h2>
            <div class="testimonial-scroll" id="testimonialsContainer"></div>
        </div>

        <!-- Newsletter -->
        <div class="container" style="margin: 40px auto;">
            <div class="newsletter-glow">
                <h3 style="font-size: 1.8rem;">Join the inner circle</h3>
                <p>Exclusive early access & members-only deals</p>
                <form id="newsletterForm" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 20px;">
                    <input type="email" id="newsletterEmail" placeholder="you@example.com" required>
                    <button class="btn-primary-glow" id="subscribeBtn" style="background: white; color: #0a0f1c;">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top: 14px; font-size: 0.9rem;"></div>
            </div>
        </div>
    </main>

    <footer>
        <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 40px;">
            <div><strong style="font-size: 1.3rem;">NexusShop</strong><p class="muted" style="margin-top: 8px;">Minimalist • Modern • Fast</p></div>
            <div><strong>Explore</strong><p class="muted">New Arrivals<br>Best Sellers<br>Deals</p></div>
            <div><strong>Support</strong><p class="muted">FAQs<br>Shipping<br>Returns</p></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 32px;"><span class="muted">© 2025 NexusShop — All rights reserved.</span></div>
    </footer>

    <script>
        // ------------------- DATA -------------------
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Ultra', price: 749, oldPrice: 799, rating: 5, reviews: 214, badge: '-6%', img: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Minimalist Backpack', price: 79, oldPrice: 119, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 8, title: 'Oversized Hoodie', price: 89, oldPrice: 129, rating: 4, reviews: 93, img: 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80', category: 'clothing' }
        ];

        let cartCount = 0;
        const cartCountEl = document.getElementById('cartCount');
        const productsGrid = document.getElementById('productsGrid');
        const categoriesGrid = document.getElementById('categoriesGrid');
        const searchInput = document.getElementById('searchInput');

        function updateCartUI() {
            cartCountEl.innerText = cartCount;
        }

        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (product) {
                cartCount++;
                updateCartUI();
                const btn = document.querySelector(`.add-btn[data-id='${productId}']`);
                if (btn) {
                    const original = btn.innerHTML;
                    btn.innerHTML = '<i class="fas fa-check"></i> Added';
                    setTimeout(() => { btn.innerHTML = original; }, 1000);
                }
            }
        }

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const card = document.createElement('div');
                card.className = 'cat-card';
                card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="muted" style="font-size:12px;">shop →</div>`;
                card.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
                });
                categoriesGrid.appendChild(card);
            });
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if (!q) return renderProducts(PRODUCTS);
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        function renderProducts(productsArr) {
            productsGrid.innerHTML = '';
            if (productsArr.length === 0) {
                productsGrid.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding: 40px;">✨ No products found ✨</div>`;
                return;
            }
            productsArr.forEach(p => {
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div style="display: flex; justify-content: space-between;">
                            <strong>${escapeHtml(p.title)}</strong>
                            <span style="color:#ffb347;">${'★'.repeat(Math.round(p.rating))}</span>
                        </div>
                        <div style="margin: 10px 0;">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                `;
                const btn = card.querySelector('.add-btn');
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    addToCart(p.id);
                });
                productsGrid.appendChild(card);
            });
        }

        function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

        // --- search events ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keypress', (e) => { if (e.key === 'Enter') filterProducts(searchInput.value); });

        // --- countdown timer (2 days left)---
        function initDealTimer() {
            const target = new Date();
            target.setDate(target.getDate() + 2);
            target.setHours(23, 59, 59, 0);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').innerText = '0';
                    document.getElementById('dealHours').innerText = '00';
                    document.getElementById('dealMinutes').innerText = '00';
                    document.getElementById('dealSeconds').innerText = '00';
                    return;
                }
                const days = Math.floor(diff / (86400000));
                const hours = Math.floor((diff % 86400000) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById('dealDays').innerText = days;
                document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
                document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
                document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
            }
            tick();
            setInterval(tick, 1000);
        }

        // --- testimonials dynamic
        const testiData = [
            { name: "Olivia Chen", text: "Absolutely obsessed with the quality! Shipping was faster than expected.", stars: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "Marcus V.", text: "Best customer experience ever. The flash sale is insane!", stars: 5, avatar: "https://randomuser.me/api/portraits/men/42.jpg" },
            { name: "Sophia R.", text: "NexusShop became my go-to for premium tech.", stars: 4, avatar: "https://randomuser.me/api/portraits/women/33.jpg" }
        ];
        function renderTestimonials() {
            const container = document.getElementById('testimonialsContainer');
            container.innerHTML = '';
            testiData.forEach(t => {
                const card = document.createElement('div');
                card.className = 'testi-card';
                card.innerHTML = `<div style="color:#fbbf24;">${'★'.repeat(t.stars)}</div><p style="margin: 12px 0;">“${t.text}”</p><div style="display:flex; gap:12px; align-items:center;"><div style="width:40px;height:40px;background:#ccc; border-radius:50%; background-image:url(${t.avatar}); background-size:cover;"></div><div><strong>${t.name}</strong><div class="muted">verified buyer</div></div></div>`;
                container.appendChild(card);
            });
        }

        // Newsletter subscription
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msgDiv = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msgDiv.innerHTML = '<span style="color:#ff9e9e;">Valid email required</span>';
                setTimeout(() => msgDiv.innerHTML = '', 2000);
                return;
            }
            msgDiv.innerHTML = '<span style="color:#a5f3c3;">✓ Thanks! Exclusive offers on the way.</span>';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 3000);
        });

        // flash deal button
        document.getElementById('buyDealBtn').addEventListener('click', () => {
            cartCount++;
            updateCartUI();
            alert('MacBook Air M2 added to cart (demo)');
        });

        // nav buttons
        document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDealsBtn').addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('cartBtn').addEventListener('click', () => alert(`Cart has ${cartCount} item(s). Checkout demo`));
        // mobile toggle
        const mobileToggle = document.getElementById('mobileToggle');
        const mobilePanel = document.getElementById('mobileMenuPanel');
        mobileToggle.addEventListener('click', () => {
            mobilePanel.style.display = mobilePanel.style.display === 'none' ? 'block' : 'none';
        });
        document.getElementById('catNavBtn')?.addEventListener('click', (e) => {
            e.preventDefault();
            document.querySelector('.grid-categories').scrollIntoView({ behavior: 'smooth' });
        });

        // initialize everything
        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartUI();
            initDealTimer();
            renderTestimonials();
        }
        init();
    </script>
</body>
</html>
