select title, max(stars)
from Rating, Movie
where Rating.mID = Movie.mID
group by Rating.mID
order by title;
