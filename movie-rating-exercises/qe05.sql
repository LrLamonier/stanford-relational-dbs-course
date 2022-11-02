select distinct re1.name, re2.name
from (select distinct name, mID, re.rID
	  from Reviewer re, Rating ra
      where re.rID = ra.rID) re1,
	 (select distinct name, mID, re.rID
      from Reviewer re, Rating ra
      where re.rID = ra.rID) re2
where re1.mID = re2.mID and re1.rID <> re2.rID and re1.name < re2.name
order by re1.name;