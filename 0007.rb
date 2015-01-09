
n = STDIN.readline.chomp.to_i
s = 100000

for i in 1..n 
	s = (s*(1.05)/1000).ceil.to_i*1000
end

print s,"\n"


