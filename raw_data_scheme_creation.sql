--\copy orders from 'C:/Users/paola/Downloads/archive/Global_Superstore2.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS ubicaciones;

CREATE TABLE orders (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(255),
    segment VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    market VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name TEXT,
    sales NUMERIC(15,2),
    quantity INT,
    discount NUMERIC(5,2),
    profit NUMERIC(15,2),
    shipping_cost NUMERIC(15,2),
    order_priority VARCHAR(20)
);
SELECT *
FROM orders;

--------------------------------------------------------------------------
--sí funciona
--crea tabla clientes
START TRANSACTION;
    CREATE TABLE clientes AS
        SELECT DISTINCT customer_id, customer_name, segment
        FROM orders;

    ALTER TABLE clientes ADD PRIMARY KEY (customer_id);

    SELECT *
    FROM clientes;
--ROLLBACK;
COMMIT;

SELECT *
FROM clientes;
--------------------------------------------------------------------------------------------------
--funciona crear la tabla productos
--PERO no funciona crear la llave primaria porque hay duplicados en el id

START TRANSACTION;
    CREATE TABLE productos AS
        SELECT DISTINCT product_id, product_name, category, sub_category
        FROM orders;

    select *
        from productos;

    ALTER TABLE productos ADD PRIMARY KEY (product_id); --no funciona
commit;

select *
from productos
where product_id = 'OFF-AR-10000751'; --lol q mal. hay que arreglar eso y despues la llave primaria

------------------------------------------------------------
--funciona crear la tabla ubicaciones
START TRANSACTION;
    CREATE TABLE ubicaciones (
        id_ubicacion SERIAL PRIMARY KEY,
        city VARCHAR(100),
        state VARCHAR(100),
        country VARCHAR(100),
        postal_code VARCHAR(20),
        market VARCHAR(25),
        region VARCHAR(25)
    );

    INSERT INTO ubicaciones (city, state, country, postal_code, market, region)
    SELECT DISTINCT city, state, country, postal_code, market, region
    FROM orders;

    select *
        from ubicaciones;
commit ;

