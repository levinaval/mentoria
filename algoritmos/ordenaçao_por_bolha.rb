# A ordenação po bolha é um algoritmo simples de orientação que compara repetidamente pares adjacentes de elementos e os troca se estiverem na ordem errada.

def bubble_sort(array)
    n = array.length

    loop do
        swapped = false

        # Percorre a lista e troca elementos adjacentes se necessário.
        (n-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
        # Interrompe o loop se não houve trocas.
        break unless swapped
    end

    array
end

puts bubble_sort([4, 3, 54, 2, 0, 23])