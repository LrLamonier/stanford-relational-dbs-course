select distinct year
from Movie M, Rating R
where M.mID = R.mID and R.stars >= 4
order by year;