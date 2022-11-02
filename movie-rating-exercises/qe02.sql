select distinct name, title, stars
from Movie mo, Reviewer re, Rating ra
where director = name and mo.mID = ra.mID and re.rID = ra.rID;