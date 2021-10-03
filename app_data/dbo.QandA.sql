CREATE TABLE [dbo].[QandA] (
    [編號]   INT            IDENTITY (1, 1) NOT NULL,
    [姓名]   VARCHAR (20)   NULL,
    [問題標題] VARCHAR (100)  NOT NULL,
    [問題內容] VARCHAR (1000) NOT NULL,
    [留言時間] DATETIME       NOT NULL DEFAULT getdate(),
    [回覆內容] VARCHAR (1000) NULL DEFAULT '尚未回覆',
    [回覆時間] DATETIME       NULL ,
    PRIMARY KEY CLUSTERED ([編號] ASC)
);

