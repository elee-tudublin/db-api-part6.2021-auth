/*
This T-SQL script creates a MS MSQL database with sample data

Tables:

-----------
| app_user |
-----------
------------
| category |
------------
    1|
     |
	M|
------------	 
| product  |
------------


*/


CREATE TABLE [sswd-db].dbo.app_user (
  _id int IDENTITY(1,1),
  first_name varchar(255) NULL,
  last_name varchar(255) NULL,
  email varchar(255) NOT NULL,
  password varchar(128) NOT NULL,
  role varchar(128) NOT NULL,
  CONSTRAINT PK_app_user__id PRIMARY KEY CLUSTERED (_id)
)
GO



SET IDENTITY_INSERT [dbo].app_user ON 
GO
INSERT [dbo].[app_user] ([_id], [first_name], [last_name], [email], [password], [role]) VALUES (1, 'Alice', 'Admi', 'alice@web.com', 'password', 'admi')
GO
INSERT [dbo].[app_user] ([_id], [first_name], [last_name], [email], [password], [role]) VALUES (2, 'Bob', 'Manager', 'bob@web.com', 'password', 'manager')
GO
INSERT [dbo].[app_user] ([_id], [first_name], [last_name], [email], [password], [role]) VALUES (3, 'Eve', 'User', 'eve@web.com', 'password', 'user')
GO
SET IDENTITY_INSERT [dbo].[app_user] OFF