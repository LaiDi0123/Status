#!/usr/bin/perl -w

use strict;

open INFILE,"+>gar.txt"or die "not find the filename gar1.txt";

sub head{
    our %head = qw(A 10 B 11 C 12 D 13 E 14 F 15 G 16 H 17
                   I 34 J 18 K 19 L 20 M 21 N 22 O 35 P 23 
                   Q 24 R 25 S 26 Y 27 U 28 V 29 X 30 Y 31);
    our @keys = keys(%head);
    our $header = @keys[int(rand(23))];
    our $En = $head{$header};
    our @En1 = split('',$En);
    $En1[1] *= 9;
    our $sum = $En1[0] + $En1[1];
    return $header;
}

sub gender{
    do {
      our $rand = int(rand(2));
}while(our $rand == 0);
    my $gender = $rand;
    return $gender;
}

sub CardNumber{
    foreach (my $j = 0;$j < 7;$j++){
        our $num  = int(rand(9));
        our $num1 = int(rand(9));
        our $num2 = int(rand(9));
        our $num3 = int(rand(9));
        our $num4 = int(rand(9));
        our $num5 = int(rand(9));
        our $num6 = int(rand(9));
        return $num,$num1,$num2,$num3,$num4,$num5,$num6;
      }
}

sub LastNumber{
    my $Max = our $sum + our $rand*8 + our $num*7 + our $num1*6 + our $num2*5 + our $num3 *4 +
    our $num4*3 + our $num5*2 + our $num6*1;
    $Max %= 10;
    $Max = 10 - $Max;
    if ($Max == 10){
    return 0;
    }else{
    return $Max;
    }
}
for(my $i = 0;$i<1000;$i++){
    print INFILE &head,&gender,&CardNumber,&LastNumber,"\n";
    
}
 

close INFILE;    


