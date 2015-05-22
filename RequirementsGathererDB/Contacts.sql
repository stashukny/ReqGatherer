CREATE TABLE [dbo].[Contacts]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [CustomerID] INT NOT NULL,
	[Name] VARCHAR(50) NOT NULL, 
    [Email] VARCHAR(50) NULL, 
    [Phone] VARCHAR(50) NULL, 
    CONSTRAINT [FK_Contacts_ToCustomers] FOREIGN KEY ([CustomerID]) REFERENCES [Customers]([ID])
)
