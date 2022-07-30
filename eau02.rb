#!/usr/bin/env ruby

#programme qui affiche toutes les differentes combinaisons possibles de trois chiffres dans l'ordre croissant, dans l'o$

#fonction pour verifier si deux chaines de caracteres on les 2 caracteres a la fois differents
def unique(array, new)
        sortie = "erreur"
        if !(array[0] == new[0] && array[1] == new[1]) && !(array[0] == new[1] && array[1] == new[0])
                sortie = "ok"
	end
        return sortie
end

#coeur du programme
i = 0
new = ""
sortie = ""
array = []
while i <= 99
        if i.to_s.length() == 1
                new = "0" + i.to_s
        else
                new = i.to_s
        end
        faux = 0
        if new[0] != new[1]
                a = 0
                while a <= array.length() - 1 && faux == 0
                        if unique(array[a], new) == "erreur"
                                faux = 1
                        end
                        a = a + 1
                end
                if faux == 0
                        sortie = sortie + new + ", "
                        array.push(new)
                end
        end
        i = i + 1
end
sortie = sortie[0...-2]
puts sortie
