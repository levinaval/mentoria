def binary_search(array, value)
    start = 0
    final = array.length - 1
  
    while start <= final
      quite = (start + final) / 2
      
      if array[quite] == value
        return quite
       elsif array[quite] < value
        start = quite + 1
       else
        final = quite - 1
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
    puts "Valor não encontrado."
  end