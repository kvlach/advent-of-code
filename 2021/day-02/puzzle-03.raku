my ($x, $y) = 0, 0;

for 'input-02.txt'.IO.lines -> $line {
	my ($direction, $distance) = $line.split(" ");

	given $direction {
		when "forward" { $x += $distance }
		when "down"    { $y += $distance }
		when "up"      { $y -= $distance }
	}
}

say $x * $y;
