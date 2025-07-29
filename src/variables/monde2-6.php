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
    <input type="checkbox" id="dark_mode" name="dark_mode">
    <label for="dark_mode">dark mode</label>
    <div id="myElement">
        <p>Hello World !!!!</p>
    </div>
    <?php $dark_mode = true;
// if ($dark_mode) {
//     echo '
//     <style>
//         body {
//             background-color: red;
//         }
//     </style>
//     ';
// }

// if ($dark_mode) {
//     echo '
//     <input class="light" type="checkbox" id="dark_mode" name="dark_mode">
//     <label class="light" for="dark_mode">dark mode</label>
//     <div id="myElement">
//         <p class="light">Hello World !!!!</p>
//     </div>
//     ';
// } else {
//     echo '
//     <input class="dark" type="checkbox" id="dark_mode" name="dark_mode">
//     <label class="dark" for="dark_mode">dark mode</label>
//     <div id="myElement">
//         <p class="dark">Hello World !!!!</p>
//     </div>
//     ';
// }
?>
</body>
</html>