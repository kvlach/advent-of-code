sub count(@input) is export {
	my $total = 0;
	my $n = @input[0];
	@input = @input[1..*];

	for @input -> $i {
		if $i > $n {
			$total++;
		}
		$n = $i;
	}

	return $total
}

my @input = 'input-01.txt'.IO.lines;
say count(@input);
