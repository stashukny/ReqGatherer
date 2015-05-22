CREATE TABLE [dbo].[Workflows]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [WorkflowName] NCHAR(10) NOT NULL, 
    [IsStepRouting] BIT NOT NULL DEFAULT 0
)
