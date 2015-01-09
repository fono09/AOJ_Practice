
STDIN.each_line do |line|

	nums = line.chomp.split.map(& :to_i)
	
	print nums[0].gcd(nums[1])," ", nums[0].lcm(nums[1]),"\n"

end
