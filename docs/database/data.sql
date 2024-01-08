-- Insertar datos ficticios en la tabla usuarios
INSERT INTO usuarios (nombre, correo) VALUES
    ('Juan Pérez', 'juan@example.com'),
    ('María García', 'maria@example.com'),
    ('Luis González', 'luis@example.com'),
    ('Ana Martínez', 'ana@example.com'),
    ('Carlos Rodríguez', 'carlos@example.com'),
    ('Sofía López', 'sofia@example.com'),
    ('Pedro Sánchez', 'pedro@example.com'),
    ('Laura Ramírez', 'laura@example.com'),
    ('Diego Fernández', 'diego@example.com'),
    ('Elena Gómez', 'elena@example.com');

-- Insertar datos ficticios en la tabla direcciones (asociadas a usuarios)
INSERT INTO direcciones (usuario_id, tipo, direccion) VALUES
    (1, 'Casa', 'Calle Principal 123'),
    (2, 'Oficina', 'Av. Independencia 567'),
    (3, 'Casa', 'Calle Secundaria 789'),
    (4, 'Oficina', 'Av. Principal 432'),
    (5, 'Casa', 'Calle de Arriba 001'),
    (6, 'Oficina', 'Av. Principal 876'),
    (7, 'Casa', 'Calle de Abajo 456'),
    (8, 'Oficina', 'Av. Secundaria 321'),
    (9, 'Casa', 'Calle Central 654'),
    (10, 'Oficina', 'Av. Céntrica 987');

-- Insertar datos ficticios en la tabla pedidos
INSERT INTO pedidos (estado, usuario_id) VALUES
    ('Pendiente', 1),
    ('En proceso', 2),
    ('Entregado', 3),
    ('Cancelado', 4),
    ('Pendiente', 5),
    ('En proceso', 6),
    ('Entregado', 7),
    ('Cancelado', 8),
    ('Pendiente', 9),
    ('En proceso', 10);

-- Insertar datos ficticios en la tabla historial_pedidos (asociados a pedidos)
INSERT INTO historial_pedidos (pedido_id, estado_anterior, estado_nuevo) VALUES
    (1, 'Pendiente', 'En proceso'),
    (2, 'En proceso', 'Entregado'),
    (3, 'Pendiente', 'Cancelado'),
    (4, 'En proceso', 'Entregado'),
    (5, 'Pendiente', 'En proceso'),
    (6, 'En proceso', 'Entregado'),
    (7, 'Pendiente', 'Cancelado'),
    (8, 'En proceso', 'Entregado'),
    (9, 'Pendiente', 'En proceso'),
    (10, 'En proceso', 'Entregado');

-- Insertar datos ficticios en la tabla categorias
INSERT INTO categorias (nombre, descripcion) VALUES
    ('Electrónica', 'Productos electrónicos'),
    ('Ropa', 'Prendas de vestir'),
    ('Hogar', 'Artículos para el hogar'),
    ('Alimentación', 'Productos alimenticios'),
    ('Deportes', 'Artículos deportivos'),
    ('Libros', 'Libros y literatura');

-- Insertar datos ficticios en la tabla productos (asociados a categorias)
INSERT INTO productos (nombre, descripcion, precio, categoria_id) VALUES
    ('Teléfono móvil', 'Smartphone de última generación', 799.99, 1),
    ('Camiseta', 'Camiseta de algodón', 29.99, 2),
    ('Mesa', 'Mesa de comedor', 149.99, 3),
    ('Leche', 'Leche entera, 1 litro', 1.99, 4),
    ('Balón de fútbol', 'Balón de fútbol tamaño estándar', 19.99, 5),
    ('Novela', 'Novela de ficción', 12.99, 6),
    ('Laptop', 'Portátil de alto rendimiento', 1299.99, 1),
    ('Pantalón', 'Pantalón vaquero', 39.99, 2),
    ('Silla', 'Silla de escritorio ergonómica', 79.99, 3),
    ('Huevos', 'Docena de huevos frescos', 2.49, 4);

-- Insertar datos ficticios en la tabla imagenes_producto (asociadas a productos)
INSERT INTO imagenes_producto (producto_id, url) VALUES
    (1, 'https://ejemplo.com/imagen1.jpg'),
    (2, 'https://ejemplo.com/imagen2.jpg'),
    (3, 'https://ejemplo.com/imagen3.jpg'),
    (4, 'https://ejemplo.com/imagen4.jpg'),
    (5, 'https://ejemplo.com/imagen5.jpg'),
    (6, 'https://ejemplo.com/imagen6.jpg'),
    (7, 'https://ejemplo.com/imagen7.jpg'),
    (8, 'https://ejemplo.com/imagen8.jpg'),
    (9, 'https://ejemplo.com/imagen9.jpg'),
    (10, 'https://ejemplo.com/imagen10.jpg');

-- Insertar datos ficticios en la tabla detalles_pedido (asociados a pedidos y productos)
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
    (1, 1, 2, 799.99),
    (2, 3, 1, 149.99),
    (3, 5, 3, 19.99),
    (4, 7, 1, 1299.99),
    (5, 2, 2, 29.99),
    (6, 4, 1, 1.99),
    (7, 6, 1, 12.99),
    (8, 8, 2, 39.99),
    (9, 10, 1, 2.49),
    (10, 9, 4, 79.99);

-- Insertar datos ficticios en la tabla valoraciones (asociadas a usuarios y productos)
INSERT INTO valoraciones (usuario_id, producto_id, puntuacion, comentario) VALUES
    (1, 1, 5, '¡Excelente teléfono!'),
    (2, 3, 4, 'Buena calidad'),
    (3, 5, 5, 'Muy buen balón'),
    (4, 7, 4, 'Rápida y eficiente'),
    (5, 2, 3, 'Talla un poco grande'),
    (6, 4, 5, 'Siempre fresca'),
    (7, 6, 4, 'Gran historia'),
    (8, 8, 3, 'Cómodos pero ajustados'),
    (9, 10, 5, 'Buena relación calidad-precio'),
    (10, 9, 4, 'Muy resistente');

-- Insertar datos ficticios en la tabla carrito (asociados a usuarios y productos)
INSERT INTO carrito (usuario_id, producto_id, cantidad) VALUES
    (1, 1, 1),
    (2, 3, 2),
    (3, 5, 1),
    (4, 7, 3),
    (5, 2, 1),
    (6, 4, 2),
    (7, 6, 1),
    (8, 8, 2),
    (9, 10, 1),
    (10, 9, 3);
