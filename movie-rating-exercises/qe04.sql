select distinct title
from Movie mo
where mo.mID not in (select ra.mID
					 from Rating ra, Reviewer re
                     where re.name = "Chris Jackson" and ra.rID = re.rID);