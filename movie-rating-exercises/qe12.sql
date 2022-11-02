select mo.director, mo.title, max(maxStars.stars)
from (select mID, max(stars) as stars
	  from Rating
      group by mID) maxStars, Movie mo
where maxStars.mID = mo.mID and mo.director is not null
group by mo.director;