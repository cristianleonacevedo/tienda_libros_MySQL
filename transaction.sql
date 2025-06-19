START transaction;

INSERT INTO `tienda_libros`.`pedido` (`idLibro`, cantidad, fecha_pedido) VALUES
(1,2, NOW());

INSERT INTO `tienda_libros`.`detallepedido` (`idPedido`, `idCliente`) VALUES
(4, 2);

INSERT INTO `tienda_libros`.`detallepedido` (`idPedido`, `idCliente`) VALUES
(4, 3);

COMMIT;