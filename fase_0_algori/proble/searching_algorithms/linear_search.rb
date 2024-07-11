# Definição do método linear search para realizar uma busca linear em um array;
def linear_search(array, value)

    # Itera sobre cada elemento do array, untamente com seu índice.
    array.each_with_index do |element, index|
      if element == value # Verifica se o elemento atual é igual ao valor buscado.
        return index  # Retorna o índice do elemento encontrado.
      end
    end
    return nil  # Retorna nil se o elemento não for encontrado
  end
  
  # Exemplo de uso do método linear search.
  array = [10, 23, 45, 70, 11, 15]
  value_to_find = 70 # Define o valor que queremos encontra no array.
  
  # Chama o método linear search e armazena o resultado na variável index.
  index = linear_search(array, value_to_find)
  if index
    puts "O valor de #{value_to_find} encontrado no índice #{index}." # Imprime o índice do valor encontrado.
  else
    puts "Valor não encontrado." # Valor não encontrado no array.
  end
  