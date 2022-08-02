#!/usr/bin/env ruby

#programme qui met en majuscule une lettre sur deux d'une chaine de caracteres. Seule les lettres (A-Z, a-z) sont prises en compte Afficher error

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
def trouverDansArray(carac, array1, array2)
        sortie = 0
        index = longueurArgument(array1)
        i = 0
        while i < longueurArgument(array1) && sortie == 0
                if array1[i] == carac || array2[i] == carac
                        sortie = 1
                        index = i
                end
                i = i + 1
        end
        return index, sortie
end

def trouverLettre(carac, etat)
	maj = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
	min = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'] 
	i, pastrouve = trouverDansArray(carac, maj, min) 
	if pastrouve == 0 
		new = carac
	else
		if etat == 0
			new = maj[i] 
			etat = 1
		else
		        new = min[i]
                        etat = 0
		end
	end
	return new, etat
end

def atlMajMin(mot)
	i = 0
	etat = 0 #0=maj;1=min
	sortie = ""
	while mot[i]
		new, etat = trouverLettre(mot[i], etat)
		sortie = sortie + new
		i = i + 1
	end
	return sortie
end

if nombreArgument != 1 || (ARGV[0] != "0" && ARGV[0].to_i != 0)
        puts "error"
else
	puts atlMajMin(ARGV[0])
end
