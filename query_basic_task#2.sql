/* seleccione la columna nombre de autor y la columna id de libro e hice un proceso de conteo para saber cuantos libros habian y llame a la columna como total_libros,
luego realice un JOIN para relacionar las FK y asi poder luego "filtrarlos" para agruparlos por su autor id y nombre autor */

SELECT
	`nombre`,
    COUNT(l.id) AS `total_libros`

FROM `autor` `a`
JOIN `libro` `l` ON `a`.`id` = `l`.`idAutor`
GROUP BY `a`.`id`, `nombre`