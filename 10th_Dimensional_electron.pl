
### note the dimensions below could be very wrong !!!
### [Density] could be wrong, better to think of it as [photon Density]
###  and it could still be wrong 
### Im building the dimensions by hand to try to get this right ...
### using the two I think I can narrow down to the right dimensions for the formula's
### I will upload the Matrix Dimensions piddle as soon as I get done ...
### allthough it looks close really, you have to do this nonvisually " Dimensionally "
### to make sure it's right.

## 10th Dimensional electron

use PDL;
use PDL::Graphics::TriD;
use PDL::Math; 
 nokeeptwiddling3d; ## if you change to nokeeptwiddling3d you dont have to press q in the GLUT screen to see animation
  ## change to keeptwiddling to stop and view each step of the animation by pressing q in the GLUT box

$PDL::BIGPDL=1; ## remember this can crash the computer if you dont have enough swap in linux or pagefile in windows
                ## remember to press q in the GLUT screen to see the animation step by step

### QPD  Quantum Photonic Dynamics
### QPD::Math uses 4 transcendental [angle] 4Dimensional equations
###           and  6 transcendental [angle] 6Dimensional equations
###           To describe the geometry of the electron 
###           not 2 [angles] and 1 [length] like the Spherical Coordinates system
###           not 3 [lengths] like the  Cartesian coordinate system
###           10 Transendental [angles] in a 3 [length]  Cartesian coordinate system
###           (which is really 3 [angles] in x y z and 3 [angles] in b g r)
###           that describes the dynamic vector geometry of the "photon(s)/(String(s))" 
###           that make up a particle. 


 for (;;){
    $c = 400;
 for $phase(1..360) {
 $phase = $phase*0.0000001;
 $frequency = ($c**-1);
 $n=6.28*$c*$frequency+($phase);

 $photons = 2444; ### [Density]

 ### 4Dimensional Geometry
 $t=(-1**.5)*rvals(exp(zeros($photons)),{Centre=>[0]});
                  
                
 $cz= -1**$t*$c;  ###    $t*$c; 
 $cy= -1**$t*sin($t*$c);  ###   $t*sin($t*$c); 
 $cx= -1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c;  ### $c*bessj0(rvals($t,{Centre=>[0]}))*$c;
 
 ### 6Dimensional Geometry
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

   
  
  


$light = 299792458;
  $radius = sum(sqrt(($x**2)+($y**2)+($z**2)));
  $length = 2*(($radius*2)**-4); ## Wrong !!!
  $mass = (($radius**3)**-3);
  $energy = $mass*($light**2);
  $time = ($energy/($mass*$radius*$radius));
  $time = (($time)**-2)+(($time)**-2)+(($time)**-2);
  $length2 = sqrt($energy/($mass/($time*$time)));  ## Right !!!
  $velocity = $length2*($time**-1);
  $acceleration = $length2*($time**-2);
  $force = $mass*$acceleration;

 print "[",($radius*2)**-4,"]","  Radius Meters","\n";
 print "[",$time,"]","  Time Seconds","\n";  
 print "[",$length,"]","  Length Meters<- wrong Length","\n";
 print "[",$length2,"]","  Length Meters<- right Length","\n";
 print "[",$mass,"]","    Mass KiloGrams","\n";
 print "[",$energy,"]","   "," Energy Joule Seconds","\n";
 print "[".$velocity,"]","    "," Velocity Meters","\n";
 print "[".$acceleration,"]","    "," Acceleration Meters per second/per second","\n";
 print "[",$force,"]","   ","  Force","\n"; 
 print "\n";

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

### Working on the Extra-Dimensional Telemetry and the Quantum Fluctuations 
