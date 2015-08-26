class Ask
	def question(player, roll)
		number = 0
		while (number <= 0) || (number >= 7)
			p "Insert from Player #{player.to_s} roll #{roll.to_s} (Insert a number between 1 and 6)"
			respuesta = gets.chomp
			numbre = respuesta.to_i
		end
		return number
	end
end