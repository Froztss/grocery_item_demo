<?php
/**
 * Demonstrate rendering SQL query result set on an HTML table
 * Displays grocery items with filtering and sorting options
 */

require_once 'dbconfig.php';

$pdo = getDbConnection();

if (!$pdo) {
    die("Database connection failed");
}

// Handle filter parameters
$categoryFilter = isset($_GET['category']) ? $_GET['category'] : '';
$brandFilter = isset($_GET['brand']) ? $_GET['brand'] : '';
$searchTerm = isset($_GET['search']) ? $_GET['search'] : '';
$sortBy = isset($_GET['sort']) ? $_GET['sort'] : 'item_id';
$sortOrder = isset($_GET['order']) && $_GET['order'] === 'desc' ? 'DESC' : 'ASC';

// Validate sort column to prevent SQL injection
$allowedSortColumns = ['item_id', 'item_name', 'brand_name', 'category', 'price_brl', 'stock_quantity', 'origin_state'];
if (!in_array($sortBy, $allowedSortColumns)) {
    $sortBy = 'item_id';
}

// Build dynamic query
$whereConditions = [];
$params = [];

if ($categoryFilter) {
    $whereConditions[] = "category = ?";
    $params[] = $categoryFilter;
}

if ($brandFilter) {
    $whereConditions[] = "brand_name = ?";
    $params[] = $brandFilter;
}

if ($searchTerm) {
    $whereConditions[] = "(item_name LIKE ? OR brand_name LIKE ?)";
    $params[] = "%$searchTerm%";
    $params[] = "%$searchTerm%";
}

$whereClause = '';
if (!empty($whereConditions)) {
    $whereClause = 'WHERE ' . implode(' AND ', $whereConditions);
}

// Get unique categories and brands for filter dropdowns
$categories = $pdo->query("SELECT DISTINCT category FROM grocery_items ORDER BY category")->fetchAll(PDO::FETCH_COLUMN);
$brands = $pdo->query("SELECT DISTINCT brand_name FROM grocery_items ORDER BY brand_name")->fetchAll(PDO::FETCH_COLUMN);

// Main query with filters and sorting
$sql = "SELECT * FROM grocery_items $whereClause ORDER BY $sortBy $sortOrder";
$stmt = $pdo->prepare($sql);
$stmt->execute($params);
$results = $stmt->fetchAll();

// Count total records
$totalRecords = count($results);

closeDbConnection($pdo);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Brazil Grocery Items Table</title>
</head>
<body>
    <h1>Brazil Grocery Items</h1>
    
    <form method="GET" action="">
        <label>Search: <input type="text" name="search" value="<?= htmlspecialchars($searchTerm) ?>" placeholder="Item or brand name..."></label>
        <label>Category: 
            <select name="category">
                <option value="">All Categories</option>
                <?php foreach ($categories as $cat): ?>
                    <option value="<?= htmlspecialchars($cat) ?>" <?= $categoryFilter === $cat ? 'selected' : '' ?>><?= htmlspecialchars($cat) ?></option>
                <?php endforeach; ?>
            </select>
        </label>
        <label>Brand: 
            <select name="brand">
                <option value="">All Brands</option>
                <?php foreach ($brands as $brand): ?>
                    <option value="<?= htmlspecialchars($brand) ?>" <?= $brandFilter === $brand ? 'selected' : '' ?>><?= htmlspecialchars($brand) ?></option>
                <?php endforeach; ?>
            </select>
        </label>
        <button type="submit">Filter</button>
        <a href="display_table.php">Reset</a>
    </form>
    
    <p><strong>Total Records:</strong> <?= $totalRecords ?></p>
    
    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
            <tr>
                <th><a href="?sort=item_id&order=<?= $sortBy === 'item_id' && $sortOrder === 'ASC' ? 'desc' : 'asc' ?>&category=<?= urlencode($categoryFilter) ?>&brand=<?= urlencode($brandFilter) ?>&search=<?= urlencode($searchTerm) ?>">ID</a></th>
                <th><a href="?sort=item_name&order=<?= $sortBy === 'item_name' && $sortOrder === 'ASC' ? 'desc' : 'asc' ?>&category=<?= urlencode($categoryFilter) ?>&brand=<?= urlencode($brandFilter) ?>&search=<?= urlencode($searchTerm) ?>">Item Name</a></th>
                <th><a href="?sort=brand_name&order=<?= $sortBy === 'brand_name' && $sortOrder === 'ASC' ? 'desc' : 'asc' ?>&category=<?= urlencode($categoryFilter) ?>&brand=<?= urlencode($brandFilter) ?>&search=<?= urlencode($searchTerm) ?>">Brand</a></th>
                <th>Category</th>
                <th><a href="?sort=price_brl&order=<?= $sortBy === 'price_brl' && $sortOrder === 'ASC' ? 'desc' : 'asc' ?>&category=<?= urlencode($categoryFilter) ?>&brand=<?= urlencode($brandFilter) ?>&search=<?= urlencode($searchTerm) ?>">Price (BRL)</a></th>
                <th>Unit</th>
                <th><a href="?sort=stock_quantity&order=<?= $sortBy === 'stock_quantity' && $sortOrder === 'ASC' ? 'desc' : 'asc' ?>&category=<?= urlencode($categoryFilter) ?>&brand=<?= urlencode($brandFilter) ?>&search=<?= urlencode($searchTerm) ?>">Stock</a></th>
                <th>Expiration</th>
                <th><a href="?sort=origin_state&order=<?= $sortBy === 'origin_state' && $sortOrder === 'ASC' ? 'desc' : 'asc' ?>&category=<?= urlencode($categoryFilter) ?>&brand=<?= urlencode($brandFilter) ?>&search=<?= urlencode($searchTerm) ?>">Origin State</a></th>
                <th>Organic</th>
                <th>Barcode</th>
                <th>Supplier</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($results as $row): ?>
                <tr>
                    <td><?= $row['item_id'] ?></td>
                    <td><?= htmlspecialchars($row['item_name']) ?></td>
                    <td><?= htmlspecialchars($row['brand_name']) ?></td>
                    <td><?= htmlspecialchars($row['category']) ?></td>
                    <td><?= number_format($row['price_brl'], 2, ',', '.') ?></td>
                    <td><?= htmlspecialchars($row['unit_of_measure']) ?></td>
                    <td><?= $row['stock_quantity'] ?></td>
                    <td><?= $row['expiration_date'] ?></td>
                    <td><?= htmlspecialchars($row['origin_state']) ?></td>
                    <td><?= $row['is_organic'] ? 'Yes' : 'No' ?></td>
                    <td><?= htmlspecialchars($row['barcode']) ?></td>
                    <td><?= htmlspecialchars($row['supplier_name']) ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>