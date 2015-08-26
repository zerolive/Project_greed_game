#Clase para calcular el valor de las tiradas.
class Calc
	def sum(dices)
		score = 0
		number = [0, 0, 0, 0, 0, 0]
		#Mirando las tiradas.
		dices.each do |values|
			if values == 1
				number[0] += 1
			elsif values == 2
				number[1] +=1
			elsif values == 3
				number[2] +=1
			elsif values == 4
				number[3] +=1
			elsif values == 5
				number[4] +=1
			else
				number[5] +=1
			end
		end
		#Calculando los 1
		if number[0] == 1
			score += 100
		elsif number[0] == 2
			score += 200
		elsif number[0] == 3
			score += 1000
		elsif number[0] == 4
			score += 1100
		elsif number[0] == 5
			score += 1200
		end
		#calculando los 2
		if number[1] == 3
			score += 200
		end
		#calculando los 3
		if number[2] == 3
			score += 300
		end
		#calculando los 4
		if number[3] == 3
			score += 400
		end
		#calculando los 5
		if number[4] == 1
			score += 50
		elsif number[4] == 2
			score += 100
		elsif number[4] == 3
			score += 500
		elsif number[4] == 4
			score += 550
		elsif number[4] == 5
			score += 600
		end
		#calculando los 6
		if number[5] == 3
			score += 600
		end
	return score
	end
end

#Clase para preguntar las tiradas y asegurarse que es válida
class Ask
	def question(player, roll)
		number = 0
		while (number <= 0) || (number >= 7)
			p "Insert from Player #{player.to_s} roll #{roll.to_s} (Insert a number between 1 and 6)"
			number = gets.chomp.to_i
		end
		return number
	end
end

#Empezando la partida.
p "WELCOME TO GREED GAME"
#Preguntando el numero de jugadores y asegurando que sean válidos.
numberplayers = 0
while (numberplayers <=1) || (numberplayers >= 6)
	p "Please insert number uf players (Between 2 and 5):"
	numberplayers = gets.chomp.to_i
end

#Pidiendo las tiradas.
bestscore = 0
scoreplayers = [0, 0, 0, 0, 0]

while bestscore <= 3000
	turn = 1
	#Pidiendo las tiradas de cada jugador.
	while turn <= numberplayers
		dice = 1
		dados = [0, 0, 0, 0, 0]
		#Pidiendo las tiradas por separado.
		while dice <= 5
			preguntando = Ask.new
			dados[dice] = preguntando.question(turn, dice)
			dice += 1
		end
		turn += 1
	end
end