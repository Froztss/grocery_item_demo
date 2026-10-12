<?php
/**
 * Demonstrate fetch() with print_r() and <pre> tag
 * Fetches one record at a time from grocery_items table
 */

require_once 'dbconfig.php';

$pdo = getDbConnection();

if (!$pdo) {
    die("Database connection failed");
}

try {
    // Prepare and execute query
    $stmt = $pdo->query("SELECT * FROM grocery_items WHERE category = 'Café' ORDER BY item_id LIMIT 5");
    
    // Fetch one row at a time using fetch()
    echo "<h2>fetch() Results - Coffee Category (First 5)</h2>";
    echo "<pre>";
    
    $rowCount = 0;
    while ($row = $stmt->fetch()) {
        $rowCount++;
        echo "--- Row $rowCount ---\n";
        print_r($row);
        echo "\n";
    }
    
    echo "</pre>";
    echo "<p>Total rows fetched: $rowCount</p>";
    
} catch (PDOException $e) {
    echo "Query failed: " . $e->getMessage();
}

closeDbConnection($pdo);