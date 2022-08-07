#!/usr/bin/env ruby

#programme qui trie une liste de nombres. Votre programme devra implementer l'algorithme du tri a bulle.afficher error sinon
#https://fr.wikipedia.org/wiki/Tri_%C3%A0_bulles

require 'bigdecimal'
require 'bigdecimal/util' #to_d

#fonction utile qui trouve le nombre d'argument comme .length()
def nombreArgument
        i = 0
        while ARGV[i]
                i += 1
        end
        return i
end
#fonction utile qui mesure la longueur d'une array ou string comme .length()
def longueurArgument(mot)
        i = 0
        while mot[i]
                i += 1
        end
        return i
end

#fonction pour trouver un caractere dans un array, comme .index()
def trouverDansArray(carac, array)
        sortie = "ok"
        index = longueurArgument(array)
        i = 0
        while i < longueurArgument(array) && sortie == "ok"
                if array[i] == carac
                        sortie = "erreur"
                        index = i
                end
                i = i + 1
        end
        return index, sortie
end

#fonction utile qui test si l'argument (nombre suppose entier) contient . ou , avant conversion et calcul 
def fauxFloatEntier()
	i = 0
	sortie = "ok"
	while ARGV[i] && sortie == "ok"
        	if trouverDansArray(",", ARGV[i])[1] == "erreur" || (ARGV[i] != (ARGV[i].to_i).to_s && ARGV[i] != (ARGV[i].to_f).to_s)
                	sortie = "erreur"
		end
		i = i + 1
	end
	return sortie
end

#fonction utile qui realise le trie suivant la methode a bulle
def myBubbleSort(array)
	i = longueurArgument(array) - 1
	sortie = false
	while i >= 1 && sortie == false
		etat = true
		j = 0
		while j <= i - 1
			if array[j+1] < array[j]
				temp = array[j]
				array[j] = array[j+1]
				array[j+1] = temp
				etat = false			
			end
			#puts displayArray(array)
			j = j + 1
		end
		i = i - 1
		if etat == true
			sortie = true
		end
		#puts displayArray(array)
	end	
	return array #new_array
end

def displayArray(array)
	sortie = ""
        i = 0
        while array[i]
                sortie = sortie + (array[i].to_f).to_s + " "
                i = i + 1
        end
        sortie = sortie[0...-1]
	return sortie
end

#coeur du programme
if nombreArgument <= 1 || fauxFloatEntier() == "erreur"
	puts "error"
else	
	array = []
	i = 0
	while ARGV[i]
		array.push(ARGV[i].to_d)
		i = i + 1
	end	
	puts displayArray(myBubbleSort(array))
end
