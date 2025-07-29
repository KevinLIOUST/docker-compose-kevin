<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 2-3 - Les conditions !!!!</title>
</head>
<body>
    <?php
    $age = 18;
    $gender = 'Homme';

    if ($age >= 18 && $gender == 'Homme') {
        echo 'Vous êtes un homme et vous êtes adulte !!!! :) :) :) :)';
    } elseif ($age < 18 && $gender == 'Homme') {
        echo 'Vous êtes un homme et vous êtes pas encore adulte !!!! :) :) :) :)';
    } elseif ($age >= 18 && $gender == 'Femme') {
        echo 'Vous êtes une femme et vous êtes adulte !!!! :) :) :) :)';
    } elseif ($age < 18 && $gender == 'Femme') {
        echo 'Vous êtes une femme et vous êtes pas encore adulte !!!! :) :) :) :)';
    }
    ?>
</body>
</html>