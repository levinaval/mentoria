# A sequência de Fibonacci é uma série de números onde cada número é a soma dos dois anteriores. É frequentemente usada em algoritmos e teoria dos números.

def fibonacci(n)
# Retorna "N" diretamente se for 0 ou 1, pois os primeiros dois números de Fibonacci são 0 e 1
return n if n <= 1

# Inicializa os dois primeiros números de sequência
a, b = 0, 1

# Calcula o n-ésimo número de Fibonacci
    (n-1).times do
        a, b = b, a + b
    end

    b
end

puts fibonacci(7)