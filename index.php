<?php
/**
 * Main entry point - Brazil Grocery Items Database Demo
 * Links to all demonstration pages
 */
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brazil Grocery Items - PHP Database Demo</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 0; padding: 40px 20px; background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%); min-height: 100vh; }
        .container { max-width: 800px; margin: 0 auto; }
        .card { background: white; border-radius: 12px; padding: 30px; box-shadow: 0 10px 30px rgba(0,0,0,0.2); margin-bottom: 20px; }
        h1 { color: white; text-align: center; margin-bottom: 10px; text-shadow: 2px 2px 4px rgba(0,0,0,0.3); }
        .subtitle { text-align: center; color: rgba(255,255,255,0.8); margin-bottom: 40px; }
        .card h2 { color: #2c3e50; margin-top: 0; border-bottom: 2px solid #27ae60; padding-bottom: 10px; }
        .btn { display: inline-block; padding: 12px 24px; background: #27ae60; color: white; text-decoration: none; border-radius: 6px; font-weight: 600; transition: all 0.3s; margin: 5px; }
        .btn:hover { background: #219653; transform: translateY(-2px); box-shadow: 0 4px 12px rgba(39, 174, 96, 0.4); }
        .btn-secondary { background: #3498db; }
        .btn-secondary:hover { background: #2980b9; box-shadow: 0 4px 12px rgba(52, 152, 219, 0.4); }
        .btn-danger { background: #e74c3c; }
        .btn-danger:hover { background: #c0392b; box-shadow: 0 4px 12px rgba(231, 76, 60, 0.4); }
        .btn-warning { background: #f39c12; }
        .btn-warning:hover { background: #d68910; box-shadow: 0 4px 12px rgba(243, 156, 18, 0.4); }
        .btn-info { background: #9b59b6; }
        .btn-info:hover { background: #8e44ad; box-shadow: 0 4px 12px rgba(155, 89, 182, 0.4); }
        .description { color: #7f8c8d; margin-bottom: 15px; line-height: 1.6; }
        .badges { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 15px; }
        .badge { background: #ecf0f1; color: #2c3e50; padding: 4px 12px; border-radius: 20px; font-size: 12px; font-weight: 600; }
        .badge-primary { background: #27ae60; color: white; }
        .footer { text-align: center; color: rgba(255,255,255,0.6); margin-top: 40px; font-size: 14px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🇧🇷 Brazil Grocery Items Database</h1>
        <p class="subtitle">PHP + MySQL CRUD Operations with Authentic Brazilian Brands</p>
        
        <!-- Database Config -->
        <div class="card">
            <h2>📁 4. Database Configuration (dbconfig.php)</h2>
            <p class="description">PDO-based database connection with prepared statements support, error handling, and UTF-8 charset configuration.</p>
            <a href="dbconfig.php" class="btn" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">PDO</span>
                <span class="badge">Prepared Statements</span>
                <span class="badge">Error Handling</span>
                <span class="badge">UTF-8</span>
            </div>
        </div>
        
        <!-- fetchAll() Demo -->
        <div class="card">
            <h2>📋 5. fetchAll() Demo (fetch_all.php)</h2>
            <p class="description">Fetches ALL records at once using PDO::fetchAll() and displays with print_r() inside <pre> tags for formatted output.</p>
            <a href="fetch_all.php" class="btn" target="_blank">Run Demo</a>
            <a href="fetch_all.php" class="btn btn-secondary" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">fetchAll()</span>
                <span class="badge">print_r()</span>
                <span class="badge"><pre> tags</span>
            </div>
        </div>
        
        <!-- fetch() Demo -->
        <div class="card">
            <h2>📄 6. fetch() Demo (fetch.php)</h2>
            <p class="description">Iterates through result set ONE ROW AT A TIME using PDO::fetch() in a while loop, displaying each row with print_r().</p>
            <a href="fetch.php" class="btn" target="_blank">Run Demo</a>
            <a href="fetch.php" class="btn btn-secondary" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">fetch()</span>
                <span class="badge">while loop</span>
                <span class="badge">print_r()</span>
            </div>
        </div>
        
        <!-- INSERT Demo -->
        <div class="card">
            <h2>➕ 7. INSERT Record (insert.php)</h2>
            <p class="description">Inserts a new Brazilian grocery item (Pão de Queijo Forno de Minas) using prepared statements with bound parameters for security.</p>
            <a href="insert.php" class="btn" target="_blank">Run Demo</a>
            <a href="insert.php" class="btn btn-secondary" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">INSERT</span>
                <span class="badge">Prepared Stmt</span>
                <span class="badge">lastInsertId()</span>
            </div>
        </div>
        
        <!-- DELETE Demo -->
        <div class="card">
            <h2>🗑️ 8. DELETE Record (delete.php)</h2>
            <p class="description">Deletes a record by ID using prepared statements. First checks if record exists, displays it, then performs deletion.</p>
            <a href="delete.php" class="btn btn-danger" target="_blank">Run Demo</a>
            <a href="delete.php" class="btn btn-secondary" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">DELETE</span>
                <span class="badge">Prepared Stmt</span>
                <span class="badge">rowCount()</span>
            </div>
        </div>
        
        <!-- UPDATE Demo -->
        <div class="card">
            <h2>✏️ 9. UPDATE Record (update.php)</h2>
            <p class="description">Updates price, stock, and expiration date of a record. Shows before/after comparison with changed fields highlighted.</p>
            <a href="update.php" class="btn btn-warning" target="_blank">Run Demo</a>
            <a href="update.php" class="btn btn-secondary" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">UPDATE</span>
                <span class="badge">Prepared Stmt</span>
                <span class="badge">Before/After</span>
            </div>
        </div>
        
        <!-- HTML Table Demo -->
        <div class="card">
            <h2>📊 10. HTML Table Render (display_table.php)</h2>
            <p class="description">Full-featured data grid with filtering (category, brand, search), sortable columns, pagination-ready, low-stock alerts, and debug SQL view.</p>
            <a href="display_table.php" class="btn btn-info" target="_blank">Run Demo</a>
            <a href="display_table.php" class="btn btn-secondary" target="_blank">View Source</a>
            <div class="badges">
                <span class="badge badge-primary">HTML Table</span>
                <span class="badge">Filter/Sort</span>
                <span class="badge">Search</span>
                <span class="badge">Debug SQL</span>
            </div>
        </div>
        
        <div class="footer">
            <p>Database: brazil_grocery | Table: grocery_items | 12 columns | 100+ records | 15+ Brazilian Brands</p>
            <p>Brands: Pilão, Yoki, Bauducco, Guaraná Antarctica, Sadia, Perdigão, Camil, 3 Corações, Brahma, Skol, Itambacuri, Cachaça 51, Vigor, Nestlé, Neve, União, Friboi, Forno de Minas, Copal, Rubicão, Agrestina, Gavi, Colorado, Baden, Miolo</p>
        </div>
    </div>
</body>
</html>