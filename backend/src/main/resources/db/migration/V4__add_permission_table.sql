-- Crear tabla de permisos
CREATE TABLE permission (
  id BIGSERIAL PRIMARY KEY, -- ID del permiso
  name VARCHAR(100) UNIQUE NOT NULL, -- Nombre del permiso
  description VARCHAR(255), -- Descripción del permiso
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);