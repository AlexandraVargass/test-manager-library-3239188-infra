# test-manager-library-3239188-infra

> **Prueba técnica · Ficha ADSO 3239188**  
> Infraestructura y contenedor de base de datos para *Manager Library*.

Este repositorio contiene la configuración de infraestructura para levantar el motor de base de datos PostgreSQL 16 aislado y vacío, respetando el **Artículo V de la Constitución** (`constitution.md`).

---

## Requisitos
* Docker y Docker Compose instalados.

---

## Archivos de Infraestructura

* **`docker-compose.yml`**: Orquestación del servicio PostgreSQL 16 con puerto expuesto `5432`, zona horaria `UTC`, volumen persistente y verificación de salud (*healthcheck*).
* **`init-schema.sql`**: Script de inicialización que asegura la existencia del esquema `library` sin crear tablas (cero `CREATE TABLE`).
* **`.env.example`**: Variables de conexión predeterminadas para los servicios clientes (API de Laravel).

---

## Instrucciones de Uso

### 1. Iniciar el servicio de base de datos
```bash
docker compose up -d
```

### 2. Verificar que el contenedor esté corriendo y saludable
```bash
docker compose ps
```

### 3. Detener el servicio
```bash
docker compose down
```

### 4. Detener y limpiar volúmenes (si se requiere reiniciar desde cero)
```bash
docker compose down -v
```
