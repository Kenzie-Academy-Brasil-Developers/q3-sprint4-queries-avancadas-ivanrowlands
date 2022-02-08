SELECT * FROM addres;

SELECT
	*
FROM 
	addres e
JOIN
	user u 
	ON e.id = u.adress_id
ORDER BY
	e.id;
	

SELECT
	r, u
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id;



SELECT
	r, u, e
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	addres e
	ON e.id = u.adress_id;



SELECT
	r.name, u.name, u.email, e.city
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	adress_id e
	ON e.id = u.adress_id;


SELECT
	r.name, u.name, u.email, e.city
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	adress_id e
	ON e.id = u.adress_id;
WHERE
	r.nome = 'Youtube';


SELECT
	r.name, u.name, u.email, e.city
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	adress_id e
	ON e.id = u.adress_id;
WHERE
	r.nome = 'Instagram';


SELECT
	r.name, u.name, u.email, e.city
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	adress_id e
	ON e.id = u.adress_id;
WHERE
	r.nome = 'Facebook';

SELECT
	r.name, u.name, u.email, e.city
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	adress_id e
	ON e.id = u.adress_id;
WHERE
	r.nome = 'Twitter';


SELECT
	r.name, u.name, u.email, e.city
FROM
	users_social_midia ur
JOIN 
	social_midia r 
	ON r.id = ur.social_midia_id
JOIN
	user u 
	ON u.id = ur.user_id
JOIN 
	adress_id e
	ON e.id = u.adress_id;
WHERE
	r.nome = 'Tiktok';