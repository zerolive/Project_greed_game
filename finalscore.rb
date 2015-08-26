scoreplayers = [1, 2, 3, 4, 5]

scoreplayers.each_with_index do |values, index|
p "Player #{(index+1)} has #{values}"
end