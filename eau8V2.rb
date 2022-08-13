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

def putMaj(mot)
	maj = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
	min = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	sepMot = [' ','         ','\n'] #['\r','\s','\b','\n']
	sortie = ""
	new = ""
	for carac in 0...longueurArgument(mot)
		sep = 0
		if carac == 0
			sep = 1
		else
			for caracSep in 0...longueurArgument(sepMot)
				if mot[carac-1] == sepMot[caracSep]
					sep = 1
					break
				end
			end
		end
		index = -1
		for caracArr in 0...longueurArgument(maj)
			if maj[caracArr] == mot[carac] || min[caracArr] == mot[carac]
				index = caracArr
				break
			end
		end
		if index > -1
			if sep == 1
				new = maj[index]
			else
				new = min[index]
			end
		else
			new = mot[carac]
		end
		sortie = sortie + new
	end
	return sortie
end

#coeur du programme
if nombreArgument != 1
	puts "error"
else
	puts putMaj(ARGV[0])
end
