# A ordenação por inserção constrói a lista de ordenada uma peça de cada vez, pegando elementos da lista de entrada e inserido-os na posição correta na lista.

def insertion_sort(array)
    (1...array.length).each do |i|
        key = array[i]
        j = i - 1
        # Move os elementos da lista que são maiores que o chave para uma posição à frente.
        while j >= 0 && array[j] > key
           array[j + 1] = array[j]
           j -= 1
        end
        array[j + 1] = key
    end
    array
end

puts insertion_sort([12, 11, 14, 3, 5])