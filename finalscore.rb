#Mostrando la tabla de puntuaciones.
p "SCORE TABLE"
scoreplayers.each_with_index do |values, index|
	if values != 0
		p "Player #{(index+1)} has #{values}"
	end
end
#Descubriendo el ganador
winner = scoreplayers.rindex(scoreplayers.max)
#Mostrando al ganador
p "Congratulations PLAYER #{winner +1}, you won with #{scoreplayers[winner]} points." 