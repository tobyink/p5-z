if ( $] lt '5.014' ) {
	delete $meta->{prereqs}{runtime}{requires}{'Syntax::Keyword::Try'};
}

if ( $] lt '5.010' ) {
	$meta->{prereqs}{runtime}{requires}{'UNIVERSAL::DOES'} = '0.001';
	$meta->{prereqs}{runtime}{requires}{'Perl6::Say'}      = '0.06';
	$meta->{prereqs}{runtime}{requires}{'MRO::Compat'}     = '0';
}

if ( ! eval 'use JSON::MaybeXS 1.003000 ();' ) {
	$meta->{prereqs}{runtime}{requires}{'JSON::PP'} = '2.0';
}
