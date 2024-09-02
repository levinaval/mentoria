# A pesquisa binária é um algoritmo eficiente para encontrar um item em uma lista ordenada, dividindo repetidamente a lista pela metade.

def binariy_search(array, target)
 # Inicializa os ponteiros de inicio e fim.   
    low = 0
    high = array.length - 1

    while low <= high
        mid = (low + high) / 2
        guess = array[mid]

        # Verifica se o elemento do meio é o alvo.
        return mid if guess == target

        # Ajusta os ponteiros de acordo com a comparação.
        if guess < target
            low = mid + 1
        else
            high = mid - 1
        end
    end
    # Retorna nil se o elemento não for encontrado.
    nil
end

puts binariy_search([3, 5, 1, 6, 8], 7)