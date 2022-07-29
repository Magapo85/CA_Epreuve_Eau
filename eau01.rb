#!/usr/bin/env ruby

#programme qui affiche toutes les differentes combinaisons possibles de trois chiffres dans l'ordre croissant, dans l'ordre croissant qui comporte exclusivement des chiffres differents les uns des autres


def unique(array, new)
	if array[0] = new[0] && array[1] = new[1] && array[2] = new[2]
		return false
	elsif array[0] = new[0] && array[1] = new[2] && array[2] = new[1]
		return false
	elsif array[0] = new[1] && array[1] = new[0] && array[2] = new[2]
		return false
	elsif array[0] = new[1] && array[1] = new[2] && array[2] = new[0]
		return false
	elsif array[0] = new[2] && array[1] = new[0] && array[2] = new[1]
		return false
	elsif array[0] = new[2] && array[1] = new[1] && array[2] = new[0]
		return false
	else
		return true
	end
end

i = 0
new = ""
sortie = ""
array = []
while i <= 999
	if i.to_s.length() == 1
		new = "00" + i.to_s
	elsif i.to_s.length() == 2 
		new = "0" + i.to_s
	else	
		new = i.to_s
	end
	b = 0
	if new[0] != new[1] && new[1] != new[2] && new[0] != new[2] 
		array[b] = new
		a = 0 
		while a <= array.length() - 1
			if unique(array[a], new) == true
				sortie = sortie + new + ", "
			end
		end
		b = b + 1
	end
	i = i + 1
end 
puts sortie
