# Definição do método linear search para realizar uma busca linear em um array;
def linear_search(array, value)
  array.each_with_index do |element, index|
    if element == value
      return index  # Retorna o índice do elemento encontrado
    end
  end
  return nil  # Retorna nil se o elemento não for encontrado
end

# Exemplo de uso
array = [10, 23, 45, 70, 11, 15]
value_to_find = 70

index = linear_search(array, value_to_find)
if index
  puts "Valor encontrado no índice #{index}."
else
  puts "Valor não encontrado."
end
