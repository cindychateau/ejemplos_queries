-- Despliega TODAS las columnas de usuarios
SELECT * FROM usuarios;

-- Desplegar solamente la columna de nombre y edad
SELECT nombre, edad FROM usuarios;

-- Desplegar columna de nombre y edad del usuario con id = 2
SELECT nombre, edad FROM usuarios WHERE id = 2;

-- Desplegar todas las columnas del usuario con nombre Martina
SELECT * FROM usuarios WHERE nombre LIKE "martina";

-- Desplegar todas las columnas del usuario cuyo nombre comienza con Mar
SELECT * FROM usuarios WHERE nombre LIKE "Al%";

-- Desplegar todas las columnas de los usuarios que acaban con la letra o
SELECT * FROM usuarios WHERE nombre LIKE "%o";

-- Desplegar todas las columnas de los usuarios que tengan MENOS de 40
SELECT * FROM usuarios WHERE edad < 40;

SELECT * FROM usuarios WHERE edad < 40 AND nombre LIKE "Al%";

SELECT * FROM usuarios ORDER BY nombre ASC;

SELECT * FROM usuarios WHERE edad < 40 ORDER by edad ASC;

INSERT INTO usuarios (nombre, edad, direccion_id) VALUES ('Cynthia', '30', '3');

DELETE FROM usuarios WHERE id = ''; -- OR id = ''

UPDATE usuarios SET edad = '65' WHERE id = '2';

UPDATE usuarios SET nombre = 'Steve', edad = '44' WHERE id = 7;

SELECT * FROM usuarios JOIN direcciones ON direccion_id = direcciones.id;

SELECT * FROM pedidos JOIN usuarios ON usuario_id = usuarios.id;

SELECT pedidos.*, usuarios.nombre FROM pedidos 
JOIN usuarios ON usuario_id = usuarios.id
WHERE total > 500;

SELECT nombre, actividad FROM usuarios_has_hobbies
JOIN usuarios ON usuarios.id = usuario_id
JOIN hobbies ON hobbies.id = hobbie_id
WHERE hobbies.actividad LIKE 'Leer';


