#!/usr/bin/env ruby

#programme qui determine si une chaine de caracteres ne contient que des chiffres, afficher error sinon

#fonction utile qui trouve le nombre d'argument comme .length()
def nombreArgument
        i = 0
        while ARGV[i]
                i += 1
        end
        return i
end

#coeur du programme
if nombreArgument != 1 
	puts "error"
elsif (ARGV[0] != "0" && ARGV[0] == (ARGV[0].to_i).to_s) || ARGV[0] == "0"
        puts "true"
else
        puts "false"
end

