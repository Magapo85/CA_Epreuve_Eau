#!/usr/bin/env ruby

#affiche le N-ieme Ãelement de la celebre suite de Fibonacci. (0, 1, 1, 2) etant le debut de la suite et le premier ©element etant a l'index 0, Afficher -1 si le parametre est negatif ou mauvais.

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
if nombreArgument != 1 || (ARGV[0] != "0" && ARGV[0].to_i <= 0) || fauxEntier(ARGV[0]) == "erreur"
	puts "-1" #erreur
else
	f0 = 0
	f1 = 1
	if ARGV[0].to_i == 0
		puts f0
	elsif ARGV[0].to_i == 1
		puts f1
	else
		a = 0
		fnewA2 = f0
		fnewA1 = f1
		while a <= ARGV[0].to_i - 2
			fnew = fnewA1 + fnewA2
			fnewA2 = fnewA1
			fnewA1 = fnew
			a = a + 1 
		end
		puts fnew
	end
end
