INSERT INTO myDb.mySchema.INTER_FRIENDS_DATA(
	SELECT *,CASE
	WHEN MARKS>=90 THEN 'S'
	WHEN MARKS>=80 THEN 'A'
	WHEN MARKS>=70 THEN 'B'
	WHEN MARKS>=60 THEN 'C'
	WHEN MARKS>=50 THEN 'D'
	WHEN MARKS>=40 THEN 'E'
	ELSE 'U'
	END AS GRADE
	FROM myDb.mySchema.RAW_FRIENDS_DATA
	ORDER BY FIRST_NAME ASC
);