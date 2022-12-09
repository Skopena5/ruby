$grid =[[5,3,0,0,7,0,0,0,0],	#0
        [6,0,0,1,9,5,0,0,0],	#1
        [0,9,8,0,0,0,0,6,0],	#2
        [8,0,0,0,6,0,0,0,3],	#3
        [4,0,0,8,0,3,0,0,1],	#4
        [7,0,0,0,2,0,0,0,6],	#5
        [0,6,0,0,0,0,2,8,0],	#6
        [0,0,0,4,1,9,0,0,5],	#7
        [0,0,0,0,8,0,0,7,9]]	#8
   
        #0 1 2 3 4 5 6 7 8

def isNumberInGrid(y,x,n)
	(0..8).each do |i|
		if $grid[y][i] == n
			return false
		end
	end
	(0..8).each do |i|
		if $grid[i][x] == n
			return false
		end
	end
	x1 = (x / 3) * 3
	y1 = (y / 3) * 3
	(0..2).each  do |i|
		(0..2).each do |j|
			if $grid[y1+i][x1+j] == n
				return false
			end
		end
	end
	return true
end

def insert_numbers
	for y in (0..8)
		for x in (0..8)
			if $grid[y][x] == 0
				for n in (1..9)
					if isNumberInGrid(y,x,n) == true
						$grid[y][x] = n
						insert_numbers
						$grid[y][x] = 0
					end
				end
				return
			end
		end
	end
	for i in (0..8)
		print "#{$grid[i]}\n"
	end
end

insert_numbers