select distinct re.name, mo.title, ra.stars
from Reviewer re, Movie mo, Rating ra
where re.rID = ra.rID and mo.mID = ra.mID and ra.stars = (select min(stars)
														  from Rating)
order by mo.title;