<?php
 function dkjje($data){
        $op='';
        $n=1;
        $str = str_split($data);
        for( $i = 0; $i < sizeof($str); $i++ ) {
            $n=$n+1;
            $asc=ord($str[$i])+$n;        
            $op .= chr($asc); 
    }
        $encrip= $op;
        return $encrip;
    }