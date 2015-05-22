CREATE TABLE [dbo].[WorkflowStates]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[WorkflowID] INT NOT NULL,
    [StateName] VARCHAR(50) NOT NULL, 
    CONSTRAINT [FK_WorkflowStates_ToWorkflows] FOREIGN KEY ([WorkflowID]) REFERENCES [Workflows]([ID])
)
