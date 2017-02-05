

use PDL;
use PDL::Complex;
use PDL::Graphics::TriD;
use PDL::Math; keeptwiddling3d;
$PDL::BIGPDL=1;
 ## remember this can crash the computer if you dont have enough swap in linux or pagefile in windows

 

 for (;;){
  $c = (400) ;
 for $phase(1..360) {  ## 360
 $phase = $phase*0.0000001;
 $frequency = ($c**-1);
 $n= (6.28*$c*$frequency+($phase));

 $photons = 4178; ### [Density] 2444 4178

 
 $t=(-1**.5)*rvals(exp(zeros($photons)),{Centre=>[0]});
 $cz=-1**$t*$c;
 $cy=-1**$t*sin($t*$c);
 $cx=-1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c; #-1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c;
 
 
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

 

 +points3d[$x,$y,$z],  [$b,$g,$r]; ##  4th Dimensional electron
  
 
#+points3d[$x*$b,$y*$g,$z*$r],   [$b,$g,$r]; ## 6th Dimensional electron 

  $radius = sum(sqrt(($x**2)+($y**2)+($z**2)));
  print $radius," radius ","\n";
  $diameter = ($radius+$radius)**-3; 
  $charge = (-1.6021766)*((10)**-19);
  $light = 299792458;
  $len = ($diameter * $light);
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
  print $diameter, " length = h/(mc) ","\n";
  print $time, " time = h/(mc**2) ","\n";
  print $current," current = Q/t ","\n","\n";;

  print $phase," Phase A sin(6.28*t*f+phase) ","\n";











  
 
   
######################################################################################################## 
  #$uu = ($x*$y*$z);
    
## Tetrahedron Dynamics
## points3d[(sin($uu**1/2)/$x,tan($uu**1/2)/$y,sin($uu**1/2)/$z)]   ; }

## Calabi-Yau Dynamics 
## points3d[(sin($uu**1/2)/$x,tan($uu**1/2)/$y,sin($uu**1/2)/$z*$y)]  ; }
########################################################################################################


} } 


### neglecting the remainder here 
#4178 / 2
#2089
#2089 / 2
#1044
#1044 /2
#522
#522 / 2
#261
#261 / 2
#130
#130 / 2
#65
#65 / 2
#32
#32 / 2
#16
#16 /2
#8
#8 / 2
#4
#4 / 2
#2


## electron charge -1.6021766×10^-19 C (coulombs)  TI
## Force F between like charges 1 cm apart from F = Q^2/(4πϵ_0r^2):
## 2.3×10^-24 N (newtons)
## Current I caused by the charge flowing in one second from I = Q/t:
## 1.6×10^-19 A (amperes)

