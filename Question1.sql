select A.Year, (B.sum_Child-A.sum_Child) as difference
from
    (select Year, sum(`Child Population`) as sum_Child
    from tcp
    GROUP BY  Year) as A
inner join
    (select Year, sum(`Child Population`)as sum_Child
    from tcp
    GROUP BY  Year) as B
on A.Year=B.Year-1
order by difference DESC
limit 1;