def bublle_sort(array)
n = array.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

# Exemplo de uso
array = [64, 34, 25, 12, 22, 11, 90]
sorted_array = bublle_sort(array)
puts "Array ordenado: #{sorted_array}"