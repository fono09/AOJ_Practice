def qq_itr(i,j)

	if j == 10
		return 
	end


	printf("%dx%d=%d\n",j,i,j*i);

	if i==9
		qq_itr(1,j+1)
	else
		qq_itr(i+1,j)
	end

end

qq_itr(1,1)
