CREATE TABLE [dbo].[ControlStateExceptions]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[ControlID] INT,
	[WorkflowStateID] INT,
	[IsVisible] BIT NOT NULL,
	[IsEditable] BIT NOT NULL,
	[IsRequired] BIT NOT NULL, 
    CONSTRAINT [FK_ControlStateExceptions_ToControls] FOREIGN KEY ([ControlID]) REFERENCES [Controls]([ID]),
	CONSTRAINT [FK_ControlStateExceptions_ToWorkflowStates] FOREIGN KEY ([WorkflowStateID]) REFERENCES [WorkflowStates]([ID])
)
