#!/usr/bin/env ruby

#un programme qui celebre votre victoire sur l'epreuve eau
hasard = Random.new
adjectif = ["acre","agreable","aigre","aigu","amer","assourdissant","beau","beuglant","bourru","bref","bruyant","calme","choquant","circulaire","clair","collant","colossal","coquin","creux","degoutant","delectable","delicieux","deprimant","derangeant","difficile", "douceatre","douloureux","doux","droit","dur","effrayant","ennuyant","enorme","epice","epuisant","etroit","exasperant","exigu","exquis", "facile", "fade","fatiguant","ferme","fourbe", "frais","frustrant", "fun","gai","genant","gentil","geometrique","gigantesque","glacant","glissant","gouteux","grand","grincant","honteux","horrible","immense","important","imposant","infime","insipide","jovial","juteux","large","lent","long","maigre","malicieux","mat","mauvais","mechant","melancolique","menu","minuscule","moderne","moelleux","monumental","mou","mouillant","pacifique","percant","perplexe","perturbant","petit","piquant","plat","plein d'espoir","pointu","precipite","pretentieux","primitif","prompt","prudent","raide","rapide","recent","rectangulaire","retentissant","rond","roucoulant","sale","sec","seculaire","simple","souffrant","souple","spacieux","succulent","sucre","tardif","tendre","tonnant","tordu","tranchant","tranquille","triangulaire","triste","vaste","vetuste","vieux"]
puts "J'ai terminé l'épreuve de l'Eau et c'était " + (adjectif[hasard.rand(adjectif.length()-1)].bytes).to_s + " et désaltérant."

=begin
	char/string to ASCII :
	"a".ord
	"abc".bytes
	ASCII to char/string :
	97.chr
	[97,98,99,100].pack('c*')
=end
