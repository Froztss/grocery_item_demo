<?php
/**
 * Demonstrate DELETE record from grocery_items table
 * Uses prepared statements for security
 */

require_once 'dbconfig.php';

$pdo = getDbConnection();

if (!$pdo) {
    die("Database connection failed");
}

try {
    // ID of record to delete (use a test ID)
    $itemIdToDelete = 200; // This would be the ID from the insert example
    
    // First, check if record exists
    $checkStmt = $pdo->prepare("SELECT * FROM grocery_items WHERE item_id = ?");
    $checkStmt->execute([$itemIdToDelete]);
    $existingRecord = $checkStmt->fetch();
    
    if (!$existingRecord) {
        echo "<h2>Record Not Found</h2>";
        echo "<p>No record found with ID: $itemIdToDelete</p>";
        closeDbConnection($pdo);
        exit;
    }
    
    // Display record before deletion
    echo "<h2>Record to be Deleted</h2>";
    echo "<pre>";
    print_r($existingRecord);
    echo "</pre>";
    
    // Prepared statement for DELETE
    $sql = "DELETE FROM grocery_items WHERE item_id = ?";
    $stmt = $pdo->prepare($sql);
    
    // Execute with parameter
    $result = $stmt->execute([$itemIdToDelete]);
    
    if ($result && $stmt->rowCount() > 0) {
        echo "<h2>Delete Successful!</h2>";
        echo "<p>Record with ID $itemIdToDelete has been deleted.</p>";
        echo "<p>Rows affected: " . $stmt->rowCount() . "</p>";
    } else {
        echo "<h2>Delete Failed</h2>";
        echo "<p>No record was deleted.</p>";
    }
    
} catch (PDOException $e) {
    echo "Delete failed: " . $e->getMessage();
}

closeDbConnection($pdo);