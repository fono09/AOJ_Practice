
lines = STDIN.gets(nil).split("\n")

lines.each do |line|
	line.chomp!
	sum = 0
	line.split(" ").each do |num|
		sum += num.to_i
	end
	p Math.log10(sum).to_i+1
end

