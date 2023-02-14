
---selecting ages whose favorite genre is kpop in ascending order--
SELECT age
FROM.. dbo.musichealth
WHERE favoritegenre = 'kpop'
ORDER BY age;

--selecting ages whose favorite genre is kpop and who ranked their anxiety between 1 and 10--
SELECT age, anxiety
FROM.. dbo.musichealth
WHERE anxiety BETWEEN 1 AND 10 
AND favoritegenre = 'kpop'
ORDER BY age, anxiety;

--selecting ages whose favorite genre is kpop and who ranked their depression between 1 and 10--
SELECT age, depression
FROM.. dbo.musichealth
WHERE depression BETWEEN 1 and 10
AND favoritegenre = 'kpop'
ORDER BY depression, age;


--selecting the individuals who's favorite genre was not kpop and how often they listened to kpop; excluding those to repsonded with never--
SELECT COUNT(age) AS non_kpop_mood_improvement
FROM.. dbo.musichealth
WHERE favoritegenre NOT LIKE 'kpop'
AND frequency_kpop NOT LIKE 'never' 

--select individuals who's favorite genre is rap and they listen to kpop--
SELECT COUNT(age) AS rap_fans_listen_to_kpop
FROM.. dbo.musichealth
WHERE favoritegenre = 'rap'
AND frequency_kpop NOT LIKE 'never';

