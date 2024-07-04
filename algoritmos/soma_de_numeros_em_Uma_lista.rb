# Esse algoritmo calcula a soma de todos os números em uma lista. É uma operação fundamental em uma lista. É uma operação fundamental em muitos contextos de programação.

def sum_of_lista(numbers)
    # Utiliza o método reduce para somar os elementos da lista.
    numbers.reduce(0, :+)
end

puts sum_of_lista([1, 2, 3, 4, 5])