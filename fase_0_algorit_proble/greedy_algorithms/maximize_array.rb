def max_sum_pairs(array)
    array.sort!.reverse!
    sum = 0

    (0...array.size).step(2) do |i|
        sum += array[i] + (array[i + 1] || 0)
    end

    sum
end

array = [3, 1, 4, 1, 5, 9]
max_sum_pairs = maximize_sum_of_pairs(array)
puts "A soma Máxima dos pares é: #{max_sum_pairs}"