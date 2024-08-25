# O fatorial de um número "N" é o produto de todos os inteiros positivos menores ou iguais a "N". É utilizado em muitas áreas da matemática, incluindo combinações e permutações.

def factorial(n)
# Retorna 1 se "N" for 0, pois o fatorial de 0 é 1
return 1 if n == 0

# Inicializa o resultado com 1
result = 1

    (1..n).each do |i|
        result *= i
    end
    result
end

puts factorial(5)

#Versão iterativa

def factorial(n)
    (1..n).reduce(1, :*)
end

puts factorial(5)