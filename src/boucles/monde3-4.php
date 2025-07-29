<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 3-4 - Les boucles !!!!</title>

    <!-- Lien vers Bootstrap -->
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css" />

    <!-- Lien vers les icônes Bootstrap -->
    <!-- <link rel="stylesheet" href="node_modules/bootstrap-icons/font/bootstrap-icons.min.css"> -->

    <!-- Lien pour utiliser JavaScript pour les actions de l'utilisateur -->
    <script src="../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</head>
<body>
    <div class="bg-dark p-2">
        <div class="d-flex">
                <?php for ($i = 100; $i >= 0; $i -= 25) {
                    echo "<div class=\"bg-primary rounded-3 p-2 m-2 opacity-$i\">$i %</div>";
                } ?>
        </div>
    </div>
</body>
</html>