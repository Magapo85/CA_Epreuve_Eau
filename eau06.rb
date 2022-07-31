#!/usr/bin/env ruby

#determine si une chaine de caractere se trouve dans une autre

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
        while i < lgchaine - lgcaracs && sortie == "false"
                if chaine[i,lgcaracs] == caracs
                        sortie = "true"
                        index = i
                end
                i = i + 1
        end
        return index, sortie
end

if nombreArgument() != 2
	puts "error"
else
	puts trouverDansString(ARGV[0], ARGV[1])
end
