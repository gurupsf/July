with cte as (select IT.Project,Sum(IT.Qty) as Remaining_quantity,
Max(IT.Date) as Last_Modified_Date,I.Part 
--, I.ID as InventoryID, I.Color2, I.ID,
---I.Modifier, IT.ID as Transaction_ID,
---IT.Phase, IT.POItemReceive, IT.Location,
--IT.TransactionType, IT.Project 
from Inventory I join Inventory_Transaction IT
on I.ID = IT. Inventory
--where Date >= '18-July-2025 1:42 PM'
group by IT.Project, I.Part)

select * from cte
where Remaining_quantity>0
and Last_Modified_Date < DATEADD(month, -2, GETDATE()) and YEAR(Last_Modified_Date)='2025' and Project = 1867
order by Project
