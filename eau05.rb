#!/usr/bin/env ruby

#affiche le premier nombre premier superieur au nombre donnee en argument , Afficher -1 si le parametre est negatif ou mauvais.

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

#fonction utile qui test si l'argument (nombre entier positif) est primaire ou non
#Source theorie : https://fr.wikipedia.org/wiki/Test_de_primalité  ; https://fr.wikipedia.org/wiki/Théorème_de_Wilson
def primalite(nombre)
	i = 3
	sortie = "erreur"
	if !(nombre.to_i % 2 == 0)
		sortie = "ok" 
		while i < (nombre ** 0.5).to_i + 1 && sortie == "ok"
			if nombre % i == 0
				sortie = "erreur"
			end
			i = i + 1 # + 2
		end
	end
	return sortie 
end

#coeur du programme
if nombreArgument != 1 || (ARGV[0] != "0" && ARGV[0].to_i <= 0) || fauxEntier(ARGV[0]) == "erreur"
        puts "-1" #erreur
else
	if ARGV[0].to_i == 0 || ARGV[0].to_i == 1
		puts "2"
	elsif  ARGV[0].to_i == 2
	 	puts "3"
	else
		i = 1
		while primalite(ARGV[0].to_i + i) == "erreur"
			i = i + 1
		end
		puts (ARGV[0].to_i + i).to_s
	end 
end
