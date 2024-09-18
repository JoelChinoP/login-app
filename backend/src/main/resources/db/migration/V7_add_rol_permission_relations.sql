-- Agregar la relación con la tabla de usuarios
ALTER TABLE role_permission
ADD CONSTRAINT fk_rol_rol_permission
FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE; -- Relación con la tabla de roles

-- Agregar la relación con la tabla de usuarios
ALTER TABLE role_permission
ADD CONSTRAINT fk_permission_rol_permission
FOREIGN KEY (permission_id) REFERENCES permission(id) ON DELETE CASCADE; -- Relación con la tabla de permisos

