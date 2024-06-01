# Definição do método, para ordenar um array usando o algoritmo Bubble Sort.
def bublle_sort(array)
n = array.length # Determina o tamanho do array.
  loop do
    swapped = false # Variável para controlar se houve trocas durante a iterração.

    # Laço para percorrer o array e comparar elementos adjacentes.
    (n - 1).times do |i|
      if array[i] > array[i + 1] # Verifica se o elemento atual é maior que o próximo.
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true # Indica que uma troca foi realizada.
      end
    end

    break unless swapped
  end

  array
end

# Exemplo de uso
array = [64, 34, 25, 12, 22, 11, 90]
sorted_array = bublle_sort(array)
puts "Array ordenado: #{sorted_array}"