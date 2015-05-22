CREATE TABLE [dbo].[Files]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[CustomerId] INT NOT NULL, 
    [FileName] VARCHAR(50) NOT NULL,
	[FileDescription] VARCHAR(50) NULL, 
    [Note] VARCHAR(255) NULL, 
    [SuccessEmailAddress] VARCHAR(50) NULL, 
    [ErrorEmailAddress] VARCHAR(50) NULL, 
    CONSTRAINT [FK_Files_ToCustomers] FOREIGN KEY ([CustomerID]) REFERENCES [Customers]([ID])
)
