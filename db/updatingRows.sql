UPDATE customer
SET fax = null
WHERE fax IS NOT null;

UPDATE customer
SET company = 'Self'
WHERE company IS null;

UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' and last_name = 'Barnett';

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track
set composer = 'The darkness around us'
WHERE composer IS null
AND genre_id IN (
	SELECT genre_id
  FROM genre
  WHERE name = 'Metal'
);