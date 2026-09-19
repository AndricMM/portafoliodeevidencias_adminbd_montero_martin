START TRANSACTION;

-- 1. Restar dinero de la cuenta origen
UPDATE cuentas 
SET saldo = saldo - 200.00 
WHERE id = 1;

-- 2. Sumar dinero a la cuenta destino
UPDATE cuentas 
SET saldo = saldo + 200.00 
WHERE id = 2;

-- 3. Registrar el movimiento
INSERT INTO historial_transferencias (cuenta_origen_id, cuenta_destino_id, monto) 
VALUES (1, 2, 200.00);

-- 4. Confirmar y aplicar todos los cambios de forma permanente
COMMIT;