-- Tabla de usuarios con separación de datos de dirección
CREATE TABLE usuarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

CREATE TABLE direcciones (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    tipo VARCHAR(50),
    direccion VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(ID)
);

-- Tabla de pedidos con historial de cambios
CREATE TABLE pedidos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(50),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(ID)
);

CREATE TABLE historial_pedidos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    estado_anterior VARCHAR(50),
    estado_nuevo VARCHAR(50),
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(ID)
);

-- Resto de las tablas sin cambios
CREATE TABLE categorias (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT
);

CREATE TABLE productos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(ID)
);

CREATE TABLE imagenes_producto (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT,
    url VARCHAR(255),
    FOREIGN KEY (producto_id) REFERENCES productos(ID)
);

CREATE TABLE detalles_pedido (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(ID),
    FOREIGN KEY (producto_id) REFERENCES productos(ID)
);

CREATE TABLE valoraciones (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    producto_id INT,
    puntuacion INT,
    comentario TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(ID),
    FOREIGN KEY (producto_id) REFERENCES productos(ID)
);

CREATE TABLE carrito (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(ID),
    FOREIGN KEY (producto_id) REFERENCES productos(ID)
);
