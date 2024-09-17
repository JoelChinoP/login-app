CREATE TABLE user (
  id BIGINT AUTO_INCREMENT PRIMARY KEY, -- ID del usuario
  username VARCHAR(100) UNIQUE NOT NULL,    -- Nombre de usuario
  email VARCHAR(100) UNIQUE NOT NULL,  -- Añadimos el correo
  password VARCHAR(255) NOT NULL,   -- Contraseña
  salt VARCHAR(255) NOT NULL,   -- Sal para la contraseña (semilla)
  lastlogin TIMESTAMP,  -- Fecha de último acceso
  failed_attempts INT DEFAULT 0, -- Intentos fallidos de acceso
  is_locked BOOLEAN DEFAULT FALSE, -- Usuario bloqueado
  provider VARCHAR(255),  -- Para OAuth (Google, Facebook, etc.)
  provider_id VARCHAR(255),  -- ID del usuario en el proveedor externo
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de actualización
);


CREATE TABLE user_data (
  id BIGINT AUTO_INCREMENT PRIMARY KEY, -- ID de los datos del usuario
  user_id BIGINT NOT NULL,      -- ID del usuario
  name VARCHAR(100) NOT NULL,  -- Nombre
  lastname VARCHAR(100) NOT NULL,   -- Apellidos
  address VARCHAR(255),   -- Dirección
  phone VARCHAR(20),  -- Teléfono
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Fecha de actualización
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE   -- Relación con la tabla de usuarios
);


CREATE TABLE roles (
  id BIGINT AUTO_INCREMENT PRIMARY KEY, -- ID del rol
  name VARCHAR(100) UNIQUE NOT NULL,   -- Nombre del rol
  parent_role_id BIGINT,  -- Para jerarquía de roles (opcional)
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,   -- Fecha de actualización
  FOREIGN KEY (parent_role_id) REFERENCES roles(id) ON DELETE SET NULL    -- Relación con la tabla de roles
);


CREATE TABLE permissions (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,    -- ID de la acción
  name VARCHAR(100) UNIQUE NOT NULL,    -- Nombre de la acción
  description VARCHAR(255), -- Descripción de la acción //description TEXT,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de actualización
);


CREATE TABLE user_roles (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,   -- ID de la relación
  user_id BIGINT NOT NULL,   -- ID del usuario
  role_id BIGINT NOT NULL,      -- ID del rol
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    -- Fecha de actualización
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,  -- Relación con la tabla de usuarios
  FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE  -- Relación con la tabla de roles
);


CREATE TABLE role_permissions (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,   -- ID de la relación
  role_id BIGINT NOT NULL,      -- ID del rol
  permission_id BIGINT NOT NULL,    -- ID de la acción
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,   -- Fecha de actualización
  FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,    -- Relación con la tabla de roles
  FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE   -- Relación con la tabla de acciones
);


CREATE TABLE user_permissions (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,    -- ID de la relación
  user_id BIGINT NOT NULL,          -- ID del usuario
  permission_id BIGINT NOT NULL,   -- ID de la acción
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- Fecha de creación
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,        -- Fecha de actualización
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,     -- Relación con la tabla de usuarios
  FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE    -- Relación con la tabla de acciones
);
