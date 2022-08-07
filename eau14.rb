#!/usr/bin/env ruby

#programme qui trie une liste de nombres. Votre programme devra implementer l'algorithme du tri par selection.afficher error sinon
#https://fr.wikipedia.org/wiki/Tri_par_s%C3%A9lection

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
def mySelectSort(array)
        n = longueurArgument(array)
	i = 0
        while i <= n - 2
		min = i
                j = i + 1
                while j <= n - 1
                        if array[j] < array[min]
				min = j
                        end
			#puts displayArray(array)
                        j = j + 1
                end
                if min != i
			 temp = array[min]
                         array[min] = array[i]
                         array[i] = temp
                end
                #puts displayArray(array)
		i = i + 1
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
        puts displayArray(mySelectSort(array))
end

