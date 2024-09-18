-- Agregar la relación con la tabla de role_user
ALTER TABLE role_user
ADD CONSTRAINT fk_role_role_user
FOREIGN KEY (user_id) REFERENCES "user"(id) ON DELETE CASCADE; -- Relación con la tabla de usuarios

-- Agregar la relación con la tabla de role_user
ALTER TABLE role_user
ADD CONSTRAINT fk_user_role_user
FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE; -- Relación con la tabla de roles




