
n = STDIN.readline.to_i

for i in 1..n

	a,b,c = STDIN.readline.chomp.split(" ").map do |str|
		str.to_i
	end.sort
	
	if c**2 == a**2 + b**2
		print "YES\n"
	else
		print "NO\n"
	end

end


		


