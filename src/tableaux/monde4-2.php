<?php
// 1
$tabAssoPersonnage = [
    'nom' => 'Natsuki',
    'prenom' => 'Subaru',
    'age' => 22,
    'ville' => 'Tokyo',
    'hobbies' => ['Jeux vidéos', 'Conventions Geek', 'Mangas/Animes'],
];
// var_dump($tabAssoPersonnage);

// 2
$tabAssoPersonnage['profession'] = 'Gamer';
// var_dump($tabAssoPersonnage);

// 3
$tabAssoPersonnage['ville'] = 'Nagazaki';
// var_dump($tabAssoPersonnage);

// 4
array_push($tabAssoPersonnage['hobbies'], 'Science-Fiction');
// var_dump($tabAssoPersonnage);

// 5
unset($tabAssoPersonnage['age']);
// var_dump($tabAssoPersonnage);

// 6
$booleanKeyExists = array_key_exists('profession', $tabAssoPersonnage);
echo "clé profession existe ? : $booleanKeyExists";
echo '<br>';
echo '<br>';

// 7

foreach ($tabAssoPersonnage as $key => $value) {
    if ($key == 'hobbies') {
        echo 'Hobbies :';
        foreach ($tabAssoPersonnage['hobbies'] as $hobby) {
            echo " | $hobby ";
        }
        echo '<br>';
    } else {
        echo "$key = $value";
        echo '<br>';
    }
}

// 8
// asort($tabAssoPersonnage['hobbies']);
// arsort($tabAssoPersonnage['hobbies']);
array_multisort($tabAssoPersonnage['hobbies'], SORT_ASC);
var_dump($tabAssoPersonnage);

// 9

// $nbValeursHobbies = count($tabAssoPersonnage['hobbies']);
// var_dump($nbValeursHobbies);
// echo "Il y a $nbValeursHobbies Hobbies !";
// echo '<br>';
// foreach ($tabAssoPersonnage['hobbies'] as $value) {
//     echo " | $value ";
// }

$nbAutresValeurs = count($tabAssoPersonnage);
var_dump($nbAutresValeurs);

$countValues = 0;
foreach ($tabAssoPersonnage as $key => $value) {
    if ($key == 'hobbies') {
        $countValues += count($tabAssoPersonnage['hobbies']);
    } else {
        $countValues += 1;
    }
}
echo "Nombre de valeurs = $countValues";
var_dump($countValues);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 4-2 - Les tableaux !!!!</title>
</head>
<body>

</body>
</html>