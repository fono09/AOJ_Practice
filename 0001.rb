
mountain = [0,0,0]

for i in 0..9
	tmp = STDIN.gets.chomp.to_i
	mountain.each_with_index do |mnt,idx|
		if mnt < tmp
			mountain.insert(idx,tmp)
			mountain.pop
			break
		end
	end
end

mountain.each do |mnt|
	p mnt
end
