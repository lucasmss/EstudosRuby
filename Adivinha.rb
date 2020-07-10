#puts é a String do java, a forma de mostart a mensaagem na tela
puts "Jogo de adivinhar!"
puts "Qual seu nome"
#gets é a forma de entrada, como voce vai interagir com o codigo
nome = gets
puts "\n\n" 
#+ esta concatenando 
puts "Vamos Jogar! " + nome
puts "Escolhendo um número entre 0 e 200..."
puts "Escolhido! agora é sua vez"
#forma de atribuir valor ao objeto
numeroEscolhido = 180

limiteDeTentativa = 5

for tentativas in 1..limiteDeTentativa
    puts "\n\n" 
    puts "tentativa " + tentativas.to_s + " de " + limiteDeTentativa.to_s 
    puts "digite o seu chute ?"
    #forma de pular linha sem adicionar diversos puts
    chute = gets
    puts "Sera que voce acertou ??"
    #forma de substituir o valor de texto string para int
    #forma de condicionar a mensagem!
    acertou = chute.to_i == numeroEscolhido 
    if acertou
        puts "Acertou !"
        break
    else
        maior = numeroEscolhido > chute.to_i
        if maior
            puts "O numero é maior do que o chute"
        else
            puts "O numero é menor do que o chute"
        end    
    end
end
