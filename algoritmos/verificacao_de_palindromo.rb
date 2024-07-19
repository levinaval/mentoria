# Um palíndromo é uma palavra, frase ou número que lido da mesma forma de trás para frente.

def palindrome?(string)
    # Remove espaços e converte para minúsculas.
    sanitized_string = string.downcase.gsub(/\s+/, "")

    # Compara a string sanitizada com sua reversa.
    sanitized_string == sanitized_string.reverse
end

puts palindrome?("A man a plan a canal panama")