#! /usr/local/bin/perl
#!/usr/local/bin/perl -sw

use Quantum::Superpositions;

sub is_prime { my ($n) = @_;
	       return $_[0]==2 || $_[0] % all(2..sqrt($_[0])+1) != 0;
	     }

for $n (map {2*$_+1} 1..1000) {
	print "$n is prime\n" if is_prime($n);
}
