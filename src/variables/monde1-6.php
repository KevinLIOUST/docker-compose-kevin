<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 1-6 - Les variables !!!!</title>

    <!-- Lien vers Bootstrap -->
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css" />

    <!-- Lien vers les icônes Bootstrap -->
    <link rel="stylesheet" href="node_modules/bootstrap-icons/font/bootstrap-icons.min.css">

    <!-- Lien pour utiliser JavaScript pour les actions de l'utilisateur -->
    <script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
     <link rel="stylesheet" href="node_modules/materialize-css/dist/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
     <script src="node_modules/materialize-css/dist/js/materialize.min.js"></script>
</head>
<body>
        <?php
        $titre = 'FairyTail';
        $description =
            'FairyTail est un jeu vidéo sortie sur PC, Switch, et PS4 !!!! :) :) :) :)';
        $lien = 'https://www.fairytailgame.com/fr/';
        $image =
            'https://www.fairytailgame.com/common/img/pre_standard_img01_eu.jpg';
        ?>

        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src=<?php echo $image; ?>>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4"><?php echo $titre; ?><i class="material-icons right">more_vert</i></span>
                        <p><a href=<?php echo $lien; ?>><?php echo $lien; ?></a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><?php echo $titre; ?><i class="material-icons right">close</i></span>
                        <p><?php echo $description; ?></p>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>