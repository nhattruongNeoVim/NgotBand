<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ngot_database";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_bill = uniqid();
    $name = $conn->real_escape_string($_POST['name']);
    $phone = $conn->real_escape_string($_POST['phone']);
    $mail = $conn->real_escape_string($_POST['email']);
    $address = $conn->real_escape_string($_POST['address']);
    $province = $conn->real_escape_string($_POST['province']);
    $district = $conn->real_escape_string($_POST['district']);
    $ward = $conn->real_escape_string($_POST['ward']);
    $id_product = "example_product_id";
    $name_product = "Example Product";
    $price = 435000;
    $sl_add = 1;
    $delivery_option = $_POST['delivery_option'];
    if ($delivery_option == 'home') {
        $payment = "Giao tận nơi";
        $ship = 35000;
    } else {
        $payment = "Nhận tại cửa hàng";
        $address = null;
        $province = null;
        $district = null;
        $ward = null;
        $ship = 0;
    }
    $amount = $price * $sl_add + $ship;
    $created = date("Y-m-d");
    $username = "example_user";

    $sql = "INSERT INTO information (id_bill, name, phone, mail, address, province, district, ward, id_product, name_product, price, sl_add, ship, amount, payment, created, username)
    VALUES ('$id_bill', '$name', '$phone', '$mail', '$address', '$province', '$district', '$ward', '$id_product', '$name_product', '$price', '$sl_add', '$ship', '$amount', '$payment', '$created', '$username')";

    $sql1 = "INSERT INTO bill (id_bill, name, created)
    VALUES ('$id_bill', '$name', '$created')";

    if ($conn->query($sql) === TRUE && $conn->query($sql1) === TRUE) {
        header("Location: succesful.php");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
    <link rel="stylesheet" href="./assets/css/payment.css">
</head>

<body>

    <div class="checkout-container">
        <div class="left-column">
            <h1>Thông tin giao hàng</h1>
            <p>Bạn đã có tài khoản? <a href="#">Đăng nhập</a></p>
            <form id="checkout-form" action="#" method="post">
                <label for="name">Họ và tên:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Số điện thoại:</label>
                <input type="text" id="phone" name="phone" required>

                <div class="delivery-option">
                    <input type="radio" id="delivery" name="delivery_option" value="home" checked>
                    <label for="delivery">Giao tận nơi</label>
                    <input type="radio" id="store-pickup" name="delivery_option" value="store">
                    <label for="store-pickup">Nhận tại cửa hàng</label>
                </div>

                <div class="address-fields">
                    <label for="address">Địa chỉ:</label>
                    <input type="text" id="address" name="address">

                    <div>
                        <select class="form-select form-select-sm mb-3" id="province" name="province" aria-label=".form-select-sm">
                            <option value="" selected>Chọn tỉnh thành</option>
                        </select>

                        <select class="form-select form-select-sm mb-3" id="district" name="district" aria-label=".form-select-sm">
                            <option value="" selected>Chọn quận huyện</option>
                        </select>

                        <select class="form-select form-select-sm" id="ward" name="ward" aria-label=".form-select-sm">
                            <option value="" selected>Chọn phường xã</option>
                        </select>
                    </div>
                </div>

                <div class="store-address" style="display: none;">
                    <h3>Địa chỉ cửa hàng:</h3>
                    <p>170 An Dương Vương, Nguyễn Văn Cừ, Quy Nhơn, Bình Định</p>
                </div>

                <button type="submit"><span>Tiếp tục đến phương thức thanh toán</span></button>
            </form>
        </div>
        <div class="right-column">
            <h2>Giỏ hàng</h2>
            <div class="cart-item">
                <img src="item1.jpg" alt="Item 1">
                <p>KEO CRACKED LOGO TEE - BLACK</p>
                <span>435,000VND</span>
            </div>
            <div class="cart-item">
                <img src="item2.jpg" alt="Item 2">
                <p>KEO CRACKED LOGO TEE - WHITE</p>
                <span>435,000VND</span>
            </div>
            <label for="promo-code">Mã giảm giá:</label>
            <input type="text" id="promo-code" name="promo-code">
            <button type="button" onclick="applyPromoCode()"><span>Sử dụng</span></button>
            <p>Tạm tính: 870,000VND</p>
            <p>Phí vận chuyển: </p>
            <h3>Tổng cộng: 870,000VND</h3>
        </div>
    </div>
    <script>
        function applyPromoCode() {
            const promoCode = document.getElementById('promo-code').value;
            alert('Đã áp dụng mã giảm giá ' + promoCode + ' thành công!');
        }

        const deliveryOption = document.getElementsByName('delivery_option');
        const addressFields = document.querySelector('.address-fields');
        const storeAddress = document.querySelector('.store-address');

        deliveryOption.forEach(option => {
            option.addEventListener('change', function() {
                if (this.value === 'home') {
                    addressFields.style.display = 'block';
                    storeAddress.style.display = 'none';
                } else {
                    addressFields.style.display = 'none';
                    storeAddress.style.display = 'block';
                    document.getElementById('address').value = '';
                    document.getElementById('province').value = '';
                    document.getElementById('district').value = '';
                    document.getElementById('ward').value = '';
                }
            });
        });
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script>
        var province = document.getElementById("province");
        var district = document.getElementById("district");
        var ward = document.getElementById("ward");

        axios.get("https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json")
            .then(function(response) {
                var data = response.data;
                renderProvince(data);
            });

        function renderProvince(data) {
            for (const item of data) {
                province.options[province.options.length] = new Option(item.Name, item.Id);
            }
            province.onchange = function() {
                district.length = 1;
                ward.length = 1;
                if (this.value !== "") {
                    const result = data.filter(n => n.Id === this.value);
                    for (const item of result[0].Districts) {
                        district.options[district.options.length] = new Option(item.Name, item.Id);
                    }
                }
            };
            district.onchange = function() {
                ward.length = 1;
                const result = data.filter(n => n.Id === province.value);
                if (this.value !== "") {
                    const wardsData = result[0].Districts.filter(n => n.Id === this.value)[0].Wards;
                    for (const item of wardsData) {
                        ward.options[ward.options.length] = new Option(item.Name, item.Id);
                    }
                }
            };
        }
    </script>
</body>

</html>