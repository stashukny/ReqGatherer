CREATE TABLE [dbo].[Customers]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[CustomerName] VARCHAR(255) NOT NULL,
	[SalesType] VARCHAR(50) NOT NULL,
	[COR360Version] VARCHAR(10) NOT NULL,
	[COR360URL] VARCHAR(100) NOT NULL, 
    [ERPSystem] VARCHAR(50) NOT NULL, 
    [EstimatedMonthlyVolume] INT NULL, 
    [EstimatedUsers] INT NULL, 
	[NewWorkIntervalID] INT NULL, 
	[NewWorkTime] TIME NULL, 
	[WatchdogIntervalID] INT NULL, 
	[WatchdogTime] TIME NULL, 
    [Note] VARCHAR(255) NULL, 
    CONSTRAINT [FK_Customers_ToIntervals] FOREIGN KEY ([NewWorkIntervalID]) REFERENCES [Intervals]([ID]), 
    CONSTRAINT [FK_Customers_ToIntervals2] FOREIGN KEY ([WatchdogIntervalID]) REFERENCES [Intervals]([ID])	
)
