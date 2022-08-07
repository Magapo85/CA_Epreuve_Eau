#!/usr/bin/env ruby

#programme qui affiche la difference minimum absolue entre deux elements d'un tableau constitue uniquement de nombres. Nombres negatifs acceptes afficher error sinon
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

#coeur du programme
if nombreArgument <= 1 || fauxFloatEntier() == "erreur"
#commentaire bloc
=begin
	i = 0
	while ARGV[i]
		puts ARGV[i]
		puts ARGV[i].to_i
		puts ARGV[i].to_f
		i = i + 1
	end
=end
        puts "error"
else
	#puts BigDecimal(BigDecimal(ARGV[0]) - BigDecimal(ARGV[1]))
	#puts (ARGV[0].to_d - ARGV[1].to_d).to_d
=begin
	puts ARGV[0]
        puts ARGV[1]
	puts ARGV[0].to_s
        puts ARGV[1].to_s
	puts ARGV[0].to_i
	puts ARGV[1].to_i
	puts ARGV[0].to_f
        puts ARGV[1].to_f
	puts ARGV[0].to_d
        puts ARGV[1].to_d
=end
	sortie = (((ARGV[0].to_d - ARGV[1].to_d).to_d ** 2).to_d ** 0.5).to_d
	a = 0
	while a <= nombreArgument() - 2
		b = a + 1
		while ARGV[b]
			if (((ARGV[a].to_d - ARGV[b].to_d).to_d ** 2).to_d ** 0.5).to_d < sortie
				sortie = (((ARGV[a].to_d - ARGV[b].to_d).to_d ** 2).to_d ** 0.5).to_d
			end
			b = b + 1
		end
		a = a + 1
	end
        puts sortie.to_f
end
