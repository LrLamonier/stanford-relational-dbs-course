with globalStars as (
	select Rating.mID, Movie.year, avg(stars) as avgStars
    from Rating, Movie
    where Rating.mID = Movie.mID
    group by Rating.mID
    )
select avg(beforeStars.avgStars) - avg(afterStars.avgStars) as difference
from (select *
	  from globalStars
      where year < 1980) beforeStars,
      (select *
       from globalStars
       where year > 1980) afterStars;

