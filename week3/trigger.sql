CREATE TRIGGER update_species
AFTER INSERT ON new_species
FOR EACH ROW
BEGIN
	UPDATE new_species
	SET Scientific_name = NULL
	WHERE Scientific_name = '';


END;