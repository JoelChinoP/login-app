-- Crear tabla de roles
CREATE TABLE roles (
  id BIGSERIAL PRIMARY KEY, -- ID del rol
  name VARCHAR(100) UNIQUE NOT NULL, -- Nombre del rol
  parent_role_id BIGINT, -- Para jerarquía de roles (opcional)
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);