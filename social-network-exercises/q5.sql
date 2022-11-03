select hi1.name as name1, hi1.grade as grade1, dontLike.name as name2, dontLike.grade as grade2
from (select *
	  from Highschooler hi
      where hi.ID not in (select ID1
						  from Likes)) dontLike, Highschooler hi1, Likes li1
where hi1.ID = li1.ID1 and li1.ID2 = dontLike.ID;