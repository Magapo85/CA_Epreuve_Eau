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

def atlMajMin(mot)
	maj = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
	min = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	etat = 0 #0=maj;1=min en premier
	sortie = ""
	new = ""
	for carac in 0...longueurArgument(mot)
		trouvee = 0
		for caracArr in 0...longueurArgument(maj)
			if trouvee == 0
				if maj[caracArr] == mot[carac] || min[caracArr] == mot[carac]
					if etat == 0
						new = maj[caracArr]
						etat = 1
					else
						new = min[caracArr]
						etat = 0
					end
					trouvee = 1
				else
					new = mot[carac]	
				end
			end
		end
		sortie = sortie + new
	end
	return sortie
end

if nombreArgument != 1 
        puts "error"
else
	puts atlMajMin(ARGV[0])
end
