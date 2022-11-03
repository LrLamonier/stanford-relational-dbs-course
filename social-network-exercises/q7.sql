select h1.name as name1, h1.grade as grade1, h2.name as name2, h2.grade as grade2, h3.name as name3, h3.grade as grade3
from Highschooler h1, Highschooler h2, Highschooler h3, Likes li
where h1.ID <> h2.ID and h1.ID = li.ID1 and h2.ID = li.ID2
	  and h1.ID not in (select fr.ID1 from Friend fr where h1.ID = fr.ID1 and h2.ID = fr.ID2)
	  and exists (select *
				  from Friend f1, Friend f2
                  where h1.ID = f1.ID1 and h3.ID = f1.ID2 and h2.ID = f2.ID1 and h3.ID = f2.ID2);