-- Active: 1705366687777@@127.0.0.1@5432@postgres@public
create table tbl_rol 
(
    id serial PRIMARY key,
    nombre_rol varchar(200), 
    fecha_creacion TIMESTAMP DEFAULT current_timestamp
);

drop table tbl_usuarios;
create table tbl_usuarios
(
    nombre_usuario  varchar(20) primary key,
    correo_electronico varchar(50),
    contrasena varchar(20),
    nombre varchar(200),
    apellido varchar(200),
    id_rol int,
    fecha_creacion TIMESTAMP DEFAULT current_timestamp,
    constraint fk_id_rol FOREIGN key (id_rol) REFERENCES tbl_rol (id)
);

select * from tbl_usuarios;


select * from tbl_rol