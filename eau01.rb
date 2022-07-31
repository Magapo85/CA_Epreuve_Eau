#!/usr/bin/env ruby

#programme qui affiche toutes les differentes combinaisons possibles de trois chiffres dans l'ordre croissant, dans l'ordre croissant qui comporte exclusivement des chiffres differents les uns des autres

#fonction utile qui mesure la longueur d'une array ou string comme .length()
def longueurArgument(mot)
        i = 0
        while mot[i]
                i += 1
        end
        return i
end

#fonction qui compare deux chaines de caracteres pour savoir si les 3 caracteres a la fois sont differents entre les deux chaines
def unique(array, new)
	sortie = "erreur"
	if !(array[0] == new[0] && array[1] == new[1] && array[2] == new[2]) && !(array[0] == new[0] && array[1] == new[2] && array[2] == new[1]) && !(array[0] == new[1] && array[1] == new[0] && array[2] == new[2]) && !(array[0] == new[1] && array[1] == new[2] && array[2] == new[0]) && !(array[0] == new[2] && array[1] == new[0] && array[2] == new[1]) && !(array[0] == new[2] && array[1] == new[1] && array[2] == new[0])
		sortie = "ok"
	end
	return sortie
end

#coeur du programme
i = 0
new = ""
sortie = ""
array = [] #pour verifier si c'est bien unique
while i <= 999
	#mettre la meme longueur de la chaine de caractere a 3
	if longueurArgument(i.to_s) == 1
		new = "00" + i.to_s
	elsif longueurArgument(i.to_s) == 2 
		new = "0" + i.to_s
	else	
		new = i.to_s
	end
	faux = 0
	if new[0] != new[1] && new[1] != new[2] && new[0] != new[2] #test si les caractees de la chaines sont tous differents 
		a = 0 
		while a <= longueurArgument(array) - 1 && faux == 0
			if unique(array[a], new) == "erreur"
				faux = 1
			end
			a = a + 1
		end
		if faux == 0
			sortie = sortie + new + ", "
			array.push(new)
		end
	end
	i = i + 1
end
sortie = sortie[0...-2] 
puts sortie
