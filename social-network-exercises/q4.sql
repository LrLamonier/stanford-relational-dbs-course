select name, grade
from Highschooler hi
where not exists (select ID1
				  from Likes li
                  where hi.ID = li.ID1
                  union
                  select ID2
                  from Likes li
                  where hi.ID = li.ID2)
order by grade, name;