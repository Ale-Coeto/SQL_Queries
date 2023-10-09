INSERT INTO Artículos
VALUES 
    (3786,'red',3500),
    (4011,'raqueta', 6500),
    (9132,'paq-3', 475),
    (5794,'paq-6', 500),
    (3141,'funda', 1000)
;

INSERT INTO Clientes
VALUES 
    (101, 'Martin', 'Caracas'),
    (107, 'Herman', 'Coro'),
    (110, 'Pedro', 'Maracay')
;

INSERT INTO Ordenes
VALUES
    (2301, '2011-02-23', 101),
    (2302, '2011-02-25', 107),
    (2303, '2011-02-27', 110)
;

INSERT INTO OrdenArtículo
VALUES
    (1,3786,3,2301),
    (2,4011,6,2301),
    (3, 9132, 8, 2301),
    (4, 5794, 4, 2302),
    (5, 4011, 2, 2303),
    (6, 3141, 2, 2303)
;
   

   -- Queries
SELECT Ordenes.idOrden, Ordenes.Fecha, Clientes.idCliente, Clientes.Nombre, Clientes.Estado, OrdenArtículo.fk_idArticulo as idArticulo, OrdenArtículo.Cantidad, Artículos.nombre as NombreArticulo, Artículos.precio
FROM OrdenArtículo
LEFT JOIN Artículos ON OrdenArtículo.fk_idArticulo = Artículos.idArticulo
LEFT JOIN Ordenes ON OrdenArtículo.fk_idOrden = Ordenes.idOrden
LEFT JOIN Clientes ON Ordenes.fk_idCliente = Clientes.idCliente
;

SELECT Ordenes.idOrden, Clientes.Nombre, Clientes.Estado, OrdenArtículo.fk_idArticulo as idArticulo, OrdenArtículo.Cantidad, Artículos.nombre as NombreArticulo, Artículos.precio
FROM OrdenArtículo
LEFT JOIN Artículos ON OrdenArtículo.fk_idArticulo = Artículos.idArticulo
LEFT JOIN Ordenes ON OrdenArtículo.fk_idOrden = Ordenes.idOrden
LEFT JOIN Clientes ON Ordenes.fk_idCliente = Clientes.idCliente
WHERE Clientes.nombre = 'Martin'
;





