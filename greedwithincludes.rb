
require calc.rb
require ask.rb

#Empezando la partida.
p "WELCOME TO GREED GAME"
#Preguntando el numero de jugadores y asegurando que sean válidos.
numberplayers = 0
while (numberplayers <=1) || (numberplayers >= 6)
	p "Please insert number uf players (Between 2 and 5):"
	respuesta = gets.chomp.to_i
	numberplayers = respuesta.to_i
end

#Pidiendo las tiradas.
bestscore = 0
scoreplayers = [0, 0, 0, 0, 0]
round = 1
#comprovando si alguien llega a los 3000 puntos
while bestscore <= 2999
	p "ROUND #{round} STARTS!"
	jugador = 1
	#Pidiendo las tiradas de cada jugador.
	while jugador <= numberplayers
		tirada = 0
		dados = [0, 0, 0, 0, 0]
		#Pidiendo las tiradas por separado.
		while tirada <= 4
			preguntando = Ask.new
			dados[tirada] = preguntando.question(jugador, (tirada+1))
			tirada += 1
			p "#{dados.map { |i| "'" + i.to_s + "'" }.join(",")}"
		end
		#calculando el valor de las tiradas
		calculando = Calc.new
		scoreplayers[(jugador -1)] += calculando.sum(dados)
		jugador += 1
	end
	bestscore = scoreplayers.max
	round += 1
	p "#{scoreplayers.map { |i| "'" + i.to_s + "'" }.join(",")}"
end

#pidiendo últimas tiradas de cada jugador
jugador = 1
p "LAST ROLLS"
while jugador <= numberplayers
	#comprobando que jugador no tiene que tirar
	if scoreplayers[(jugador -1)] != bestscore
		tirada = 0
		dados = [0, 0, 0, 0, 0]
		#Pidiendo las tiradas por separado.
		while tirada <= 4
			preguntando = Ask.new
			dados[tirada] = preguntando.question(jugador, (tirada+1))
			tirada += 1
			p "#{dados.map { |i| "'" + i.to_s + "'" }.join(",")}"
		end
		#calculando el valor de las tiradas
		calculando = Calc.new
		scoreplayers[(jugador -1)] += calculando.sum(dados)
		jugador += 1
	end
	jugador +=1
end

p "#{scoreplayers.map { |i| "'" + i.to_s + "'" }.join(",")}"
#Mostrando la tabla de puntuaciones.
p "SCORE TABLE"
scoreplayers.each_with_index do |values, index|
	if values != 0
		p "Player #{(index+1)} has #{values}"
	each_with_index
end
#Descubriendo el ganador
winner = scoreplayers.rindex(scoreplayers.max)
#Mostrando al ganador
p "Congratulations PLAYER #{winner +1}, you won with #{scoreplayers[winner]} points." 