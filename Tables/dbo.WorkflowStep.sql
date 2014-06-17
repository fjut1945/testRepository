CREATE TABLE [dbo].[WorkflowStep]
(
[Id] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NotifyParticipants] [bit] NOT NULL,
[SortIndex] [int] NOT NULL,
[BlanketSerieId] [int] NOT NULL,
[NotifyMessage] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EngineVersion] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WorkflowStep_EngineVersion] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkflowStep] ADD CONSTRAINT [PK_WorkflowStep] PRIMARY KEY CLUSTERED  ([Id]) WITH (FILLFACTOR=75) ON [PRIMARY]
GO
