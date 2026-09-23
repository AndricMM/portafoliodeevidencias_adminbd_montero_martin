














-- 1. Asignar el rol al usuario deseado
GRANT 'rol_lector' TO 'dev_user'@'%';

-- 2.CRUCIAL EN MYSQL 8: Activar el rol automaticamente al iniciar sesion
SET DEFAULT ROLE 'rol_lector' TO "dev_users"@'%';

-- 3. Verificar los permisos asignados
SHOW GRANTS FOR 'dev_user'@"localhost";
