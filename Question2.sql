select A.Year, A.County, (B.`Child Population`-A.`Child Population`) as difference
from tcp as A
inner join
    tcp as B
on A.Year=B.Year-1 and A.County=B.County
where A.Year=2016 and A.County<>"All Counties"
order by difference DESC
limit 3;