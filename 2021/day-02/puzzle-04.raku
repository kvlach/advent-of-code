my ($aim, $x, $y) = 0, 0, 0;

for 'input-02.txt'.IO.lines -> $line {
	my ($direction, $distance) = $line.split(" ");
	
	given $direction {
		when "down" { $aim += $distance }
		when "up"   { $aim -= $distance }
		when "forward" {
			$x += $distance;
			$y += $aim * $distance
		}
	}
}

say $x * $y;
