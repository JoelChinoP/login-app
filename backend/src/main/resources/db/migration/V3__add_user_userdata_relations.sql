-- Agregar la relación con la tabla de usuarios
ALTER TABLE user_data
ADD CONSTRAINT fk_user_data_user
FOREIGN KEY (user_id) REFERENCES "user"(id) ON DELETE CASCADE;