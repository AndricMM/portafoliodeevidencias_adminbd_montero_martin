START TRANSACTION;

-- 1. Intento de restar más dinero del disponible (Falla por la restricción CHECK)
UPDATE cuentas 
SET saldo = saldo - 2000.00 
WHERE id = 1; 

-- Si detectamos el error en la aplicación o el cliente SQL falla, cancelamos todo:
ROLLBACK;