


use PDL;
use PDL::Graphics::TriD;
use PDL::Math; 
 nokeeptwiddling3d; ## if you change to nokeeptwiddling3d you dont have to press q in the GLUT screen to see animation
  ## change to keeptwiddling to stop and view each step of the animation by pressing q in the GLUT box

$PDL::BIGPDL=1; ## remember this can crash the computer if you dont have enough swap in linux or pagefile in windows
                ## remember to press q in the GLUT screen to see the animation step by step
                ##         


 for (;;){
    $c = 400;
 for $phase(1..360) {
 $phase = $phase*0.0000001;
 $frequency = ($c**-1);
 $n=6.28*$c*$frequency+($phase);

 $photons = 4178; ### [Density]

 ### 4Dimensional Geometry
 $t=(-1**.5)*rvals(exp(zeros($photons)),{Centre=>[0]});
                  
                
 $cz= -1**$t*$c;  ###    $t*$c; 
 $cy= -1**$t*sin($t*$c);  ###   $t*sin($t*$c); 
 $cx= -1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c;  ### $c*bessj0(rvals($t,{Centre=>[0]}))*$c;
 
 $w=$cz-$cy-$cx;
 $g=sin($w);
 $r=cos($cy+$c+$cz);
 $b=cos($w);
 $i=($cz-$cx-$cy);
  $q=$c*($i*$n);

### altitude longitude latitude 
$x = $b*sin($q);  ### cos   change the spin of the electron here
$y = $r*cos($q);  ### sin
$z = $g*sin($q);  ### cos

$xx = $x*$y;
$yy = $z*$x;
$zz = $y*$z;




   #    4Dimensional  6Dimensional
  
 +points3d[$x,$y,$z],   [$b,$g,$r]; ## electron
 #+points3d[$x,$y,$z],   [$b,$r,$g]; ## positron
 hold3d(); 
 +points3d[$x*$b,$y*$g,$z*$r],   [$b,$r,$g]; ## 6th Dimensional electron 
 #+points3d[$x*$b,$y*$g,$z*$r],   [$b,$g,$r]; ## 6th Dimensional positron 
 #release3d();

  +points3d[$x,$z,$y],   [$b,$g,$r]; ## electron
 hold3d(); 
 +points3d[$x*$b,$z*$r,$y*$g],   [$b,$r,$g]; ## b r g = antimatter color ; anitphoton color charge ;}
 #release3d();

    +points3d[$y,$x,$z],   [$b,$g,$r]; ## electron
 hold3d(); 
 +points3d[$y*$g,$x*$b,$z*$r],   [$b,$r,$g]; ## 6th Dimensional electron 
 #release3d();  

  +points3d[$y,$z,$x],   [$b,$g,$r]; ## electron
 hold3d(); 
 +points3d[$y*$g,$z*$r,$x*$b],   [$b,$r,$g]; ## 6th Dimensional electron 
 #release3d();  

  +points3d[$z,$x,$y],   [$b,$g,$r]; ## electron
 hold3d(); 
 +points3d[$z*$r,$x*$b,$y*$g],   [$b,$r,$g]; ## 6th Dimensional electron 
 #release3d(); 
  
 +points3d[$z,$y,$x],   [$b,$g,$r]; ## electron
 hold3d(); 
 +points3d[$z*$r,$y*$g,$x*$b],   [$b,$r,$g]; ## 6th Dimensional electron 
  release3d(); 
  release3d(); 
  release3d(); 
  release3d(); 
  release3d(); 
  release3d();   

   
  
  

  $radius = sum(sqrt(($x**2)+($y**2)+($z**2)));
  print $radius," radius ","\n";
  $length = ($radius+$radius)**-3; 
  $charge = (-1.6021766)*((10)**-19);
  $light = 299792458;
  $len = ($length * $light);
  $planck = (6.62607)*((10)**-34) ;
  $mass = ($planck / $len);
  $time = ($planck / ($mass * ($light**2)));
  $current = (-1.6021766)*((10)**-19)/ $time;
  $charge2 = $current*$time;

  print $photons," n photons ","\n";
  print $light," speed of light constant ??? ","\n";
  print $planck," plancks constant ??? ","\n";
  print $charge," charge constant ??? ","\n","\n";
  print " charge should be constant here ","\n";
  print $charge2," this should be constant ","\n";
  
  
  print $mass," mass = h/(lc) ","\n";
  print $length, " length = h/(mc) ","\n";
  print $time, " time = h/(mc**2) ","\n";
  print $current," current = Q/t ","\n","\n";;

  print $phase," remember = Amplitude * sin(6.28*time*frequency+phase) ","\n";


 ##    voltage = [M] * [L**2] * [T**-3] * [I**-1]
##  resistance = [M] * [L**2] * [T**-2] * [I**-2]
## capacitance = [M**-1] * [L**-2] * [T**4] * [I**2]
##  inductance = [M] * [L**2] * [T**-2] * [I**-2]


        #  4Dimensional     6Dimensional
 #points3d[$xx,$yy,$zz],[$g*$b,$r*$g,$b*$r]; ## Hbar geometry
######################################################################################################## 
  #$uu = ($x*$y*$z);
    
## Tetrahedron Dynamics
## points3d[(sin($uu**1/2)/$x,tan($uu**1/2)/$y,sin($uu**1/2)/$z)]   ; }

## Calabi-Yau Dynamics 
## points3d[(sin($uu**1/2)/$x,tan($uu**1/2)/$y,sin($uu**1/2)/$z*$y)]  ; }
########################################################################################################


} } 

 
