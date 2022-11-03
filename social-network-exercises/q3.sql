select hi1.name as name1, hi1.grade as grade1, hi2.name as name2, hi2.grade as grade2
from Highschooler hi1, Highschooler hi2, Likes l1, Likes l2
where hi1.ID = l1.ID1 and l1.ID2 = hi2.ID and
	  hi2.ID = l2.ID1 and hi1.ID = l2.ID2 and
      hi1.name < hi2.name;