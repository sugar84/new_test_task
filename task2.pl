#!/usr/bin/env perl
package Animal;
use warnings;
use 5.34.0;

sub new {
	my $class = shift;

	my $self = {@_};
	bless $self, $class;

	return $self;
}

sub speak {
	my $self = shift;

	say $self->{speak} || "hello world";

	return;
}

sub eat {
	my $self = shift;

	if ($self->{food} && --$self->{food}) {
		say "eating...";
	}
	else {
		say "cant eat, i need some food.."
	}

	return;
}

1;

package Cat;
use warnings;
use 5.34.0;

use parent -norequire, qw/Animal/;

sub eat {
	my $self = shift;

	for (0 .. int rand 3) {
		say "do some useless actions";
	}
	
	return $self->SUPER::eat();
}

1;

package main;
use warnings;
use 5.34.0;

my $cat = Cat->new(
	food  => 3,
	speak => "meaw",
);
$cat->speak;
$cat->eat;

say "the end";
