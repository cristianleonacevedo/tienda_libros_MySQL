-- Traemos todos los datos de la tabla libros y filtramos los datos con un WHERE, para sacar los registros de los libros que se lanzaron despues de 1980, y los ordene con ORDER BY de forma ASC

SELECT 
	*
FROM `libro`
WHERE `anio_publicacion` > '1980-01-01'
ORDER BY `anio_publicacion` ASC