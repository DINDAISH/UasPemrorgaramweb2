<?php
session_start();
// Periksa apakah pengguna sudah login atau belum
if (!isset($_SESSION['nim'])) {
    header('Location: login.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Klasemen UEFA 2024</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .menu {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .menu a {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .menu a:hover {
            background-color: #45a049;
        }
        .logout {
            text-align: right;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Dashboard - Klasemen UEFA 2024</h1>
            <h2>Per <?php echo date("d F Y H:i:s"); ?></h2>
            <h3>DINDA NUR ISHMA / 201011401432</h3>
        </div>
        
        <div class="menu">
            <a href="coba.php">Input Data Klasemen</a>
            <a href="view_data.php">Lihat Data Klasemen</a>
            <a href="export_pdf.php">Cetak Data Klasemen ke PDF</a>
        </div>
        
        <div class="logout">
            <form action="logout.php">
                <input type="submit" value="Logout">
            </form>
        </div>
    </div>
</body>
</html>
