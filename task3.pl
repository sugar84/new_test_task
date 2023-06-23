#!/usr/bin/env perl
use warnings;
use 5.34.0;

my $datetime = "2016-04-11 20:59:03";
my ($date, $time);

($date, $time) = $datetime =~ /^(\d{4}-\d\d-\d\d)\s+(\d\d:\d\d:\d\d)$/;
say "1: ", $date, "  ", $time;

($date, $time) = $datetime =~ /(\d{4}-\d\d-\d\d)\s+(\d\d:\d\d:\d\d)/;
say "2: ", $date, "  ", $time;

($date, $time) = split /\s+/, $datetime;
say "3: ", $date, "  ", $time;

say "the end";