


 
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

print $length = sum(sqrt($xx**2+$yy**2+$zz**2)),"\n";
print $L1 = sum(sqrt($xx**2+$yy**2)),"\n";
print $L2 = sum(sqrt($zz**2+$xx**2)),"\n";
print $L3 = sum(sqrt($yy**2+$zz**2)),"\n";
print $length**3,"\n";
print $L1*$L2*$L3,"\n";
print "\n";

                      #x  y  z
points3d[$xx,$yy,$zz],[$g,$b,$r]; ## electron 


 points3d[$xxx,$yyy,$zzz],[$g*$b,$r*$g,$b*$r]; ## Hbar geometry



}


