<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monde 2-4 - Les conditions !!!!</title>
</head>
<body>
    <?php
    $magnitude = 13;

    switch ($magnitude) {
        case 1:
            echo '1 : Micro-séisme impossible à ressentir.';
            break;
        case 2:
            echo '2 : Micro-séisme impossible à ressentir mais enregistrable par les sismomètres.';
            break;
        case 3:
            echo '3 : Ne cause pas de dégats mais commence à pouvoir être légèrement ressenti.';
            break;
        case 4:
            echo '4 : Séisme capable de faire bouger des objets mais ne causant généralement pas de dégâts.';
            break;
        case 5:
            echo '5 : Séisme capable d\'engendrer des dégats importants sur de vieux bâtiments ou bien des bâtiments présentants des défauts deconstruction. Peu de dégats sur des bâtiments modernes.';
            break;
        case 6:
            echo '6 : Fort séisme capable d\'engendrer des destructions majeures sur une large distance (180 km) autour de l\'épicentre.';
            break;
        case 7:
            echo '7 : Séisme capable de destructions majeures à modérées sur une très large zone en fonction de la distance.';
            break;
        case 8:
            echo '8 : Séisme capable de destructions majeures sur une très large zone de plusieurs centaines de kilomètres.';
            break;
        case 9:
            echo '9 : Séisme capable de tout détruire sur une très vaste zone.';
            break;
        case 10:
            echo '10 : Taupiqueur dans les Pokémon !!!! :) :) :) :)';
        case 11:
            echo '11 : Du jamais vu !!!! :) :) :) :)';
            break;
        case 12:
            echo '12 : C\'est la mort assurée pour n\'importe qui !!!! :) :) :) :)';
            break;
        case 13:
            echo '13 : Réplique de Primo-Groudon : Va te faire foutre !!!! :) :) :) :)';
            break;
    }
    ?>
</body>
</html>