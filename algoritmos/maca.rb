puts "Você quer uma maçã? 1 - Sim 2 - Não"
option = gets.chomp.to_f 

if option == 1
    puts "Levante e vá até a geladeira."
elsif option == 2
    puts "ok"
else
    puts "Opção invalida!"
end