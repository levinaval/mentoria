# A busca linear verificar cada elemento de uma lista sequencialmente até encontra o alvo ou atingir o fim da lista.

def linear_search(array, target)
    array.each_with_index do |element, index|
        #Retorna o indece se o elemento for encontrado.
        return index if element == target
    end
     # Retorna nil se o elemento não encontrado.
    nil
end

puts linear_search([10, 20, 30, 40, 50], 30)

#Refatorado

def linear_search(array, target)
    array.index(target)
end 

puts linear_search([10, 20, 30, 40, 50], 30)