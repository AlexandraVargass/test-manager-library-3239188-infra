-- init-schema.sql
-- Cumplimiento estricto del Artículo V de constitution.md:
-- infra levanta un motor VACÍO. No contiene ningún CREATE TABLE.
-- Todo el DDL vive en las migraciones de la aplicación (Laravel).
CREATE SCHEMA IF NOT EXISTS library;
