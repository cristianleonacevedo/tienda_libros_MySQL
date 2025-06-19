/* seleccione la columna nombre de cliente y la columna fecha_pedido de pedido, despues realice un JOIN con detallepedido ya que este contenido las 2 FK de las tabla asi q me parecio menos complicado realizar los JOIN asi
busque en donde habia relacion de `p`.`id` con `dp`.`idPedido` para "filtrarlos" e hice el mismo proceso con cliente (donde habia relacion de `c`.`id`  con `dp`.`idCliente`)	*/
SELECT
	`c`.`nombre`,
    `p`.`fecha_pedido`
    
FROM `pedido` `p`
JOIN `DetallePedido` `dp` ON `p`.`id` = `dp`.`idPedido`
JOIN `cliente` `c` ON `c`.`id` = `dp`.`idCliente` 
