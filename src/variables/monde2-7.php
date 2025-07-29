<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 2-6 - Les conditions !!!!</title>
</head>
<body>
    <?php
    $show = true;
    if ($show) {
        echo '
    <div class="container">
        <div class="bloc">
            <p>Chuis un bloc visible !!!!</p>
        </div>
    </div>
    ';
    } else {
        echo '
        <div class="container">
            <p>Chuis un bloc caché !!!!</p>
        </div>
        ';
    }
    ?>
</body>
</html>