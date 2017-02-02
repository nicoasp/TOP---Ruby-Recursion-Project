def sort_two_arrays(array, other_array, solution_array = [])
	while !array.empty? && !other_array.empty?
		if array[0] <= other_array[0]
			solution_array << array.shift
		else
			solution_array << other_array.shift
		end
	end
	solution_array += array
	solution_array += other_array
end


def merge_sort(array)
	array2 = array.slice!(0, array.length / 2)
	array = merge_sort(array) if array.length > 1
	array2 = merge_sort(array2) if array2.length > 1
	sort_two_arrays(array, array2)
end

