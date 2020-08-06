def bemVindo
    #puts é a String sysout do java, a forma de mostart a mensaagem na tela
    puts "Jogo de adivinhar!"
    puts "Qual seu nome"
    #gets é a forma de entrada, como voce vai interagir com o codigo
    nome = gets
    puts "\n\n" 
    #+ esta concatenando 
    puts "Vamos Jogar! " + nome
end    

def sorteandoNumero
    puts "Escolhendo um número entre 0 e 200..."
    numeroEscolhido = 180
    puts "Escolhido! agora é sua vez"
    #forma de atribuir valor ao objeto
    numeroEscolhido
end

def pedeUmNumero(tentativas, limiteDeTentativa)
    puts "\n\n" 
    puts "tentativa " + tentativas.to_s + " de " + limiteDeTentativa.to_s 
    puts "digite o seu chute ?"
    #forma de pular linha sem adicionar diversos puts
    chute = gets
    puts "Sera que voce acertou ??"
    #forma de substituir o valor de texto string para int
    #forma de condicionar a mensagem!
    chute
end

def verificaSeAcertou(numeroEscolhido, chute)
    acertou = chute.to_i == numeroEscolhido.to_i 
    if acertou
        puts "Acertou !"
        return true
    end
        maior = numeroEscolhido.to_i > chute.to_i
        if maior
            puts "O numero é maior do que o chute"
        else
            puts "O numero é menor do que o chute"
        end
        false    
end

bemVindo
numeroEscolhido = sorteandoNumero
limiteDeTentativa = 5

for tentativas in 1..limiteDeTentativa
  chute = pedeUmNumero tentativas, limiteDeTentativa
  if verificaSeAcertou numeroEscolhido, chute
    break
  end
end
