-- Crear tabla de roles
CREATE TABLE role (
  id BIGSERIAL PRIMARY KEY, -- ID del rol
  name VARCHAR(100) UNIQUE NOT NULL, -- Nombre del rol
  parent_role_id BIGINT, -- Para jerarquía de roles (opcional)
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);