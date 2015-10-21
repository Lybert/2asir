/* Ejercicios 20-10 sobre "emigrantes-sql"
/* La emigracion por paises de los hombre en 2015 */
SELECT e.Hombres "Hombres en 2015", p.Nombre "Pais"
	FROM Emigrantes e, Paises p
	WHERE e.ID_pais = p.ID and
	e.Anyo = 2015;

/* Cantidad de hombres y mujeres emigrantes por Continentes */
SELECT sum(e.Hombres), sum(e.Mujeres), c.Nombre
	FROM Emigrantes e, Continentes c, Paises p
	WHERE 	e.ID_pais = p.ID AND
			p.ID_Continente = c.ID
	GROUP BY 3;


/* Variacionde emigrantes entre 2009 y 2015 en valores absolutos y relativos por pais. */
/*---------------En proceso
SELECT p.Nombre "Pais", e1.Hombres+e1.Mujeres "Emigrantes 2009", e2.Hombres+e2.Mujeres "Emigrantes 2015"
	FROM Emigrantes e1, Emigrantes e2, Paises p
	WHERE 	e1.ID_Pais = p.ID AND
			e2.ID_Pais = p.ID AND
			e1.Anyo = 2009	AND
			e2.Anyo = 2015;

/*En proceso
SELECT p.Nombre "Pais", sum(e2.Hombres + e2.Mujeres) - sum(e1.Hombres + e1.Mujeres) "Diferencia"
	FROM Emigrantes e1, Emigrantes e2, Paises p
	WHERE 	e1.ID_Pais = p.ID AND
			e2.ID_Pais = p.ID AND
			e1.Anyo = 2009	AND
			e2.Anyo = 2015
	GROUP BY 1
;


/* En que países se ha reducido la emigracion desde 2009 * /
*/
