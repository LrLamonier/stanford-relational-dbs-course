select hi1.name as name1, hi1.grade as grade1, hi2.name as name2, hi2.grade as grade2
from Highschooler hi1, Highschooler hi2, Likes li
where hi1.ID = li.ID1 and li.ID2 = hi2.ID and hi1.grade - 2 >= hi2.grade;