

use PDL;
use PDL::Graphics::TriD;
use PDL::Math; keeptwiddling3d;
### QPD  Quantum Photonic Dynamics
### QPD::Math uses 4 transcendental [angle] 4Dimensional equations
###           and  6 transcendental [angle] 6Dimensional equations
###           To describe the geometry of the electron 
###           not 2 [angles] and 1 [length] like the Spherical Coordinates system
###           not 3 [lengths] like the  Cartesian coordinate system
###           10 Transendental [angles] in a 3 [length]  Cartesian coordinate system
###           that describes a dynamic vector geometry of a "photon(s)/(String(s))" 
###           that make up a particle. 


 for $c(400..1999){
 for $frequency (1..20) {
 for $phase(1..360) {
 $phase = $phase*0.0000001;
 $n=6.28*$c*$frequency+($phase);

 $photons = 2444; ### [Density]

 ### 4Dimensional Geometry
 $t=(-1**.5)*rvals(exp(zeros($photons)),{Centre=>[0]});
 $cz=-1**$t*$c;
 $cy=-1**$t*sin($t*$c);
 $cx=-1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c;
 
 ### 6Dimensional Geometry
 $w=$cz-$cy-$cx;
 $g=sin($w);
 $r=cos($cy+$c+$cz);
 $b=cos($w);
 $i=($cz-$cx-$cy);
  $q=$c*($i*$n);


$x = $b*sin($q);
$y = $r*cos($q);
$z = $g*sin($q);

$xx = $x*$y;
$yy = $z*$x;
$zz = $y*$z;




   #    4Dimensional  6Dimensional
points3d[$x,$y,$z],   [$g,$b,$r]; ## electron 

$light = 299792458;
  $radius = sum(sqrt(($x**2)+($y**2)+($z**2)));
  $length = 2*(($radius*2)**-4); ## Wrong !!!
  $mass = (($radius**3)**-3);
  $energy = $mass*($light**2);
  $time = ($energy/($mass*$radius*$radius));
  $time = (($time)**-2)+(($time)**-2)+(($time)**-2);
  $length2 = sqrt($energy/($mass/($time*$time)));  ## Right !!!

 print "[",($radius*2)**-4,"]","  Radius Meters","\n";
 print "[",$time,"]","  Time Seconds","\n";  
 print "[",$length,"]","  Length Meters<- wrong Length","\n";
 print "[",$length2,"]","  Length Meters<- right Length","\n";
 print "[",$mass,"]","    Mass KiloGrams","\n";
 print "[",$energy,"]","   "," Energy Joule Seconds","\n";
 print "\n";

        #  4Dimensional     6Dimensional
 #points3d[$xx,$yy,$zz],[$g*$b,$r*$g,$b*$r]; ## Hbar geometry



} } }

### Working on the Extra-Dimensional Telemetry and the Quantum Fluctuations 
### PDL has everything down for astrophysics- I think that the engine could use 
### some fine tunning for the 4 and 6 dimensional frameworks "maybe" ...
