def chiffre_de_cesar(chosen_string,number)
	@chosen_string = chosen_string
	@number = number

# On convertit le string en array pour pouvoir travailler sur le ASCII
	@chosen_string = @chosen_string.chars

# On convertit chaque string de l'array en chiffre
# On rajoute une condition sur les caractères non alphanumériques pour les conserver en l'état
# On ajoute le number aux caractères alphanumériques
# On reconvertit le tout en string avec .chr


	@chosen_string.map! {|string| 
		if (string !~ /[^[:alnum:]]/ )
			(((string.ord + number - 97).modulo(26)) + 97).chr
		else string
		end
	}

# On reconvertit en string
	@chosen_string = @chosen_string.join

print @chosen_string

end 


chiffre_de_cesar("Salut !", 8)




# Pour chosen_string
# Convertir chosen_string to an array of character
# prendre la lettre
# la convertir en nombre
# ajouter le "number"
# reconvertir en string


# if ($value =~ m/[^a-zA-Z0-9]/)


# a = "ceci est un test"

# Pour convertir en array  >>    a = a.chars
# Pour convertir en string >>    a = a.join
