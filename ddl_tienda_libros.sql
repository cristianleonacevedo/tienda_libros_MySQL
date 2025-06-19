-- Lo primero es crear la tablas que no contengan llaves foraneas (FK) para evitar problemas en nuestra secuencia

CREATE TABLE IF NOT EXISTS `tienda_libros`.`Autor` (
  `id` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NOT NULL,
  `nacionalidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `tienda_libros`.`Cliente` (
  `id` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `identificador` VARCHAR(45) NOT NULL,
  `direcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
  );
  
  -- ya despues de terminar con las anteriores tablas empezamos con las tablas que contienen llaves foraneas (evitar poner una FK antes de que creemos la tabla de referencia)
  
  CREATE TABLE IF NOT EXISTS `tienda_libros`.`Libro` (
  `id` INT NOT NULL auto_increment,
  `idAutor` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `anio_publicacion` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Libro_Autor_idx` (`idAutor` ASC) VISIBLE,
  CONSTRAINT `fk_Libro_Autor`
    FOREIGN KEY (`idAutor`)
    REFERENCES `tienda_libros`.`Autor` (`id`)
);
  
  CREATE TABLE IF NOT EXISTS `tienda_libros`.`Pedido` (
  `id` INT NOT NULL auto_increment,
  `idLibro` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `fecha_pedido` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Pedido_Libro1_idx` (`idLibro` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Libro1`
    FOREIGN KEY (`idLibro`)
    REFERENCES `tienda_libros`.`Libro` (`id`)
);
  
  CREATE TABLE IF NOT EXISTS `tienda_libros`.`DetallePedido` (
   `id` INT NOT NULL auto_increment,
  `idPedido` INT NOT NULL,
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_DetallePedido_Pedido1_idx` (`idPedido` ASC) VISIBLE,
  INDEX `fk_DetallePedido_Cliente1_idx` (`idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_DetallePedido_Pedido1`
    FOREIGN KEY (`idPedido`)
    REFERENCES `tienda_libros`.`Pedido` (`id`),
  CONSTRAINT `fk_DetallePedido_Cliente1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `tienda_libros`.`Cliente` (`id`)
);