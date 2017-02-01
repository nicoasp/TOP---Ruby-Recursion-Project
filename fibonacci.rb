def fibs(n)
	array = [0, 1]
	(3..n).each do |i|
		array << (array[i - 3] + array[1 - 2])
	end
	array
end


def fibs_rec(n, solution = [0, 1])
	if solution.length < n
		solution << (solution[solution.length - 2] + solution[solution.length - 1])
		fibs_rec(n, solution)
	end
	solution
end
