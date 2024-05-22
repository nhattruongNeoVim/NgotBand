<?php
// Kết nối đến cơ sở dữ liệu
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ngot_database";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

$sql = "SELECT id_product, name_product, price, img_product, img_product2 FROM catolog";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngọt - Merch</title>
    <link rel="stylesheet" href="./assets/css/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link rel="icon" type="image/x-icon" href="./assets/img/logo/web.png">

</head>

<body>
    <div class="wrap-container">

        <div class="main">
            <header class="header__nav">
                <ul class="header__nav-list">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="intro.html">Introduce</a></li>
                    <li><a href="login.php">Music</a></li>
                </ul>

                <div class="header__nav-logo">
                    <a href="index.html"><img src="./assets/img/logo/logo.png" alt="" class="header__nav-img"></a>
                </div>

                <div class="header__nav-section">
                    <div class="header__nav-cart">
                        <a href="" class="header__nav-cart-link">
                            <span class="header__nav-cart-count">0</span>
                            <i class="header__nav-cart-icon fa-solid fa-cart-shopping"></i>
                        </a>
                    </div>
                    <div class="header__nav-login">
                        <a href="login.php" class="header__nav-login-link">
                            <i class="header__nav-login-icon fa-regular fa-user"></i>
                        </a>
                    </div>
                </div>

            </header>

            <div class="wrapper__change-produst">
                <ul class="button__change-produst-list">
                    <li><a class="button__change-produst-item" href="cart.php">Merch</a></li>
                    <li><a class="button__change-produst-item" href="cart_cd.php">CD</a></li>
                    <li><a class="button__change-produst-item" href="cart_digital.php">Digtal</a></li>
                </ul>

                <!-- <div class="manager__product-list">
                     <div class="manager__product-item">
                         
                     </div>
                 </div> -->

                <!-- sản phẩm -->
                <ul class="manager__products">
                    <?php
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                    ?>
                            <li>
                                <div class="manager__product-item">
                                    <a href="products.html" class="manager__product-thump">
                                        <div class="manager__product-img-container">
                                            <img src="./assets/img/shop_merch/<?php echo $row['img_product']; ?>" alt="" class="manager__product-img">
                                            <img src="./assets/img/shop_merch/<?php echo $row['img_product2']; ?>" alt="" class="manager__product-img manager__product-img-change">
                                        </div>
                                    </a>
                                </div>
                                <div class="manager__product-info">
                                    <a href="products.html" class="manager__product-name" style="font-weight: bold; font-size: 18px;">
                                        <?php echo $row['name_product']; ?>
                                    </a>
                                    <p class="manager__product-price">
                                        <?php echo $row['price']; ?>.000VND
                                    </p>
                                </div>
                            </li>
                    <?php
                        }
                    } else {
                        echo "Không có sản phẩm nào";
                    }
                    ?>
                </ul>

                <?php
                $conn->close();
                ?>

                <footer>
                    <div class="main-footer">
                        <div class="footer-content">
                            <div class="footer-content-left">
                                <p>
                                    HKD Uglyborn <br>
                                    GPKD số 01D8051722 cấp ngày 12/10/2023 <br>
                                    tại UBND quận Hai Bà Trưng <br>
                                    Địa chỉ: 328 phố Bà Triệu,
                                    phường Lê Đại Hành, <br>
                                    Email: bannhacngot@gmail.com <br>
                                    Hotline: 0384 581 995
                                    <br>
                                </p>
                                <div class="logo-footer">
                                    <a href="http://online.gov.vn/Home/WebDetails/110866">
                                        <img src="//theme.hstatic.net/200000777655/1001125616/14/logo_bct.png?v=221" alt="footer-logo">
                                    </a>
                                </div>
                                <ul class="footer-social">
                                    <li><a href="https://www.facebook.com/bannhacngot"><i class="fa-brands fa-facebook-f"></i></a></li>
                                    <li><a href="https://www.instagram.com/bannhac.ngot"><i class="fa-brands fa-instagram"></i></i></a></li>
                                    <li><a href="https://www.youtube.com/@Ngotband"><i class="fa-brands fa-youtube"></i></i></i></a></li>
                                </ul>
                            </div>
                            <div class="footer-content-right">
                                <ul>
                                    <li><a href="https://bannhacngot.com/pages/about-us">Hướng dẫn mua hàng</a></li>
                                    <li><a href="https://bannhacngot.com/pages/chinh-sach-doi-tra">Hình thức thanh toán</a></li>
                                    <li><a href="https://bannhacngot.com/pages/chinh-sach-bao-mat">Chính sách giao hàng</a></li>
                                    <li><a href="https://bannhacngot.com/pages/dieu-khoan-dich-vu">Chính sách bảo hành - đổi trả</a></li>
                                    <li><a href="https://bannhacngot.com/pages/chinh-sach-bao-mat-thong-tin">Chính sách bảo mật thông tin</a></li>
                                    <li><a href="https://bannhacngot.com/pages/chinh-sach-kiem-hang">Chính sách kiểm hàng</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="copyright">
                        <p>Copyright © 2024 </p>
                        <a href="index.html">Ngọt</a>
                    </div>
                </footer>
            </div>

</body>

</html>