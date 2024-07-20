# Este algoritmo verifica se um número é primo, ou seja, se ele é divisível apenas por 1 e por ele mesmo. 

def prime?(n)
    # Retorna falso para números menores que 2
    return false if n < 2
    
    # Verifica divisibilidade de 2 até a raiz quadrada de n
    (2..Math.sqrt(n)).each do |i|
      return false if n % i == 0
    end
    
    true
  end
  
  
  puts prime?(11)  
  puts prime?(4)   
  
  
