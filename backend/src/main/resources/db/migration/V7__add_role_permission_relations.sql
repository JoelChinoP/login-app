-- Agregar la relación con la tabla de role_permission
ALTER TABLE role_permission
ADD CONSTRAINT fk_role_role_permission
FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE; -- Relación con la tabla de roles

-- Agregar la relación con la tabla de role_permission
ALTER TABLE role_permission
ADD CONSTRAINT fk_permission_rol_permission
FOREIGN KEY (permission_id) REFERENCES permission(id) ON DELETE CASCADE; -- Relación con la tabla de permisos

