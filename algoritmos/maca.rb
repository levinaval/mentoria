def prompt(message)
    puts message
    gets.chomp.to_f
end

def handle_maca
    puts "Levante e vá até a geladeira."

    encontrou = prompt("Abra a geladeira e olhe onde está a maçã. Encontrou? 1 - Sim 2 - Não")

    case encontrou
    when 1
        escolha = prompt("Pegue a maçã. Vai querer cortar ou comer inteira? 1 - Cortar 2 - Inteira")
        if escolha == 1
            puts "Lave a fruta. Pegue a faca, corte a maçã e cologue no prato. e tenha um bom apetite!"
            elsif escolha == 2
                puts "Lave a fruta e tenha um bom apetite!"
            else
                puts "Opção não valida!"
        end
    when 2
        puts "Você vai ter que ir ao mercado."
    else
        puts "Opção não válida!"
    end
end

loop do
    option = prompt("Você quer uma maçã? 1 - Sim 2 - Não")

    case option
    when 1
      handle_maca
      break
    when 2
        puts "Entendi. Você não quer uma maçã!"
        break
    else
        puts "Opção inválida!"        
    end
end