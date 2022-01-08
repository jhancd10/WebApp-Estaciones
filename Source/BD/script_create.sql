--SELECT * FROM sys.schemas;

/* Creacion del Esquema */
CREATE SCHEMA DelRio;
GO

/* Creacion de las tablas */

CREATE TABLE DelRio.Usuarios (
    Id uniqueidentifier  NOT NULL,
    Nombre nvarchar(60)  NOT NULL,
    Email nvarchar(100)  NOT NULL,
    Password nvarchar(50)  NOT NULL,
    PasswordSeed nvarchar(50)  NOT NULL,
    Celular nvarchar(25)  NULL,
    Estado int  NOT NULL,
    CONSTRAINT Usuarios_pk PRIMARY KEY  (Id)
);

CREATE TABLE DelRio.Recaudos (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Estacion nvarchar(60)  NOT NULL,
    Sentido nvarchar(20)  NOT NULL,
    Fecha date  NOT NULL,
    Hora int  NOT NULL,
    Categoria nvarchar(10)  NOT NULL,
    Cantidad int  NOT NULL,
    Valor_Tabulado int  NOT NULL
);
