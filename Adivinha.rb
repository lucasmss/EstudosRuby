puts 'Jogo de adivinhar!'
puts 'Qual seu nome'
nome = gets
puts
puts
puts 'Vamos Jogar! ' + nome
puts
puts
puts 'Escolhendo um número entre 0 e 200...'
puts 'Escolhido! agora é sua vez'
numeroEscolhido = 180
puts 'Primeira tentativa'
puts 'digite o seu chute ?'
chute = gets
puts 'Sera que voce acertou ??'
puts chute.to_i == numeroEscolhido
