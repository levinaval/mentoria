def binary_search(array, value)
  inicio = 0
  fim = array.length - 1

  while inicio <= fim
    meio = (inicio + fim) / 2

    if array[meio] == value
      return meio
     elsif array[meio] < value
      inicio = meio + 1
     else
      fim = meio - 1
    end
  end
  
  return nil 
end

array = [10, 23, 45, 70, 80, 99]
value_to_find = 70

index = binary_search(array, value_to_find)
if index
  puts "Valor encontrado no índice #{index}."
else
  puts "valor não encontrado."
end