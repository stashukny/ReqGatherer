CREATE TABLE [dbo].[Fields]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[FileID] INT,
    [FieldName] VARCHAR(50) NOT NULL, 
    [DataType] VARCHAR(50) NOT NULL, 
	[Position] SMALLINT NOT NULL,
    [DefaultValue] VARCHAR(50) NULL, 
    [IsRequired] BIT NOT NULL DEFAULT 0, 
    [Note] VARCHAR(255) NULL, 
    CONSTRAINT [FK_Fields_ToFiles] FOREIGN KEY ([FileID]) REFERENCES [Files]([ID])
)
