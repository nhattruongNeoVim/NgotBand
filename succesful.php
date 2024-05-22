<?php
    $name = "Lâm";
    $id_bill = "66474a804f072";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngọt - Thành công</title>
    <link rel="stylesheet" href="./assets/css/succesful.css">
    <link rel="icon" type="image/x-icon" href="./assets/img/logo/web.png">
</head>

<body>
    <div class="success-container">
        <h1>Ghi nhận thành công!</h1>
        <p>Cảm ơn <?php echo $name ?> đã đặt hàng. Đơn hàng của <?php echo $name ?> đã được xử lý thành công.</p>
        <p>Một email xác nhận đã được gửi đến địa chỉ email của <?php echo $name ?>.</p>
        <a href=""><button><span>Quay lại trang chủ</span></button></a>
    </div>

    <div class="qr">
        <img src="./assets/img/succesful/qr_code.png" alt="QR Code">
        <div class="payment-info">
            <p><strong>Nội dung chuyển khoản:</strong></p>
            <p></p>
            <p>Tên + Số điện thoại + <?php echo $id_bill ?></p>
        </div>
    </div>
</body>

</html>