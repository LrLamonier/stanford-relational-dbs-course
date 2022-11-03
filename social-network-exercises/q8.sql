select count(total.ID) - (select count(noDuplicates.name)
						  from (select distinct name
						  from Highschooler) noDuplicates)
from Highschooler total;