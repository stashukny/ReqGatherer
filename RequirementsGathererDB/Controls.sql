CREATE TABLE [dbo].[Controls]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [PageID] INT NOT NULL,
	[FieldID] INT NULL, -- For GL?
	[ControlName] VARCHAR(50) NOT NULL, 
	[DataType] VARCHAR(50) NOT NULL, 
	[Position] SMALLINT NOT NULL,
    [DefaultValue] VARCHAR(50) NULL, 
    [IsVisible] BIT NOT NULL DEFAULT 1, 
	[IsEditable] BIT NOT NULL DEFAULT 1, 
	[IsRequired] BIT NOT NULL DEFAULT 0, 
	[IsCascading] BIT NOT NULL DEFAULT 0, 	
	[CascadeChild] INT NULL, -- Only for GL
	[IsProfiled] BIT NOT NULL DEFAULT 0, 
	[ProfileType] VARCHAR(50), -- Header, GL, Search?
	[IsFiltered] BIT NOT NULL DEFAULT 0, -- Only for Inbox
    [Note] VARCHAR(255) NULL, 
    CONSTRAINT [FK_Controls_ToPages] FOREIGN KEY ([PageID]) REFERENCES [Pages]([ID]), 
)
