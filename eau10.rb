#!/usr/bin/env ruby

#programme qui affiche toutes les valeurs comprises entre deux nombres dans l'ordre croissant. Min inclus, max exclus. afficher error sinon

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
def fauxEntier(nombre)
        if trouverDansArray(",", nombre)[1] == "erreur" || trouverDansArray(".", nombre)[1] == "erreur"
                return "erreur"
	else	
		return "ok"
	end
end

#coeur du programme
if nombreArgument != 2 || ARGV[0] != (ARGV[0].to_i).to_s || fauxEntier(ARGV[0]) == "erreur" || fauxEntier(ARGV[1]) == "erreur"
        puts "error"
else
	sortie = ARGV[0]
	debut = ARGV[0].to_i + 1
	while debut < ARGV[1].to_i
		sortie = sortie + " " + debut.to_s
		debut = debut + 1 
	end
        puts sortie
end
