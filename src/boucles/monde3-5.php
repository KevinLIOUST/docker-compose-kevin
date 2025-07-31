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

        <link rel="stylesheet" href="cssGridCalendar.css">
</head>
<body>
    <div>
        <p class="text-danger text-center m-3"><?php echo "$month $year"; ?></p>
    </div>
    <div class="text-center">
        <br>
        <br>
        <div class="container">
            <div class="rounded-3 bg-success text-white mb-3">L</div>
            <div class="rounded-3 bg-success text-white mb-3">M</div>
            <div class="rounded-3 bg-success text-white mb-3">M</div>
            <div class="rounded-3 bg-success text-white mb-3">J</div>
            <div class="rounded-3 bg-success text-white mb-3">V</div>
            <div class="rounded-3 bg-success text-white mb-3">S</div>
            <div class="rounded-3 bg-success text-white mb-3">D</div>
            <?php for ($i = 1; $i <= $totalDays; $i++) { ?>
                    <?php if ($i == $specialDay) { ?>
                        <div class="rounded-3 text-danger <?= $i % 7 == 0 ||
                        $i % 7 == 6
                            ? 'bg-dark'
                            : '' ?>"><b><?= $i ?></b></div>
                    <?php } else { ?>
                        <div class="rounded-3 <?= $i % 7 == 0 || $i % 7 == 6
                            ? 'bg-dark text-white'
                            : '' ?>"><?= $i ?></div>
                    <?php } ?>
            <?php } ?>
        </div>
    </div>
</body>
</html>