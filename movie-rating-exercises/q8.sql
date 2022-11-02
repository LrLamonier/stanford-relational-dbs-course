select title,
	   case when max(stars) = min(stars)
       then max(stars)
       else max(stars) - min(stars)
       end as spread
from Rating, Movie
where Rating.mID = Movie.mID
group by Rating.mID
order by spread desc, title;