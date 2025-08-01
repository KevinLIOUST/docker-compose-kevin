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
    <link rel="stylesheet" href="../../node_modules/materialize-css/dist/css/materialize.min.css" />

    <!-- Lien vers les icônes Bootstrap -->
    <link rel="stylesheet" href="../../node_modules/bootstrap-icons/font/bootstrap-icons.min.css">

    <!-- Lien pour utiliser JavaScript pour les actions de l'utilisateur pour Bootstrap -->
    <script src="../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="text-center">
        <h1>Magasin d'informatique</h1>
        <h2>Vous trouverez des composants spécial Geek pour votre PC !!!!</h2>
    </div>
    <div class="text-center">
        <div class="container">
            <?php $i = 0;?>
            <?php foreach ($products as $key => $value) { ?>
                <div class="card">
                    <div>
                        <p><?= $products[$i]['categorie'] ?></p>
                    </div>
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="<?= $products[$i]['image'] ?>">
                    </div>
                    <div class="card-content">
                        <span class="activator grey-text text-darken-4"><?= $products[$i]['nom'] ?><i class="material bi bi-three-dots-vertical"></i></span>
                        <p>Prix : <?= $money = $products[$i]['prix']; ?></p>
                        <p><a href="#">Faux lien</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="grey-text text-darken-4"><?= $products[$i]['nom'] ?><i class="material-icons right">close</i></span>
                        <p><?= $products[$i]['description'] ?></p>
                    </div>
                </div>
                <?php $i++ ?>
            <?php } ?>
        </div>
    </div>
</body>
</html>