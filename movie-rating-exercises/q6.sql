select name, title
from (select R1.rID as rID, R2.mID as mID, R1.ratingDate as date1, R2.ratingDate as date2
	  from Rating R1, Rating R2
      where R1.rID = R2.rID and R1.mID = R2.mID and R1.ratingDate is not null and R1.ratingDate <> R2.ratingDate
      and R1.ratingDate < R2.ratingDate and R1.stars < R2.stars
      order by R1.rID, R2.mID) ratings, Reviewer Re, Movie Mo
where ratings.rID = Re.rID and ratings.mID = Mo.mID;