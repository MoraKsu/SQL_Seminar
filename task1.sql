USE seminar6;

DELIMITER //

DROP PROCEDURE IF EXISTS format_seconds_procedure;
CREATE PROCEDURE format_seconds_procedure(IN seconds INT)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remaining_seconds INT;
    DECLARE result VARCHAR(255);

    SET days = FLOOR(seconds / 86400);
    SET remaining_seconds = seconds % 86400;

    SET hours = FLOOR(remaining_seconds / 3600);
    SET remaining_seconds = remaining_seconds % 3600;

    SET minutes = FLOOR(remaining_seconds / 60);
    SET remaining_seconds = remaining_seconds % 60;

    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remaining_seconds, ' seconds ');

    SELECT result AS formatted_time;
END //

DELIMITER ;

CALL format_seconds_procedure(456235);