class Calc
	def sum(dices)
		score = 0
		number = [0, 0, 0, 0, 0, 0]
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
	p "#{number.map { |i| "'" + i.to_s + "'" }.join(",")}"
	end
end

prueba = Calc.new
p prueba.sum([1, 1, 6, 4, 3])