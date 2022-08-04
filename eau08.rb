#!/usr/bin/env ruby

#programme qui met en majuscule la premiere lettre de chaque mot d'une chaine de caracteres. Les autres lettres devront etre en minuscules. Les mots ne sont delimites que par un espace, une tabulation ou un retour a la ligne Afficher error

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
def trouverDansArray(carac, array1, array2, sepMot)
        sortie = 0
        index = longueurArgument(array1)
	if longueurArgument(carac) == 1
		i = 0
		while i < longueurArgument(array1) && sortie == 0
                	if array1[i] == carac || array2[i] == carac
                        	sortie = 1
                        	index = i
                	end
                	i = i + 1
		end
	else	
		i = 0
        	while i < longueurArgument(sepMot) && sortie == 0
			if carac[0] == sepMot[i]
				b = 0 
				while b < longueurArgument(array1) && sortie == 0
					if array1[b] == carac[1] || array2[b] == carac[1]
                        			sortie = 1
                        			index = b
					end
					b = b + 1
				end
                	end
                	i = i + 1
		end
        end
        return index, sortie
end

def trouverLettre(carac)
        maj = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
        min = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	sepMot = [' ','		','\n'] #['\r','\s','\b','\n']
        i, pastrouve = trouverDansArray(carac, maj, min, sepMot)
        if pastrouve == 0
                new = carac[0]
        else
                new = maj[i]
        end
        return new
end

def putMaj(mot)
        i = 1
        sortie = ""
	sortie = sortie + trouverLettre(mot[0])
        while mot[i]
                new = trouverLettre(mot[i-1]+mot[i])
                sortie = sortie + new
                i = i + 1
        end
        return sortie
end

if nombreArgument != 1 || (ARGV[0] != "0" && ARGV[0].to_i != 0)
	puts "error"
else
	puts putMaj(ARGV[0])
end
