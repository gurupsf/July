 select IT.Qty, IT.Date, I.ID as InventoryID, I.Color2, I.ID, I.Part,
I.Modifier, IT.ID as Transaction_ID,
IT.Phase, IT.POItemReceive, IT.Location,
IT.TransactionType, IT.Project from Inventory I join Inventory_Transaction IT
on I.ID = IT. Inventory
where Date >= '18-July-2025 1:42 PM'