
use PDL;use PDL::Graphics::TriD;
for$c(1..99) {
 $n=6.28*$c;$v=$c*rvals(zeros(90000)*$c);
  $z=-1**$v*$c;
   $y=-1**$v*sin$v*$c;
    $x=-1**$c*rvals($v)*$c;

$w=$z-$y-$x;
$g=sin($w);
$r=cos($y+$c+$z);
$b=cos($w);
$q=$w*$n;


$xx = $b*sin($q);
$yy = $r*cos($q);
$zz = $g*sin($q);

$xxx = $xx*$yy;
$yyy = $zz*$xx;
$zzz = $yy*$zz;
                      #x  y  z
points3d[$xx,$yy,$zz],[$g,$b,$r]; ## electron 


 points3d[$xxx,$yyy,$zzz],[$g*$b,$r*$g,$b*$r]; ## Hbar geometry




}
