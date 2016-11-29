DROP  TABLE tmp_gebruiksdoel;

CREATE TEMPORARY TABLE tmp_gebruiksdoel AS SELECT identificatie, gebruiksdoel, pand_identificatie, postcode from bag.bag_gebruiksdoel
CREATE INDEX tmp_gebruiksdoel_idx01 ON tmp_gebruiksdoel USING BTREE(pand_identificatie asc);
CREATE INDEX tmp_gebruiksdoel_idx02 ON tmp_gebruiksdoel USING BTREE(identificatie);

CREATE TEMPORARY TABLE tmp_pand AS SELECT identificatie, bouwjaar from bag.bag_pand;

CREATE INDEX tmp_pand_idx01 ON tmp_pand USING BTREE(identificatie asc);

DROP  TABLE tmp_gebruiksdoel_bouwjaar;

CREATE TEMPORARY TABLE tmp_gebruiksdoel_bouwjaar AS
	SELECT
		g.identificatie,
		g.gebruiksdoel,
		g.postcode,
		p.bouwjaar
	FROM
		tmp_gebruiksdoel g
		INNER JOIN tmp_pand p
			ON g.pand_identificatie = p.identificatie;

CREATE INDEX tmp_gebruiksdoel_bouwjaar_idx01
	ON tmp_gebruiksdoel_bouwjaar
	USING HASH(identificatie)

CREATE TEMPORARY TABLE tmp_energie_labels AS
	SELECT
		postcode,
		energieklasse
	FROM
		bag.bag_gebruiksdoel_energielabel e
		INNER JOIN tmp_gebruiksdoel_bouwjaar g
			ON e.identificatie = g.identificatie
	WHERE
		bouwjaar < 2006 AND
		gebruiksdoel = 'woonfunctie';


CREATE INDEX tmp_energie_labels_idx01
	ON tmp_energie_labels
	USING BTREE(postcode ASC);
	
CREATE TEMPORARY TABLE temp_pc6_energie_labels AS
SELECT 
	postcode,
	SUM(iif_num(energieklasse = 'A++',1,0)) AS aantal_app,
	SUM(iif_num(energieklasse = 'A+',1,0)) AS aantal_ap,
	SUM(iif_num(energieklasse = 'A',1,0)) AS aantal_a,
	SUM(iif_num(energieklasse = 'B',1,0)) AS aantal_b,
	SUM(iif_num(energieklasse = 'C',1,0)) AS aantal_c,
	SUM(iif_num(energieklasse = 'D',1,0)) AS aantal_d,
	SUM(iif_num(energieklasse = 'E',1,0)) AS aantal_e,
	SUM(iif_num(energieklasse = 'F',1,0)) AS aantal_f,
	SUM(iif_num(energieklasse = 'G',1,0)) AS aantal_g,
	count(*) aantal
FROM
	tmp_energie_labels
GROUP BY
	postcode;

CREATE INDEX temp_pc6_energie_labels_idx01
	ON temp_pc6_energie_labels
	USING BTREE(postcode);

SELECT
	SUM(iif_num (aantal =1 ,1,0)) aantal_1,
	SUM(iif_num (aantal BETWEEN 2 and 5,1,0)) aantal_2_5,
	SUM(iif_num (aantal BETWEEN 6 and 10,1,0)) aantal_6_10,
	SUM(iif_num (aantal BETWEEN 11 and 15,1,0)) aantal_11_15,
	SUM(iif_num (aantal BETWEEN 16 and 20,1,0)) aantal_16_20,
	SUM(iif_num (aantal  > 20,1,0)) aantal_20_plus
FROM
	temp_pc6_energie_labels

SELECT 
	SUM(aantal_app),
	SUM(aantal_ap),
	SUM(aantal_a),
	SUM(aantal_b),
	SUM(aantal_c),
	SUM(aantal_e),
	SUM(aantal_f),
	SUM(aantal_g),
	SUM(aantal)
FROM
	temp_pc6_energie_labels;

copy temp_pc6_energie_labels  to 'd://temp//energielabel_pc6.csv' with delimiter ';' CSV HEADER QUOTE AS '"';
	

