LW $at, 0($zero)   //$at=1
LW $v0, 2($zero)   // $v0=0 f(0)
LW $a0, 1($zero)   //$a0=101
LW $a1, 0($zero)   //$a1=1 f(1)
ADD $v1,$at,$v0  //$v1=1
ADD $a2, $a1, $v0  //a2 is f(n)
ADD $v0, $a1, $zero  // $v0 is f(n-2)
ADD $a1, $a2, $zero  // $a1 is f(n-1)
ADD  $v1, $v1, $at   // $v1Ã¿´Î¼Ó1
BEQ  $v1, $a0, 1
J  5
SW $v0, 2($zero)
J  0