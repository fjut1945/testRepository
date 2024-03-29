CREATE TABLE [dbo].[AwBuildVersion]
(
[SystemInformationID] [tinyint] NOT NULL IDENTITY(1, 1),
[Database Version] [nvarchar] (26) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VersionDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_AWBuildVersion_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AwBuildVersion] ADD CONSTRAINT [PK_AWBuildVersion_SystemInformationID] PRIMARY KEY CLUSTERED  ([SystemInformationID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current version number of the AdventureWorks 2012 sample database. ', 'SCHEMA', N'dbo', 'TABLE', N'AwBuildVersion', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Version number of the database in 9.yy.mm.dd.00 format.', 'SCHEMA', N'dbo', 'TABLE', N'AwBuildVersion', 'COLUMN', N'Database Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'dbo', 'TABLE', N'AwBuildVersion', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for AWBuildVersion records.', 'SCHEMA', N'dbo', 'TABLE', N'AwBuildVersion', 'COLUMN', N'SystemInformationID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'dbo', 'TABLE', N'AwBuildVersion', 'COLUMN', N'VersionDate'
GO

EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'dbo', 'TABLE', N'AwBuildVersion', 'CONSTRAINT', N'PK_AWBuildVersion_SystemInformationID'
GO
