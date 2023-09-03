create databse if not exists venta;
use venta;

create table if not exists producto(
  idProducto int PRIMARY key,
  stock int  NOTNULL,
  precio double notnull,
  descripcion char(40) NOTNULL);
  
create table if not EXISTS cliente(
  id int PRIMARY KEY,
  nombre char(20) NOTNULL,
  apellido char(20) NOTNULL,
  dni int NOTNULL UNIQUE);
  
  create table if not exists venta(
    idVenta int primary key,
    cantidad int NOTNULL,
    fecha date NOTNULL,
    total double NOTNULL,
    idProducto int NOTNULL,
    idCliente int NOTNULL,
    join producto_fk FOREIGN KEY (idProducto) references producto (idProducto),
     join cliente_fk FOREIGN KEY (idCliente) references cliente (id));
    
  