<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 1-3 - Les variables !!!!</title>
</head>
<body>
        <?php
        $string;
        $int;
        $float;
        $boolean;

        $string = 'FairyTail !!!! :) :) :) :)';
        $int = 11;
        $float = 11.5;
        $boolean = true;

        echo "$string   $int    $float  $boolean";
        echo gettype($string);
        echo gettype($int);
        echo gettype($float);
        echo gettype($boolean);

// gettype($variable) pour afficher le type d'une variable.

// echo typeof $string;
?>
</body>
</html>