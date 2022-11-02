select title, avgStars
from (select title, avg(stars) as avgStars
	  from Movie mo, Rating ra
      where mo.mID = ra.mID
      group by title) averages
where avgStars = (select min(avgStars2)
				  from (select avg(stars) as avgStars2
						from Movie mo2, Rating ra2
                        where mo2.mID = ra2.mID
                        group by mo2.title) avgsCalc)