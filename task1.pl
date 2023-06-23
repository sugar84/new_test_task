#!/usr/bin/env perl
use warnings;
use 5.34.0;


my @unsorted = qw/ 7 1 3 4 2 4 6 5 5 /;

sub bubble_sort {
	my @arr = @_;

	for my $n (0 .. $#arr - 1) {
		my $c = 0;
		for my $m (0 .. $#arr - $n - 1) {
			if ($arr[$m] > $arr[$m + 1]) {
				($arr[$m], $arr[$m + 1]) = ($arr[$m + 1], $arr[$m]);
				$c++;
			}
		}
		last if !$c
	}

	return @arr;
}

sub binary_search {
	my ($arr, $key) = @_;

	my ($low, $high) = (0, $#$arr);

	while ($low <= $high) {
		my $mid = int(($low + $high) / 2);
		my $val = $arr->[$mid];
		if ($val == $key) {
			say "MATCHED";
			return;
		}
		elsif ($val > $key) {
			$high = $mid - 1;
		}
		else {
			$low = $mid + 1;
		}
	}

	say "NOT MATCHED";
	return;
}

my @sorted = bubble_sort(@unsorted);
say @sorted;
binary_search(\@sorted, 5);