#!/usr/bin/env ruby

#programme qui affiche le premier index d' un element recherche dans un tableau. Le tableau est constitue de tous les arguments sauf le dernier. L'element recherche est le dernier argument. Afficher -1 si l'element n'est pas trouve

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

#fonction pour trouver une chaine de caracteres dans une string, comme .index() ou find()
def trouverDansString(chaine, caracs)
        sortie = "false"
        lgchaine = longueurArgument(chaine)
	lgcaracs = longueurArgument(caracs)
        i = 0
        while i <= lgchaine - lgcaracs && sortie == "false"
                if chaine[i,lgcaracs] == caracs
                        sortie = "true"
                        index = i
                end
                i = i + 1
        end
        return index, sortie
end

#coeur du programme
if nombreArgument() < 2
	puts "error"
else
	i = 0
	index = -1
	while i <= nombreArgument() - 2 && index == -1
		#test si le dernier argument est present dans les autres (meme si l'argument est plus long)
		# #test si le dernier argument est STRICTEMENT egal aux autres
		if trouverDansString(ARGV[i], ARGV[nombreArgument()-1])[1] == "true" #ARGV[i] == ARGV[nombreArgument()-1]
			index = i
		end
		i = i + 1
	end
	puts index
end
