my @lines = 'input-03.txt'.IO.lines;

my $cnt1 = 0;

my ($gamma, $epsilon) = '', '';

loop (my $i = 0; $i < @lines[0].chars; $i++) {
	for @lines -> $line {
		if substr($line, $i, 1) == '1' {
			$cnt1++;
		}
	}

	if $cnt1 > @lines.elems/2 {
		$gamma ~= '1';
		$epsilon ~= '0';
	} else {
		$gamma ~= '0';
		$epsilon ~= '1';
	}
	
	$cnt1 = 0;
}

$epsilon = $epsilon.parse-base(2);
$gamma = $gamma.parse-base(2);

say $gamma * $epsilon;
