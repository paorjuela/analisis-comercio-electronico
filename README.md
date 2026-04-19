# Análisis del comercio global por internet

Estamos trabajando con el dataset **"Global Super Store"**, con el que analizaremos transacciones de comercio en línea para identificar patrones de compra y métricas útiles para vendedores y consumidores.

## Integrantes
> [Alberto Alessandro Gómez Blanno](https://github.com/alezzanders-ctrl) — Clave:
> 
> [](https://github.com/usuario3) — Clave: 
> 
> [Paola María Orjuela Gaytán](https://github.com/paorjuela) — Clave: 216867

## 1. Sobre el dataset 

### Descripción general

El Dataset contiene información sobre miles de transacciones comerciales realizadas por usuarios a través de la red, entre el 1 de enero de 2011 y el 31 de diciembre de 2014. Incluye datos relevantes, como la información de los compradores, su lugar de residencia, los montos monetarios, detalles de los productos, etcétera.

Los datos fueron extraídos de Kaggle, específicamente del conjunto [Global Super Store Dataset](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset/data). Este fue recopilado en 2020 por Apoorva Mahalingappa, estudiante de Ciencia de Datos en el Great Lakes Institute of Management (India), con el objetivo de analizar las compras en línea y extraer tendencias comerciales; como los productos más vendidos, los países con mayor número de transacciones y el sector al que pertenece la mayoría de los compradores, entre otros aspectos.

El dataset es estático, pues tiene cierto carácter histórico, pero abarca un periodo de 4 años, lo que nos da una ventana de tiempo lo suficientemente amplia para identificar tendencias. Hay bastantes datos con los que se puede trabajar, además de que están relativamente en buena forma (i.e. no hay muchas inconsistencias), aunque hay renglones con datos faltantes (sobre todo en la columna "Postal Code").

## 2. Características de los datos

El archivo csv que se obtiene al descargar el Dataset cuenta con 24 columnas (4 IDs) y aproximadamente 51.3K tuplas.

## 3. Diccionario de datos

Los datos y su tipo son:

| Atributo | Tipo | ¿Qué es? |
| :--- | :--- | :--- |
| **Row ID** | Numérico | ID de la tupla |
| **Order ID** | Texto | ID del pedido |
| **Order Date** | Temporal | Fecha del pedido |
| **Ship Date** | Temporal | Fecha de envío |
| **Ship Mode** | Categórico | Forma de envío |
| **Customer ID** | Texto | Id del comprador |
| **Customer Name** | Texto | Nombre del comprador |
| **Segment** | Categórico | Tipo del comprador |
| **City** | Categórico | Ciudad del comprador |
| **State** | Categórico | Estado (lugar) del comprador |
| **Country** | Categórico | País del comprador |
| **Postal Code** | Numérico | Código postal del comprador |
| **Market** | Categórico | Región del mercado |
| **Región** | Categórico | Región del mercado |
| **Product ID** | Texto | Id del producto |
| **Category** | Categórico | Categoría del producto |
| **Sub-Category** | Categórico | Subcategoría del producto |
| **Product Name** | Texto | Nombre del producto |
| **Sales** | Numérico | Monto transaccionado por la venta |
| **Quantity** | Numérico | Cantidad del producto que se vendió |
| **Discount** | Numérico | Descuento aplicado a la venta |
| **Profit** | Numérico | Ganancia por la venta |
| **Shipping Cost** | Numérico | Costo de envío |
| **Order Priority** | Categórico | Prioridad de envío |

> **Nota:** Todos los datos de tipo "Categórico" y de tipo "Temporal" están almacenados como de tipo "Texto" en el Dataset.

## 4. Objetivo del proyecto 
El objetivo principal de este proyecto es analizar un conjunto de datos para identificar patrones de comportamiento en el comercio electrónico a nivel global. Nuestro equipo busca identificar cuáles son los productos más rentables, qué regiones hacen más transacciones, los tiempos promedio de envío y los clientes más activos, simulando la toma de decisiones en un entorno empresarial.


## 5. Consideraciones éticas 
* **Privacidad de los clientes** Aunque es un dataset público y probablemente anónimo o sintético, tiene columnas como "Customer Name" ligadas a ubicaciones geográficas (City, State, Postal Code). En un entorno real, exponer esta información implicaría violar la privacidad de los usuarios e infringir múltiples leyes.
* **Sesgos** La mayoría de los datos parecen ser de Estados Unidos, por lo que nuestro análisis tendrá cierto sesgo geográfico. En consecuencia, ignoraremos patrones de compra en los mercados que no están representados en este dataset.
