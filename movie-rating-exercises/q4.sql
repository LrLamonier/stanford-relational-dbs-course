select distinct name
from Reviewer
where rID in (select rID from Rating where ratingDate is null);