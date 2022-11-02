select distinct name
from (select rID
	  from Movie, Rating
      where title = "Gone with the Wind" and Movie.mID = Rating.mID) reviewers, Reviewer
where reviewers.rID = Reviewer.rID;