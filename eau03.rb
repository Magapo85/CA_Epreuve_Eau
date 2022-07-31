#!/usr/bin/env ruby

#programme qui affiche ses arguments recus a l'envers

#fonction utile qui trouve le nombre d'argument comme .length()
def nombreArgument
        i = 0
        while ARGV[i]
                i += 1
        end
        return i
end

#coeur du programme
i = nombreArgument() - 1
while i >= 0
	puts ARGV[i]
	i = i - 1
end
