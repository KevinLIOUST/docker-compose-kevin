<?php $dark_mode = true; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 2-6 - Les conditions !!!!</title>
    <style>
        .dark {
            color: white;
            background-color: black;
            border: 1px solid black;
        }

        .light {
            color: black;
            background-color: light-grey;
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <input type="checkbox" id="dark_mode" name="dark_mode" <?= $dark_mode
        ? 'checked'
        : '' ?>>
    <label for="dark_mode">dark mode</label>
    <div id="myElement" class="<?= $dark_mode ? 'dark' : 'light' ?>">
        <p>Hello World !!!!</p>
    </div>
</body>
</html>