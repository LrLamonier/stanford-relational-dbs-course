select title
from Movie
union
select name
from Reviewer
order by title;