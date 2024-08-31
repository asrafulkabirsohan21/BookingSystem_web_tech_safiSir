<?php
$S = trim(fgets(STDIN));
$T = trim(fgets(STDIN));


$count = substr_count($S, $T);

echo $count;
