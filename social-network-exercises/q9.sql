select name, grade
from (select name, grade, count(ID2) as likeCount
	  from Highschooler, Likes
      where ID2 = ID
      group by ID) likeNumbers
where likeCount > 1;