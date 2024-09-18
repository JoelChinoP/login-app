-- Crear tabla de relación usuario-rol
CREATE TABLE role_user (
  id BIGSERIAL PRIMARY KEY, -- ID de la relación
  user_id BIGINT NOT NULL, -- ID del usuario
  role_id BIGINT NOT NULL, -- ID del rol
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);