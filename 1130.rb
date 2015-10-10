
def find(n,l,c,data)

	return 0 if $flags[[n,l]]
	$flags.store([n,l],true) 

	return 0 if n < 0 || l < 0
	return 0 if data[n]==nil 
	return 0 if data[n][l]==nil
	return 0 if data[n][l]=='#'
	
	return 1+find(n,l-1,c,data)+find(n+1,l,c,data)+find(n,l+1,c,data)+find(n-1,l,c,data)
end

data = readlines
while true do
	num = data.shift.chomp.split(' ')
	break if num[1].to_i == 0
	
	$flags = Hash.new()
	start = []

	lines = data.shift(num[1].to_i)
	lines.map! do |l| l.chomp.split('') end
	lines.each.with_index do |n,i|
		start = [i,n.index{ |m|
			m == '@'
		}]
		if start[1] != nil
			break
		end
	end

	puts find(start[0],start[1],0,lines)
end


