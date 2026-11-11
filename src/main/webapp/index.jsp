<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5" />
  <title>NexusShop — Grand Luxe E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,600&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ============================================================
       GRAND LUXE DESIGN SYSTEM
       ============================================================ */
    :root {
      /* Core palette — deep obsidian + champagne gold */
      --bg: #0b0a0f;
      --bg-elevated: #12111a;
      --bg-card: #17161f;
      --bg-card-hover: #1d1c27;
      --primary: #f5f0e6;
      --primary-dim: #b8b0a0;
      --accent: #c9a962;
      --accent-bright: #e2c88a;
      --accent-deep: #9a7d3e;
      --accent-glow: rgba(201, 169, 98, 0.25);
      --gold-grad: linear-gradient(135deg, #d4b876 0%, #c9a962 40%, #b08d4a 100%);
      --gold-grad-soft: linear-gradient(135deg, #e8d5a8 0%, #d4b876 50%, #c9a962 100%);
      --muted: #8a8478;
      --muted-light: #5e5a50;
      --surface: #1f1e28;
      --surface-soft: #262530;
      --border: rgba(201, 169, 98, 0.12);
      --border-soft: rgba(245, 240, 230, 0.06);
      --success: #4a9d7f;
      --warning: #c9a962;
      --radius: 4px;
      --radius-sm: 3px;
      --shadow: 0 8px 40px rgba(0, 0, 0, 0.4), 0 2px 12px rgba(0, 0, 0, 0.3);
      --shadow-hover: 0 20px 60px rgba(0, 0, 0, 0.5), 0 8px 24px rgba(201, 169, 98, 0.08);
      --shadow-gold: 0 8px 32px rgba(201, 169, 98, 0.2);
      --transition: 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
      --transition-fast: 0.2s cubic-bezier(0.25, 0.46, 0.45, 0.94);
      --container: 1360px;
      --font-display: 'Cormorant Garamond', 'Playfair Display', Georgia, serif;
      --font-body: 'Inter', system-ui, -apple-system, sans-serif;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
      font-size: 16px;
    }

    body {
      font-family: var(--font-body);
      background: var(--bg);
      color: var(--primary);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      overflow-x: hidden;
      background-image:
        radial-gradient(ellipse at 15% 0%, rgba(201, 169, 98, 0.04) 0%, transparent 40%),
        radial-gradient(ellipse at 85% 100%, rgba(201, 169, 98, 0.03) 0%, transparent 40%);
      background-attachment: fixed;
    }

    ::selection {
      background: var(--accent);
      color: var(--bg);
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      display: block;
      max-width: 100%;
      height: auto;
    }

    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }

    input {
      font-family: inherit;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 40px;
    }

    /* ============================================================
       UTILITIES
       ============================================================ */
    .muted {
      color: var(--muted);
    }

    .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }

    .gold-text {
      background: var(--gold-grad-soft);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      color: transparent;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-family: var(--font-body);
      font-size: 11px;
      font-weight: 600;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--accent);
    }

    .eyebrow::before,
    .eyebrow::after {
      content: '';
      width: 28px;
      height: 1px;
      background: linear-gradient(90deg, transparent, var(--accent));
    }

    .eyebrow::after {
      background: linear-gradient(90deg, var(--accent), transparent);
    }

    .divider-gold {
      height: 1px;
      background: linear-gradient(90deg, transparent, var(--border), var(--accent), var(--border), transparent);
      margin: 0 auto;
      max-width: 600px;
    }

    /* ============================================================
       BUTTONS — GRAND
       ============================================================ */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 12px;
      padding: 16px 40px;
      border-radius: 2px;
      font-family: var(--font-body);
      font-weight: 600;
      font-size: 12px;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      transition: var(--transition);
      border: 1px solid transparent;
      white-space: nowrap;
      position: relative;
      overflow: hidden;
    }

    .btn::before {
      content: '';
      position: absolute;
      top: 0;
      left: -100%;
      width: 100%;
      height: 100%;
      background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.15), transparent);
      transition: left 0.6s ease;
    }

    .btn:hover::before {
      left: 100%;
    }

    .btn-primary {
      background: var(--gold-grad);
      color: var(--bg);
      border-color: var(--accent);
      box-shadow: 0 4px 24px rgba(201, 169, 98, 0.25);
    }

    .btn-primary:hover {
      background: var(--gold-grad-soft);
      transform: translateY(-2px);
      box-shadow: var(--shadow-gold);
    }

    .btn-secondary {
      background: transparent;
      color: var(--primary);
      border-color: var(--border);
    }

    .btn-secondary:hover {
      border-color: var(--accent);
      color: var(--accent);
      transform: translateY(-2px);
      box-shadow: 0 4px 20px rgba(201, 169, 98, 0.1);
    }

    .btn-ghost {
      background: rgba(245, 240, 230, 0.04);
      color: var(--primary);
      border-color: var(--border);
      backdrop-filter: blur(10px);
    }

    .btn-ghost:hover {
      border-color: var(--accent);
      color: var(--accent);
      transform: translateY(-2px);
    }

    .btn-sm {
      padding: 12px 24px;
      font-size: 10px;
      letter-spacing: 0.2em;
    }

    /* ============================================================
       HEADER — GRAND
       ============================================================ */
    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(11, 10, 15, 0.85);
      backdrop-filter: blur(24px) saturate(150%);
      -webkit-backdrop-filter: blur(24px) saturate(150%);
      border-bottom: 1px solid var(--border-soft);
      transition: var(--transition);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      padding: 18px 0;
      min-height: 88px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 14px;
      font-family: var(--font-display);
      font-weight: 600;
      font-size: 30px;
      letter-spacing: 0.02em;
      color: var(--primary);
      flex-shrink: 0;
      transition: var(--transition);
    }

    .brand:hover {
      opacity: 0.9;
    }

    .brand .accent {
      background: var(--gold-grad-soft);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      font-style: italic;
      font-weight: 700;
    }

    .brand i {
      font-size: 26px;
      background: var(--gold-grad-soft);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 9px;
      padding: 12px 20px;
      font-family: var(--font-body);
      font-weight: 500;
      font-size: 12px;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      color: var(--primary-dim);
      transition: var(--transition);
      position: relative;
    }

    nav.main-nav li a::after {
      content: '';
      position: absolute;
      bottom: 8px;
      left: 50%;
      width: 0;
      height: 1px;
      background: var(--gold-grad);
      transition: var(--transition);
      transform: translateX(-50%);
    }

    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      color: var(--primary);
    }

    nav.main-nav li a:hover::after,
    nav.main-nav li a.active::after {
      width: 24px;
    }

    nav.main-nav li a i {
      font-size: 12px;
      color: var(--accent);
      opacity: 0.75;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
      flex-shrink: 0;
    }

    .header-actions .icon-btn {
      width: 48px;
      height: 48px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 17px;
      color: var(--primary-dim);
      transition: var(--transition);
      position: relative;
      border: 1px solid transparent;
    }

    .header-actions .icon-btn:hover {
      color: var(--accent);
      background: rgba(201, 169, 98, 0.06);
      border-color: var(--border);
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: 2px;
      right: 2px;
      background: var(--gold-grad);
      color: var(--bg);
      font-size: 10px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      transition: transform 0.25s ease;
      box-shadow: 0 2px 8px rgba(201, 169, 98, 0.4);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 2px;
      padding: 0 16px 0 20px;
      transition: var(--transition);
      border: 1px solid var(--border-soft);
      min-width: 280px;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      background: var(--bg-elevated);
      box-shadow: 0 0 0 3px rgba(201, 169, 98, 0.1);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 13px 0;
      font-size: 13px;
      color: var(--primary);
      letter-spacing: 0.02em;
    }

    .search-wrap input::placeholder {
      color: var(--muted-light);
      font-size: 12px;
      letter-spacing: 0.1em;
      text-transform: uppercase;
    }

    .search-wrap button {
      padding: 8px 0 8px 12px;
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }

    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      width: 48px;
      height: 48px;
      border-radius: 50%;
      font-size: 19px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
      border: 1px solid var(--border-soft);
    }

    .mobile-toggle:hover {
      border-color: var(--accent);
      color: var(--accent);
    }

    #mobileMenu {
      display: none;
      background: var(--bg-elevated);
      border-top: 1px solid var(--border-soft);
      padding: 20px 0 28px;
      box-shadow: 0 20px 50px rgba(0, 0, 0, 0.5);
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }

    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 16px;
      padding: 16px 20px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      font-size: 13px;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      border-bottom: 1px solid var(--border-soft);
    }

    #mobileMenu ul li a:hover {
      color: var(--accent);
      background: rgba(201, 169, 98, 0.04);
    }

    #mobileMenu ul li a i {
      width: 22px;
      color: var(--accent);
      opacity: 0.8;
      font-size: 14px;
    }

    /* ============================================================
       HERO — GRAND
       ============================================================ */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 680px;
      padding: 100px 0 120px;
      overflow: hidden;
      background: var(--bg);
      border-bottom: 1px solid var(--border-soft);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?auto=format&fit=crop&w=1800&q=80') center/cover no-repeat;
      opacity: 0.28;
      z-index: 0;
      filter: grayscale(0.4) contrast(1.1);
    }

    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background:
        linear-gradient(180deg, rgba(11, 10, 15, 0.85) 0%, rgba(11, 10, 15, 0.5) 40%, rgba(11, 10, 15, 0.95) 100%),
        radial-gradient(ellipse at 25% 40%, rgba(201, 169, 98, 0.15) 0%, transparent 55%);
      z-index: 0;
    }

    .hero .container {
      position: relative;
      z-index: 2;
    }

    .hero .badge {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      background: rgba(201, 169, 98, 0.08);
      color: var(--accent);
      padding: 10px 24px;
      border-radius: 2px;
      font-family: var(--font-body);
      font-weight: 600;
      font-size: 11px;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      margin-bottom: 32px;
      border: 1px solid var(--border);
      backdrop-filter: blur(10px);
    }

    .hero .badge i {
      font-size: 12px;
    }

    .hero h1 {
      font-family: var(--font-display);
      font-size: clamp(3.2rem, 6.5vw, 5.6rem);
      font-weight: 600;
      color: var(--primary);
      line-height: 1.05;
      max-width: 780px;
      margin-bottom: 28px;
      letter-spacing: -0.01em;
      text-shadow: 0 4px 60px rgba(0, 0, 0, 0.5);
    }

    .hero h1 .gold {
      background: var(--gold-grad-soft);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      font-style: italic;
      font-weight: 700;
    }

    .hero p {
      color: rgba(245, 240, 230, 0.65);
      font-size: 17px;
      font-weight: 300;
      max-width: 520px;
      margin-bottom: 44px;
      line-height: 1.8;
      letter-spacing: 0.01em;
    }

    .hero .actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    .hero .actions .btn {
      padding: 18px 48px;
    }

    .hero-scroll-hint {
      position: absolute;
      bottom: 32px;
      left: 50%;
      transform: translateX(-50%);
      z-index: 3;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 10px;
      color: var(--muted);
      font-size: 10px;
      letter-spacing: 0.3em;
      text-transform: uppercase;
      animation: floatY 3s ease-in-out infinite;
    }

    .hero-scroll-hint .line {
      width: 1px;
      height: 40px;
      background: linear-gradient(180deg, var(--accent), transparent);
    }

    @keyframes floatY {
      0%, 100% { transform: translateX(-50%) translateY(0); }
      50% { transform: translateX(-50%) translateY(8px); }
    }

    /* ============================================================
       SECTION — GRAND
       ============================================================ */
    .section {
      padding: 100px 0;
      position: relative;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 24px;
      margin-bottom: 56px;
      flex-wrap: wrap;
    }

    .section-header .title-group {
      max-width: 700px;
    }

    .section-header .title-group .eyebrow {
      margin-bottom: 16px;
    }

    .section-header .title-group h2 {
      font-family: var(--font-display);
      font-size: clamp(2.2rem, 4vw, 3.4rem);
      font-weight: 600;
      letter-spacing: -0.01em;
      color: var(--primary);
      line-height: 1.1;
    }

    .section-header .title-group h2 .accent {
      background: var(--gold-grad-soft);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      font-style: italic;
    }

    .section-header .title-group p {
      color: var(--muted);
      margin-top: 12px;
      font-size: 15px;
      font-weight: 300;
      letter-spacing: 0.02em;
    }

    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 11px;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      transition: var(--transition);
      white-space: nowrap;
      padding: 12px 0;
      border-bottom: 1px solid transparent;
    }

    .section-header .view-all:hover {
      gap: 16px;
      color: var(--accent-bright);
      border-bottom-color: var(--accent);
    }

    /* ============================================================
       CATEGORIES — GRAND
       ============================================================ */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 20px;
    }

    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 40px 22px;
      text-align: center;
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid var(--border-soft);
      position: relative;
      overflow: hidden;
    }

    .cat-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 1px;
      background: var(--gold-grad);
      opacity: 0;
      transition: var(--transition);
    }

    .cat-card:hover::before {
      opacity: 1;
    }

    .cat-card:hover {
      transform: translateY(-8px);
      background: var(--bg-card-hover);
      border-color: var(--border);
      box-shadow: var(--shadow-hover);
    }

    .cat-card .icon-wrap {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      background: rgba(201, 169, 98, 0.06);
      display: grid;
      place-items: center;
      margin: 0 auto 20px;
      font-size: 30px;
      color: var(--accent);
      transition: var(--transition);
      border: 1px solid var(--border);
    }

    .cat-card:hover .icon-wrap {
      background: var(--gold-grad);
      color: var(--bg);
      transform: scale(1.06);
      border-color: transparent;
      box-shadow: 0 8px 28px rgba(201, 169, 98, 0.25);
    }

    .cat-card h4 {
      font-family: var(--font-display);
      font-size: 20px;
      font-weight: 600;
      margin-bottom: 6px;
      letter-spacing: 0.01em;
    }

    .cat-card .count {
      font-size: 11px;
      color: var(--muted);
      font-weight: 500;
      letter-spacing: 0.18em;
      text-transform: uppercase;
    }

    /* ============================================================
       PRODUCTS — GRAND
       ============================================================ */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid var(--border-soft);
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-8px);
      border-color: var(--border);
      box-shadow: var(--shadow-hover);
      background: var(--bg-card-hover);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
      filter: brightness(0.95);
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.06);
      filter: brightness(1.05);
    }

    .product-card .badge {
      position: absolute;
      top: 18px;
      left: 18px;
      background: var(--gold-grad);
      color: var(--bg);
      padding: 7px 16px;
      border-radius: 2px;
      font-size: 9px;
      font-weight: 700;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      box-shadow: 0 4px 16px rgba(201, 169, 98, 0.35);
    }

    .product-card .badge.sale {
      background: var(--bg);
      color: var(--accent);
      border: 1px solid var(--accent);
      box-shadow: 0 4px 16px rgba(201, 169, 98, 0.2);
    }

    .product-card .wish-btn {
      position: absolute;
      top: 18px;
      right: 18px;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: rgba(11, 10, 15, 0.6);
      backdrop-filter: blur(10px);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--primary);
      transition: var(--transition);
      border: 1px solid rgba(245, 240, 230, 0.1);
      opacity: 0;
      transform: translateY(-6px);
    }

    .product-card:hover .wish-btn {
      opacity: 1;
      transform: translateY(0);
    }

    .product-card .wish-btn:hover {
      background: var(--accent);
      color: var(--bg);
      border-color: var(--accent);
      transform: scale(1.1);
    }

    .product-card .body {
      padding: 24px 24px 18px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .product-card .body .category-tag {
      font-size: 10px;
      color: var(--accent);
      text-transform: uppercase;
      letter-spacing: 0.2em;
      font-weight: 600;
      opacity: 0.8;
    }

    .product-card .body h5 {
      font-family: var(--font-display);
      font-size: 22px;
      font-weight: 600;
      line-height: 1.25;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      color: var(--primary);
      letter-spacing: 0.01em;
    }

    .product-card .body .price-row {
      display: flex;
      align-items: baseline;
      gap: 12px;
      margin-top: 4px;
    }

    .product-card .body .price {
      font-family: var(--font-body);
      font-weight: 600;
      font-size: 19px;
      color: var(--accent);
      letter-spacing: 0.02em;
    }

    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
      font-weight: 400;
    }

    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 12px;
      color: var(--accent);
      letter-spacing: 2px;
    }

    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
      font-size: 11px;
      letter-spacing: 0.08em;
    }

    .product-card .footer {
      padding: 0 24px 24px;
      display: flex;
      gap: 12px;
    }

    .product-card .footer .add-btn {
      flex: 1;
      padding: 14px;
      border-radius: 2px;
      background: transparent;
      color: var(--primary);
      font-weight: 600;
      font-size: 11px;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      border: 1px solid var(--border);
    }

    .product-card .footer .add-btn:hover {
      background: var(--gold-grad);
      color: var(--bg);
      border-color: var(--accent);
      transform: translateY(-2px);
      box-shadow: var(--shadow-gold);
    }

    .product-card .footer .add-btn.added {
      background: var(--success);
      color: var(--primary);
      border-color: var(--success);
    }

    /* ============================================================
       DEAL — GRAND
       ============================================================ */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid var(--border-soft);
      position: relative;
    }

    .deal-wrap::before {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(ellipse at 100% 0%, rgba(201, 169, 98, 0.06) 0%, transparent 50%);
      pointer-events: none;
    }

    .deal-wrap .deal-img {
      flex: 0 0 52%;
      background: var(--surface);
      min-height: 480px;
      position: relative;
      overflow: hidden;
    }

    .deal-wrap .deal-img::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(90deg, transparent 70%, var(--bg-card) 100%);
      pointer-events: none;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
      filter: brightness(0.9) contrast(1.05);
    }

    .deal-wrap:hover .deal-img img {
      transform: scale(1.04);
      filter: brightness(1) contrast(1.05);
    }

    .deal-wrap .deal-content {
      flex: 1;
      padding: 64px 64px 64px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      position: relative;
      z-index: 1;
    }

    .deal-wrap .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      background: rgba(201, 169, 98, 0.08);
      color: var(--accent);
      padding: 8px 20px;
      border-radius: 2px;
      font-size: 10px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.24em;
      align-self: flex-start;
      margin-bottom: 24px;
      border: 1px solid var(--border);
    }

    .deal-wrap .deal-content h3 {
      font-family: var(--font-display);
      font-size: clamp(2.4rem, 4vw, 3.4rem);
      font-weight: 600;
      margin-bottom: 12px;
      letter-spacing: -0.01em;
      line-height: 1.1;
    }

    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 28px;
      font-size: 15px;
      line-height: 1.8;
      font-weight: 300;
      max-width: 420px;
    }

    .deal-wrap .deal-content .price-big {
      font-family: var(--font-display);
      font-size: 3.4rem;
      font-weight: 600;
      color: var(--accent);
      letter-spacing: -0.02em;
      line-height: 1.05;
    }

    .deal-wrap .deal-content .price-big .old {
      font-family: var(--font-body);
      font-size: 1.2rem;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 16px;
      letter-spacing: 0;
    }

    .deal-wrap .deal-content .stock {
      font-size: 12px;
      color: var(--muted);
      margin: 14px 0 24px;
      font-weight: 500;
      letter-spacing: 0.06em;
    }

    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
      font-weight: 700;
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 20px 0 32px;
    }

    .timer-box {
      background: var(--surface);
      color: var(--primary);
      padding: 16px 20px;
      border-radius: 2px;
      min-width: 84px;
      text-align: center;
      border: 1px solid var(--border-soft);
      transition: var(--transition);
    }

    .timer-box:hover {
      border-color: var(--border);
      background: var(--surface-soft);
    }

    .timer-box .num {
      font-family: var(--font-display);
      font-size: 32px;
      font-weight: 600;
      line-height: 1.1;
      color: var(--
</style>
</head>
<body>
  <h1 style="color:white;padding:40px;">TEST — if you see this, the file structure is fine</h1>
</body>
</html>
