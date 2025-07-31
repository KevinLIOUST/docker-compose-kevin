<?php
$tabPrenoms = ['Alice', 'Bob', 'Charlie', 'David', 'Emma'];
array_push($tabPrenoms, 'Hirono');
// $tabPrenoms[] = "Janna";
array_unshift($tabPrenoms, 'Sakura');
unset($tabPrenoms[0]);
// array_splice($tabPrenoms, array_search("Bob", $tabPrenoms), 1);
echo 'Prénom trouvé : ' . array_search('Emma', $tabPrenoms, true);
echo '<br>';

// for ($i = 0; $i < $tabPrenoms . count($tabPrenoms); $i++) {
//     echo "Prénom $i : " . ' ' . $tabPrenoms[$i];
// }

foreach ($tabPrenoms as $value) {
    echo "$value ";
}

// for($i = 0; $i < count($tabPrenoms); $i++) {
//      echo "$tabPrenoms[i], ";
// }
//
//
//
$nbPrenoms = count($tabPrenoms);
echo '<br>';
echo "Nombre de prénoms = $nbPrenoms";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 4-1 - Les tableaux !!!!</title>
</head>
<body>

</body>
</html>