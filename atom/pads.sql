/*
Enter your query here.
*/
SELECT CONCAT(Name,"(",SUBSTRING(Occupation,1,1),")") FROM OCCUPATIONS ORDER BY Name ASC;

SELECT CONCAT("There are a total of ",COUNT(Occupation)," ",LOWER(Occupation),"s.") FROM OCCUPATIONS 
GROUP BY Occupation ORDER BY COUNT(Occupation) ASC;
