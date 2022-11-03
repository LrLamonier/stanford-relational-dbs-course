select h1.name, h1.grade
from Highschooler h1
where not exists (select *
				  from Highschooler h2, Friend f1
                  where h1.ID = f1.ID1 and h2.ID = f1.ID2 and h1.grade <> h2.grade or h1.ID not in (select ID1
																									from Friend))
order by h1.grade, h1.name;