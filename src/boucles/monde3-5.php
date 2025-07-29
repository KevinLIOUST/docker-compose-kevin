    <?php
    $month = strtoupper('fevrier');
    $totalDays = 28;
    $specialDay = 14;
    $year = 2025;
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 3-5 - Les boucles !!!!</title>

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
    <div>
        <p class="text-danger m-3"><?php echo "$month $year"; ?></p>
    </div>
    <div class="container text-start">
        <div class="row">
            <div class="col">
                L
            </div>
            <div class="col">
                M
            </div>
            <div class="col">
                M
            </div>
            <div class="col">
                J
            </div>
            <div class="col">
                V
            </div>
            <div class="col">
                S
            </div>
            <div class="col">
                D
            </div>
        </div>
        <div class="row flex-wrap">
            <?php for ($i = 1; $i <= 7; $i++) {
                echo "
                <div class=\"col\">
                    $i
                </div>
                ";
            } ?>
        </div>
        <div class="row">
            <?php for ($i = 8; $i <= 14; $i++) {
                echo "
                <div class=\"col\">
                    $i
                </div>
                ";
            } ?>
        </div>
        <div class="row">
            <?php for ($i = 15; $i <= 21; $i++) {
                echo "
                <div class=\"col\">
                    $i
                </div>
                ";
            } ?>
        </div>
        <div class="row">
            <?php for ($i = 22; $i <= 28; $i++) {
                echo "
                <div class=\"col\">
                    $i
                </div>
                ";
            } ?>
        </div>
    </div>
</body>
</html>