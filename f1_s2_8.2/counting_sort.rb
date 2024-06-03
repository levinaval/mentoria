def counting_sort(array)
  return array if array.empty?

  # Encontra o valor máximo na lista.
  max_value = array.max

  # Inicializa o array de contagem.
  count = Array.new(max_value + 1, 0)

  # Conta a ocorrência de cada elemento na lista.
  array.each do |element|
    count[element] += 1
  end

  # Modifica o array de contagem para conter posições acumuladas.
  (1..max_value).each do |i|
    count[i] += count[i - 1]
  end

  # Constroi a lista ordenada.
  sorted_array = Array.new(array.length)
  array.reverse.each do |element|
    sorted_array[count[element] - 1] = element
    count[element] -= 1
  end

  sorted_array
end

# Exemplo de uso
array = [4, 2, 1, 1, 8, 5, 1, 5]
sorted_array = counting_sort(array)
puts "Array ordenado: #{sorted_array}"