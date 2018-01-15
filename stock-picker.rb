# def trader_du_dimanche

def trader_du_dimanche (prices)
	@prices = prices

# On utilise la taille du tableau
s = prices.size

# On initialise la variable qui prend la plus grande différence
max_difference = 0

# Pour chaque élément du tableau on compare avec les éléments suivants
for i in (0..s) do
	if 
		for e in ((i+1)..8) do
		difference = prices[i] - prices[e]
# On compare la différence trouvée avec la différence maximale et on stocke les résultats
			if difference < max_difference
			max_difference = difference
			jour_min = i
			jour_max = e
			price_min = prices[i]
			price_max = prices[e]
			end
		end
	end
end

# On prend la valeur absolue de la différence pour l'afficher
max_difference = max_difference.abs

print "[#{jour_min}, #{jour_max}] # $#{price_max} - $#{price_min} == $#{max_difference}"

end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])
