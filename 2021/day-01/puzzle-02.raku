sub triplewise(@input) {
	my @out;
	loop (my $i = 0; $i+2 < @input.elems; $i++) {
		@out.push: @input[$i] + @input[$i+1] + @input[$i+2];
	}
	return @out;
}

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
say count(triplewise(@input));
