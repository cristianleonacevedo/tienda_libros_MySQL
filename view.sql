CREATE OR REPLACE VIEW `Vista_Pedidos` AS
SELECT 
  `p`.`id` AS `id_pedido`,
  `c`.`nombre` AS `cliente`,
  `p`.`fecha_pedido`,
  (`p`.`cantidad` * `l`.`precio`) AS `total`
FROM `tienda_libros`.`pedido` `p`
JOIN `tienda_libros`.`libro` `l` ON `p`.`idLibro` = `l`.`id`
JOIN `tienda_libros`.`DetallePedido` `dp` ON `dp`.`idPedido` = `p`.`id`
JOIN `tienda_libros`.`cliente` `c` ON `dp`.`idCliente` = `c`.`id`;