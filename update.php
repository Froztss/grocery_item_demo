<?php
/**
 * Demonstrate UPDATE record in grocery_items table
 * Uses prepared statements for security
 */

require_once 'dbconfig.php';

$pdo = getDbConnection();

if (!$pdo) {
    die("Database connection failed");
}

try {
    // ID of record to update
    $itemIdToUpdate = 1; // First record: Café Pilão Moido Torrado
    
    // First, fetch current record
    $checkStmt = $pdo->prepare("SELECT * FROM grocery_items WHERE item_id = ?");
    $checkStmt->execute([$itemIdToUpdate]);
    $currentRecord = $checkStmt->fetch();
    
    if (!$currentRecord) {
        echo "<h2>Record Not Found</h2>";
        echo "<p>No record found with ID: $itemIdToUpdate</p>";
        closeDbConnection($pdo);
        exit;
    }
    
    // Display record before update
    echo "<h2>Record Before Update</h2>";
    echo "<pre>";
    print_r($currentRecord);
    echo "</pre>";
    
    // New values for update
    $newPrice = 25.90;      // Price increase
    $newStock = 200;        // Restocked
    $newExpiration = '2025-12-31'; // Extended expiration
    
    // Prepared statement for UPDATE
    $sql = "UPDATE grocery_items 
            SET price_brl = ?, stock_quantity = ?, expiration_date = ? 
            WHERE item_id = ?";
    
    $stmt = $pdo->prepare($sql);
    
    // Execute with parameters
    $result = $stmt->execute([$newPrice, $newStock, $newExpiration, $itemIdToUpdate]);
    
    if ($result && $stmt->rowCount() > 0) {
        // Fetch updated record
        $updatedStmt = $pdo->prepare("SELECT * FROM grocery_items WHERE item_id = ?");
        $updatedStmt->execute([$itemIdToUpdate]);
        $updatedRecord = $updatedStmt->fetch();
        
        echo "<h2>Update Successful!</h2>";
        echo "<p>Record with ID $itemIdToUpdate has been updated.</p>";
        echo "<p>Rows affected: " . $stmt->rowCount() . "</p>";
        
        // Display record after update
        echo "<h2>Record After Update</h2>";
        echo "<pre>";
        print_r($updatedRecord);
        echo "</pre>";
        
        // Show what changed
        echo "<h3>Changes Made:</h3>";
        echo "<ul>";
        echo "<li>Price: {$currentRecord['price_brl']} → {$updatedRecord['price_brl']}</li>";
        echo "<li>Stock: {$currentRecord['stock_quantity']} → {$updatedRecord['stock_quantity']}</li>";
        echo "<li>Expiration: {$currentRecord['expiration_date']} → {$updatedRecord['expiration_date']}</li>";
        echo "</ul>";
    } else {
        echo "<h2>Update Failed</h2>";
        echo "<p>No record was updated.</p>";
    }
    
} catch (PDOException $e) {
    echo "Update failed: " . $e->getMessage();
}

closeDbConnection($pdo);