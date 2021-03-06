/****** Object:  ForeignKey [FK_QuestionChoice_Choice]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Choice]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice] DROP CONSTRAINT [FK_QuestionChoice_Choice]
GO
/****** Object:  ForeignKey [FK_QuestionChoice_Question]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice] DROP CONSTRAINT [FK_QuestionChoice_Question]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Exam]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Exam]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Question]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Question]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Scorer]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Scorer]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Scorer]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_UserProfile]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_UserProfile]
GO
/****** Object:  ForeignKey [FK_ExamResult_Exam]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult] DROP CONSTRAINT [FK_ExamResult_Exam]
GO
/****** Object:  ForeignKey [FK_ExamResult_UserProfile]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult] DROP CONSTRAINT [FK_ExamResult_UserProfile]
GO
/****** Object:  ForeignKey [FK_ExamQuestions_Exam]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions] DROP CONSTRAINT [FK_ExamQuestions_Exam]
GO
/****** Object:  ForeignKey [FK_ExamQuestions_Question]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions] DROP CONSTRAINT [FK_ExamQuestions_Question]
GO
/****** Object:  StoredProcedure [dbo].[DeleteExam]    Script Date: 07/18/2010 15:15:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteExam]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[DeleteExam]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 07/18/2010 15:15:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[DeleteUser]
GO
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions] DROP CONSTRAINT [FK_ExamQuestions_Exam]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions] DROP CONSTRAINT [FK_ExamQuestions_Question]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamQuestions]') AND type in (N'U'))
DROP TABLE [dbo].[ExamQuestions]
GO
/****** Object:  Table [dbo].[ExamResult]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult] DROP CONSTRAINT [FK_ExamResult_Exam]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult] DROP CONSTRAINT [FK_ExamResult_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamResult]') AND type in (N'U'))
DROP TABLE [dbo].[ExamResult]
GO
/****** Object:  Table [dbo].[QuestionAnswer]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Exam]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Question]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Scorer]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Scorer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]') AND type in (N'U'))
DROP TABLE [dbo].[QuestionAnswer]
GO
/****** Object:  Table [dbo].[QuestionChoice]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Choice]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice] DROP CONSTRAINT [FK_QuestionChoice_Choice]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice] DROP CONSTRAINT [FK_QuestionChoice_Question]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuestionChoice]') AND type in (N'U'))
DROP TABLE [dbo].[QuestionChoice]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserProfile_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [DF_UserProfile_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Choice]') AND type in (N'U'))
DROP TABLE [dbo].[Choice]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 07/18/2010 15:15:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
DROP TABLE [dbo].[Question]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 07/18/2010 15:15:34 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Exam_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT [DF_Exam_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
DROP TABLE [dbo].[Exam]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 07/18/2010 15:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Exam](
	[ExamId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Instructions] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_Exam_Status]  DEFAULT ((1)),
	[Value] [int] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Question]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionCategory] [varchar](50) NULL,
	[QuestionType] [nchar](10) NULL,
	[QuestionText] [nvarchar](max) NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Choice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Choice](
	[ChoiceId] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](max) NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED 
(
	[ChoiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[EmailAddress] [varchar](255) NOT NULL,
	[UserType] [char](1) NOT NULL,
	[GradeLevel] [char](10) NOT NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_UserProfile_Status]  DEFAULT ((1)),
	[Password] [varchar](300) NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND name = N'IX_UserProfile')
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserProfile] ON [dbo].[UserProfile] 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionChoice]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuestionChoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuestionChoice](
	[QuestionId] [int] NOT NULL,
	[ChoiceId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QuestionChoice]') AND name = N'IX_QuestionChoice')
CREATE UNIQUE NONCLUSTERED INDEX [IX_QuestionChoice] ON [dbo].[QuestionChoice] 
(
	[QuestionId] ASC,
	[ChoiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[QuestionChoice]') AND name = N'IX_QuestionSort')
CREATE UNIQUE NONCLUSTERED INDEX [IX_QuestionSort] ON [dbo].[QuestionChoice] 
(
	[QuestionId] ASC,
	[SortOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionAnswer]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuestionAnswer](
	[QuestionAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[ExamId] [int] NOT NULL,
	[Score] [int] NULL,
	[ScorerId] [int] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuestionAnswer] PRIMARY KEY CLUSTERED 
(
	[QuestionAnswerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExamResult]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamResult]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExamResult](
	[UserId] [int] NOT NULL,
	[ExamId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[UserScore] [int] NULL,
	[MaxScore] [int] NULL,
 CONSTRAINT [PK_ExamResult] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ExamId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ExamResult]') AND name = N'IX_ExamResult')
CREATE NONCLUSTERED INDEX [IX_ExamResult] ON [dbo].[ExamResult] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 07/18/2010 15:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExamQuestions](
	[ExamId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_ExamQuestions_1] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[QuestionId] ASC,
	[SortOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 07/18/2010 15:15:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DeleteUser]
	@UserId int
AS
	update dbo.UserProfile
	set Status = 0
	where UserId = @UserId
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteExam]    Script Date: 07/18/2010 15:15:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteExam]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DeleteExam]
	@ExamId int
AS
	update dbo.Exam
	set status = 0
	where ExamId = @ExamId' 
END
GO
/****** Object:  ForeignKey [FK_QuestionChoice_Choice]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Choice]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice]  WITH CHECK ADD  CONSTRAINT [FK_QuestionChoice_Choice] FOREIGN KEY([ChoiceId])
REFERENCES [dbo].[Choice] ([ChoiceId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Choice]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice] CHECK CONSTRAINT [FK_QuestionChoice_Choice]
GO
/****** Object:  ForeignKey [FK_QuestionChoice_Question]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice]  WITH CHECK ADD  CONSTRAINT [FK_QuestionChoice_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionChoice_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionChoice]'))
ALTER TABLE [dbo].[QuestionChoice] CHECK CONSTRAINT [FK_QuestionChoice_Question]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Exam]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Exam]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Question]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Question]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Scorer]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Scorer]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Scorer] FOREIGN KEY([ScorerId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_Scorer]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Scorer]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_UserProfile]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuestionAnswer_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuestionAnswer]'))
ALTER TABLE [dbo].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_UserProfile]
GO
/****** Object:  ForeignKey [FK_ExamResult_Exam]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult]  WITH CHECK ADD  CONSTRAINT [FK_ExamResult_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult] CHECK CONSTRAINT [FK_ExamResult_Exam]
GO
/****** Object:  ForeignKey [FK_ExamResult_UserProfile]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult]  WITH CHECK ADD  CONSTRAINT [FK_ExamResult_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamResult_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamResult]'))
ALTER TABLE [dbo].[ExamResult] CHECK CONSTRAINT [FK_ExamResult_UserProfile]
GO
/****** Object:  ForeignKey [FK_ExamQuestions_Exam]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestions_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Exam]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions] CHECK CONSTRAINT [FK_ExamQuestions_Exam]
GO
/****** Object:  ForeignKey [FK_ExamQuestions_Question]    Script Date: 07/18/2010 15:15:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestions_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamQuestions_Question]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamQuestions]'))
ALTER TABLE [dbo].[ExamQuestions] CHECK CONSTRAINT [FK_ExamQuestions_Question]
GO
