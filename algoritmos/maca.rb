def prmpt(message)
    puts message
    gets.chomp.to_f
end

def handle_maca
    puts "Levante e vá até a geladeira."
end

loop do
    puts "Você quer uma maçã? 1 - Sim 2 - Não"
    option = gets.chomp.to_f 

    if option == 1
        puts "Levante e vá até a geladeira."
    elsif option == 2
        puts "Entendi. Você não quer uma maçã!"
        exit
    else
        puts "Opção inválida!"
    end
end

loop do
    puts "Abra a geladeira e olhe onde está a maçã."
    puts "Encontrou? 1 - Sim 2 - Não" 
    encontrou = gets.chomp.to_f

    if encontrou == 1
        puts "Pegue a maçã, vai querer cortar ou comer inteira? Cortar - 1 Inteira - 2"
        escolha = gets.chomp.to_f
        if escolha == 1
            puts "Lave a fruta. Pegue a faca, corte a maçã e coloque no prato. E um bom apetite!" 
        elsif escolha == 2
            puts "Lave a fruta e tenha um bom apetite!"
        end
    elsif encontrou == 2
        puts "Você vai ter que ir ao mercado!"
    else
        puts "Opção não válida!"
    end
end