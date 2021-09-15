json.peliculas @peliculas, :id, :titulo do |pelicula|
	json.id pelicula.id
	json.nombre pelicula.nombre 
	json.iconos peliculas.personajes 	
end