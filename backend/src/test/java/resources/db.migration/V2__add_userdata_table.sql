-- Crear tabla de datos del usuario
CREATE TABLE user_data (
  id BIGSERIAL PRIMARY KEY, -- ID de los datos del usuario
  user_id BIGINT NOT NULL, -- ID del usuario
  name VARCHAR(100) NOT NULL, -- Nombre
  lastname VARCHAR(100) NOT NULL, -- Apellidos
  address VARCHAR(255), -- Dirección
  phone VARCHAR(20), -- Teléfono
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);