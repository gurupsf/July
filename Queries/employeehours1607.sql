--Employee hours on 1607 for June and July


with cte as (select el.Employee, e.ScreenName,el.Project, el.RegularTime+el.OverTime+ el.OverTime2 as TimeTaken  from Employee_Labor el
join Employee e
on el.Employee = e.ID
where el.Project = '1607' 
and el.Date Between '6-1-2025' and '7-21-2025') 

select sum(TimeTaken) as TimeGiven, ScreenName
from cte
group by ScreenName

