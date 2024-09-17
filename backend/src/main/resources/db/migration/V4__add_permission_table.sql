-- Crear tabla de permisos
CREATE TABLE permissions (
  id BIGSERIAL PRIMARY KEY, -- ID del permiso
  name VARCHAR(100) UNIQUE NOT NULL, -- Nombre del permiso
  description VARCHAR(255), -- Descripción del permiso
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);