# O algoritmo de Euclides é um método eficiente para encontrar o maior divisor comum de dois números.

def gcd(a, b)
    # Utiliza a recursão para calcular o MDC.
    return a if b == 0
    gcd(b, a % b)
end

puts gcd(48, 18)