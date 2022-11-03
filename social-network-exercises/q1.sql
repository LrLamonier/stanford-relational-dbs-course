select name
from (select ID
	  from Highschooler
      where name = "Gabriel") gabs, Highschooler hi, Friend fr
where gabs.ID = fr.ID2 and fr.ID1 = hi.ID;