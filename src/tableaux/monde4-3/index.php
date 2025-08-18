<?php
require_once 'assets/products.php';
// var_dump($products);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 4-3 - Les tableaux !!!!</title>

    <!-- Lien vers Bootstrap -->
    <link rel="stylesheet" href="../../node_modules/bootstrap/dist/css/bootstrap.min.css" />

    <!-- Lien vers Materialize -->
    <!-- <link rel="stylesheet" href="../../node_modules/materialize-css/dist/css/materialize.min.css" /> -->

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Pour les icones Materialize -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Lien vers les icônes Bootstrap -->
    <link rel="stylesheet" href="../../node_modules/bootstrap-icons/font/bootstrap-icons.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="text-center">
        <h1>Magasin d'informatique</h1>
        <h2>Vous trouverez des composants spécial Geek pour votre PC Légendaire !!!!</h2>
    </div>
    <div class="text-center">
        <div class="container">
            <?php for ($i = 0; $i < count($products); $i++) { ?>
                <div class="card">
                    <p><b><?= $products[$i]['categorie'] ?></b></p>
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="<?= $products[$i][
                            'image'
                        ] ?>">
                    </div>
                    <div class="card-content">
                        <b><p class="grey-text text-darken-4"><?= $products[$i][
                            'nom'
                        ] ?></p></b>
                        <br>
                        <br>
                        <p class="left"><b>Prix : </b><?= $money =
                            $products[$i]['prix'] ?> €</p>
                        <br>
                        <br>
                        <p class="left"><a href="#">Faux lien</a></p>
                        <br>
                        <i class="activator material-icons right">more_vert</i>
                    </div>
                    <div class="card-reveal">
                        <p><i class="card-title material-icons right">close</i></p>
                        <br>
                        <br>
                        <span class="grey-text text-darken-4 fs-5"><?= $products[
                            $i
                        ]['nom'] ?></span>
                        <br>
                        <br>
                        <p><?= $products[$i]['description'] ?></p>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

    <!-- Lien pour utiliser JavaScript pour les actions de l'utilisateur pour Bootstrap -->
    <script src="../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
    
    <!-- <script src="../../node_modules/materialize-css/dist/js/materialize.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script> -->

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>