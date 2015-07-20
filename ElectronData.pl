

 
use PDL;use PDL::Graphics::TriD;
for$c(1..99) {
 $n=6.28*$c;$v=$c*rvals(zeros(90000)*$c);
  $cz=-1**$v*$c;
   $cy=-1**$v*sin$v*$c;
    $cx=-1**$c*rvals($v)*$c;

$w=$cz-$cy-$cx;
$g=sin($w);
$r=cos($cy+$c+$cz);
$b=cos($w);
$q=$w*$n;


$x = $b*sin($q);
$y = $r*cos($q);
$z = $g*sin($q);

$xx = $x*$y;
$yy = $z*$x;
$zz = $y*$z;




   #    4Dimensional  6Dimensional
points3d[$x,$y,$z],[$g,$b,$r]; ## electron 

       #  4Dimensional     6Dimensional
 points3d[$xx,$yy,$zz],[$g*$b,$r*$g,$b*$r]; ## Hbar geometry



}

### Working on the Extra-Dimensional Telemetry and the Quantum Fluctuations 
### PDL has everything down for astrophysics- I think that the engine could use 
### some fine tunning for the 4 and 6 dimensional frameworks ...
