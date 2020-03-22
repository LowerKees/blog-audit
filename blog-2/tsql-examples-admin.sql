-- Executed as the admin account 'nimda'
SET NOCOUNT ON;

IF NOT EXISTS (
	SELECT * 
	FROM sys.database_principals
	WHERE name = 'TEST_USER_01'
)
	CREATE USER TEST_USER_01 WITH PASSWORD = 'Th!sSh0uldB3C0mpl3xEnough!!';

IF NOT EXISTS (
	SELECT * 
	FROM sys.database_principals
	WHERE name = 'TEST_USER_02'
)
	CREATE USER TEST_USER_02 WITH PASSWORD = 'Th!sSh0uldB3C0mpl3xEnoughT00!!';

ALTER ROLE db_datareader ADD MEMBER TEST_USER_01;
ALTER ROLE db_owner ADD MEMBER TEST_USER_02;

GRANT INSERT ON SCHEMA::dbo TO TEST_USER_01;

ALTER USER TEST_USER_01 WITH PASSWORD = 'C0mpl3xP@sswordsSh0uldBeC0mpl3X!'

IF OBJECT_ID('dbo.TestTable') IS NULL
	BEGIN
		CREATE TABLE dbo.TestTable (
			FirstName NVARCHAR(128) NULL,
			LastName NVARCHAR(128) NULL,
			Age INT NULL
		);
	END;

INSERT INTO dbo.TestTable (
	FirstName, LastName, Age
)
VALUES (
	'TestName', 'TestLastName', 30
);