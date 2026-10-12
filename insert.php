<?php
/**
 * Demonstrate INSERT record into grocery_items table
 * Uses prepared statements for security
 */

require_once 'dbconfig.php';

$pdo = getDbConnection();

if (!$pdo) {
    die("Database connection failed");
}

try {
    // Data for new grocery item (Brazilian brand)
    $itemName = 'Pão de Queijo Forno de Minas';
    $brandName = 'Forno de Minas';
    $category = 'Congelados';
    $priceBrl = 24.90;
    $unitOfMeasure = '400g';
    $stockQuantity = 50;
    $expirationDate = '2025-12-31';
    $originState = 'Minas Gerais';
    $isOrganic = false;
    $barcode = '789888800003';
    $supplierName = 'Forno de Minas Alimentos Ltda';
    
    // Prepared statement for INSERT
    $sql = "INSERT INTO grocery_items 
            (item_name, brand_name, category, price_brl, unit_of_measure, 
             stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) 
            VALUES 
            (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $pdo->prepare($sql);
    
    // Execute with parameters
    $result = $stmt->execute([
        $itemName, $brandName, $category, $priceBrl, $unitOfMeasure,
        $stockQuantity, $expirationDate, $originState, $isOrganic, $barcode, $supplierName
    ]);
    
    if ($result) {
        $newId = $pdo->lastInsertId();
        echo "<h2>Insert Successful!</h2>";
        echo "<p>New record inserted with ID: $newId</p>";
        echo "<pre>";
        print_r([
            'item_id' => $newId,
            'item_name' => $itemName,
            'brand_name' => $brandName,
            'category' => $category,
            'price_brl' => $priceBrl,
            'unit_of_measure' => $unitOfMeasure,
            'stock_quantity' => $stockQuantity,
            'expiration_date' => $expirationDate,
            'origin_state' => $originState,
            'is_organic' => $isOrganic,
            'barcode' => $barcode,
            'supplier_name' => $supplierName
        ]);
        echo "</pre>";
    } else {
        echo "Insert failed";
    }
    
} catch (PDOException $e) {
    echo "Insert failed: " . $e->getMessage();
}

closeDbConnection($pdo);