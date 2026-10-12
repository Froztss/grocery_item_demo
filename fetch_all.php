<?php
/**
 * Demonstrate fetchAll() with print_r() and <pre> tag
 * Fetches all records from grocery_items table
 */

require_once 'dbconfig.php';

$pdo = getDbConnection();

if (!$pdo) {
    die("Database connection failed");
}

try {
    // Prepare and execute query
    $stmt = $pdo->query("SELECT * FROM grocery_items ORDER BY item_id");
    
    // Fetch all rows as associative array
    $results = $stmt->fetchAll();
    
    // Display results using print_r with <pre> tag for formatting
    echo "<h2>fetchAll() Results - All Grocery Items</h2>";
    echo "<pre>";
    print_r($results);
    echo "</pre>";
    
    echo "<p>Total records: " . count($results) . "</p>";
    
} catch (PDOException $e) {
    echo "Query failed: " . $e->getMessage();
}

closeDbConnection($pdo);