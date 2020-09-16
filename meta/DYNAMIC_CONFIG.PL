if ( $] lt '5.014' ) {
	delete $meta->{prereqs}{runtime}{requires}{'Syntax::Keyword::Try'};
}

if ( $] lt '5.010' ) {
	$meta->{prereqs}{runtime}{requires}{'UNIVERSAL::DOES'} = '0.001';
	$meta->{prereqs}{runtime}{requires}{'Perl6::Say'}      = '0.06';
}

