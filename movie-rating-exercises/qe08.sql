select name
from Reviewer re, Rating ra
where re.rID = ra.rID
group by name
having count(*) >= 3;