
def search_rec(i,depth,sum)

	if depth==0
		if sum==i
			return 1
		else
			return 0
		end
	else
		count2 = 0
		for j in 0..9
			count2+=calc(i,depth-1,sum+j)
		end
		return count2
	end
end

STDIN.readlinees.chomp.map do |line|

	search_rec(line.to_i,4,0)

end
