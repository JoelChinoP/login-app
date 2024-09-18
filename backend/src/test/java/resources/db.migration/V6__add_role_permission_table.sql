-- Crear tabla de relación rol-permisos
CREATE TABLE role_permission (
  id BIGSERIAL PRIMARY KEY, -- ID de la relación
  role_id BIGINT NOT NULL, -- ID del rol
  permission_id BIGINT NOT NULL, -- ID del permiso
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);