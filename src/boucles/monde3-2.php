<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 3-2 - Les boucles !!!!</title>
</head>
<body>
    <?php
    echo '<ol>';
    $joursFévrier = 1;
    while ($joursFévrier <= 14) {
        if ($joursFévrier == 14) {
            echo '<li>février : St valentin</li><br>';
        } else {
            echo '<li>février<br></li>';
        }
        $joursFévrier++;
    }
    echo '</ol>';
    ?>
</body>
</html>