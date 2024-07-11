def minimum_sum_subarray(array)
  min_ending_here = array[0]
  min_so_far = array[0]
  
  (1...array.size).each do |i|
    min_ending_here = [array[i], min_ending_here + array[i]].min
    min_so_far = [min_so_far, min_ending_here].min
  end

  min_so_far
end

array = [3, -4, 2, -3, -1, 7, -5]
minimum_sum = minimum_sum_subarray(array)
puts "A soma minima de submatriz continua ê: #{minimum_sum}"