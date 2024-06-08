def maximize_sum_of_pairs(array)
  array.sort!.reverse!
  sum = 0

  (0...array.size).step(2) do |i|
    sum += array[i] + (array[i + 1] || 0)
  end

  sum
end

# Exemplo de uso.
array = [3, 1, 4, 1, 5, 9]
maximize_sum_pairs = maximize_sum_of_pairs(array)
puts "A soma máxima dos pares é: #{maximize_sum_pairs}"