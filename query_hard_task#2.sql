Select
	`p`.`id`, 
    `l`.`titulo`,
    `p`.`cantidad`,
    `p`.`cantidad` * `l`.`precio` AS `subtotal`
FROM `detallepedido` `dp`
JOIN `pedido` `p` ON `p`.`id` = `dp`.`idPedido`
JOIN `libro` `l` ON `l`.`id` = `p`.`idLibro`