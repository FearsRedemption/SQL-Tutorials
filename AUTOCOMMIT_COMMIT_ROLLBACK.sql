-- SETS TO FORCE MANUAL SAVES --
SET AUTOCOMMIT = OFF;

-- SET A SAVE POINT --
COMMIT;

-- MISTAKE MADE HERE #@*$

-- YOU CAN ROLL BACK TO PREVIOUS SAVE POINT --
ROLLBACK;