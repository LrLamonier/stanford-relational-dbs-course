select title, avg(stars) as avgStars
from Movie mo, Rating ra
where mo.mID = ra.mID
group by title
order by avgStars desc, title;