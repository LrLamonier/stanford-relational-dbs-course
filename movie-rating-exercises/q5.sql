select Re.name as reviewerName, Mo.title as movieTitle, Ra.stars as stars, Ra.ratingDate as ratingDate
from Movie Mo, Reviewer Re, Rating Ra
where Ra.rID = Re.rID and Ra.mID = Mo.mID
order by Re.name, Mo.title, Ra.stars;