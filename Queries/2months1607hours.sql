--Employee hours on 1607 for June and July by Phase


with cte as (select eld.Description as Dept, el.Employee, e.ScreenName,el.Project, el.RegularTime +el.OverTime+ el.OverTime2 as TimeTaken, PP.Description  from Employee_Labor el
join Employee e
on el.Employee = e.ID
join Project_Phase PP on
el.Phase = PP.ID
join Employee_Labor_Department eld
on el.Department = eld.ID
where el.Project = '1607' 
and el.Date > DATEADD(month, -2, GETDATE()) and YEAR(el.Date)='2025')

select CAST(ROUND(SUM(TimeTaken), 2) AS DECIMAL(10, 2)) as TimeGiven, ScreenName,Description, Dept
from cte
group by ScreenName, Description, Dept
having CAST(ROUND(SUM(TimeTaken), 2) AS DECIMAL(10, 2)) > 0
order by Dept, ScreenName
