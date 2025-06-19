-- Inserte algunos de los escritores que mas me gustan junto con un dato adicional

INSERT INTO `tienda_libros`.`autor` (`nombre`, `nacionalidad`) VALUES
("Stephen King","Estadounidense"),
("H.P Lovercraft","Estadounidense"),
("Fiódor Dostoyevski","Ruso");

-- Introduci titulos originales de los escritores junto con precios reales

INSERT INTO `tienda_libros`.`libro` (`idAutor`,`titulo`, `precio`, `descripcion`, `anio_publicacion`) VALUES
(1, "La Sangre Manda", 65000, "Novelas cortas", '2020-04-21'),
(2, "El Llamado de Cthulhu", 61000, "Relato de horror cósmico", '1928-02-01'),
(3, "Noches Blancas", 60000, "Relato romántico", '1848-01-01'),
(1, "Carrie", 79000, "Novela de terror", '1974-04-05'),
(2, "El Necronomicón", 98000, "Libro ficticio", '1924-01-01');

-- adicione los datos de personas que conozco

INSERT INTO `tienda_libros`.`cliente`(`nombre`,`apellido`,`correo`, `telefono`, `identificador`, `direcion`) VALUES
("Nataly", "Piedrahita", null, "+57 301 7247871", 1097186655, "Calle 312 #234 - 121"),
("Karol", "Arroyave", "arroyavekarol@hotmail.com", "+57 331 9873447",  1034889579, "Calle 45 #44 - 32"),
("Rafael", "Barahona", null, "+57 312 4135447", 17361844736, "Calle 2 #4 - 1"),
("Olga", "Bermudez", "olgabermu@gmail.com", "+57 3", 1837481627, "Calle 32 #34 - 81");

-- cree pedidos por medio de los id de los clientes junto una cantidad 

INSERT INTO `tienda_libros`.`pedido` (`idLibro`,`cantidad`, `fecha_pedido`) VALUES
(1,2, NOW()),
(4, 4, NOW()),
(3, 3, NOW());

-- Finalmente añadi los datos a la factura (detalle_pedido)

INSERT INTO tienda_libros.DetallePedido (idPedido, idCliente) VALUES
(1, 1),
(2, 2),
(3, 3);