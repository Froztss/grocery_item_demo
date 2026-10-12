# Brazil Grocery Items Database - PHP MySQL Demo

A complete PHP + MySQL demonstration project featuring a grocery inventory database with **authentic Brazilian brands and products**.

## 🇧🇷 Brazilian Brands Included

- **Coffee**: Pilão, 3 Corações, Rubicão, Copal, Agrestina
- **Meats**: Sadia, Perdigão, Friboi
- **Beans/Rice/Legumes**: Camil, Yoki
- **Beverages**: Guaraná Antarctica, Brahma, Skol, Antarctica, Itambacuri, Cachaça 51, Colorado, Baden, Miolo
- **Dairy**: Vigor, Neve, Nestlé (Ninho, Moça), União, Nata, 3 Corações
- **Frozen**: Forno de Minas

## 📁 Project Structure

```
Pabilando_PHP/
├── brazil_grocery_items.sql    # Database schema + 100+ records
├── dbconfig.php                # PDO database configuration
├── fetch_all.php               # fetchAll() demonstration
├── fetch.php                   # fetch() demonstration  
├── insert.php                  # INSERT record demonstration
├── delete.php                  # DELETE record demonstration
├── update.php                  # UPDATE record demonstration
├── display_table.php           # HTML table with filters/sort/search
├── index.php                   # Main navigation page
└── README.md                   # This file
```

## 🗄️ Database Schema

**Table: `grocery_items`** (12 columns)

| Column | Type | Constraints |
|--------|------|-------------|
| `item_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `item_name` | VARCHAR(150) | NOT NULL |
| `brand_name` | VARCHAR(100) | NOT NULL |
| `category` | VARCHAR(80) | NOT NULL |
| `price_brl` | DECIMAL(10,2) | NOT NULL |
| `unit_of_measure` | VARCHAR(20) | DEFAULT 'un' |
| `stock_quantity` | INT | DEFAULT 0 |
| `expiration_date` | DATE | NULL allowed |
| `origin_state` | VARCHAR(50) | NOT NULL |
| `is_organic` | BOOLEAN | DEFAULT FALSE |
| `barcode` | VARCHAR(20) | UNIQUE |
| `supplier_name` | VARCHAR(100) | NOT NULL |

## 🚀 Setup Instructions

### 1. Database Setup

```sql
-- Create database
CREATE DATABASE brazil_grocery CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Import schema and data
mysql -u root -p brazil_grocery < brazil_grocery_items.sql
```

### 2. Configure Connection

Edit `dbconfig.php` with your MySQL credentials:
```php
define('DB_HOST', 'localhost');
define('DB_NAME', 'brazil_grocery');
define('DB_USER', 'your_username');
define('DB_PASS', 'your_password');
```

### 3. Run in Browser

Place in XAMPP/htdocs or your web server root, then visit:
- `http://localhost/Pabilando_PHP/` - Main page with all demos
- `http://localhost/Pabilando_PHP/display_table.php` - Interactive data grid

## 📸 Demo Pages

| Page | Description |
|------|-------------|
| `fetch_all.php` | `fetchAll()` with `print_r()` in `<pre>` tags |
| `fetch.php` | `fetch()` loop with `print_r()` in `<pre>` tags |
| `insert.php` | INSERT with prepared statements |
| `delete.php` | DELETE with prepared statements |
| `update.php` | UPDATE with before/after comparison |
| `display_table.php` | Full HTML table with filters, sorting, search |

## 🔧 Features

- **Prepared Statements** - All queries use parameter binding (SQL injection safe)
- **Error Handling** - Try-catch blocks with meaningful error messages
- **UTF-8 Support** - Full unicode support for Portuguese characters
- **Dynamic Filtering** - Filter by category, brand, or search term
- **Column Sorting** - Click any column header to sort ASC/DESC
- **Low Stock Alerts** - Visual indicators for items with stock < 20
- **Organic Badge** - Highlights organic products
- **Debug SQL View** - Collapsible section showing generated query and parameters

## 📊 Sample Queries

```sql
-- All coffee products
SELECT * FROM grocery_items WHERE category = 'Café';

-- Organic products only
SELECT * FROM grocery_items WHERE is_organic = TRUE;

-- Low stock alert
SELECT * FROM grocery_items WHERE stock_quantity < 20;

-- Products from Minas Gerais
SELECT * FROM grocery_items WHERE origin_state = 'Minas Gerais';

-- Price range
SELECT * FROM grocery_items WHERE price_brl BETWEEN 10 AND 50;
```

## 📝 License

Educational project for demonstrating PHP PDO CRUD operations with MySQL.