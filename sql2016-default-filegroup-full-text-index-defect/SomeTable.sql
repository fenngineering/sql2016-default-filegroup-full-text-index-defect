CREATE TABLE [dbo].[SomeTable]
(
    [ID]                INT            IDENTITY (1, 1) NOT NULL,
    [SearchableText]	NVARCHAR (200) NOT NULL,
	CONSTRAINT [PK_SomeTable] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (FILLFACTOR = 90)
) ON FG_Standard
GO

CREATE FULLTEXT INDEX ON [dbo].[SomeTable]
    ([SearchableText] LANGUAGE 1033)
    KEY INDEX [PK_SomeTable]
    ON [FullTextCatalog1]
    WITH STOPLIST OFF;
GO