select title, director
from (select distinct m1.mID as mID, m1.title, m1.director
	  from Movie m1, Movie m2
      where m1.mID <> m2.mID and m1.director = m2.director) dirMovies
order by director, title;