SELECT concat(Name , "(", LEFT(Occupation, 1) , ")") FROM OCCUPATIONS ORDER BY NAME;

SELECT "There are a total of ", count(Occupation), concat(lower(Occupation),"s.") FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY count(Occupation), Occupation ASC;
