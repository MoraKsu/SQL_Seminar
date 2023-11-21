USE seminar6;

DELIMITER //

DROP PROCEDURE IF EXISTS display_even_numbers;
CREATE PROCEDURE display_even_numbers()
BEGIN
    DECLARE n INT DEFAULT 0;
    DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (n INT);

    WHILE n < 10 DO
        SET n = n + 2;
        INSERT INTO nums VALUES(n);
    END WHILE;

    SELECT * FROM nums;
END //

DELIMITER ;

CALL display_even_numbers();
