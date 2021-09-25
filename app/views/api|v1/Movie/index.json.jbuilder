json.peliculas @peliculas, :id, :title do |movie|
	json.id movie.id
	json.nombre movie.name 
	json.icons movie.characters 	
end