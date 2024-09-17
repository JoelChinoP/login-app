-- Crear tabla de usuarios
CREATE TABLE "user" (
  id BIGSERIAL PRIMARY KEY, -- ID del usuario
  username VARCHAR(100) UNIQUE NOT NULL, -- Nombre de usuario
  email VARCHAR(100) UNIQUE NOT NULL, -- Correo electrónico
  password VARCHAR(255) NOT NULL, -- Contraseña
  salt VARCHAR(255) NOT NULL, -- Sal para la contraseña (semilla)
  lastlogin TIMESTAMP, -- Fecha de último acceso
  failed_attempts INT DEFAULT 0, -- Intentos fallidos de acceso
  is_locked BOOLEAN DEFAULT FALSE, -- Usuario bloqueado
  provider VARCHAR(255), -- Para OAuth (Google, Facebook, etc.)
  provider_id VARCHAR(255), -- ID del usuario en el proveedor externo
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de actualización
);