require 'matrix'

lines = STDIN.readlines

lines.each do |line|

	nums = line.chomp.split(" ").map do |str|
		str.to_i
	end

	m = Matrix[nums[0..1],nums[3..4]]
	v = Vector[nums[2],nums[5]]

	x = m.inv*v

	printf("%.3f %.3f\n",x[0],x[1]);

end
