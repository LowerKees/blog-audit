ALTER USER TEST_USER_01 WITH PASSWORD = 'C0mpl3xP@sswordsSh0uldBeC0mpl3X!!!ilpohnbvfgtyjkiuy' -- Executed as the non-priviledged account TEST_USER_02
GRANT CONTROL TO TEST_USER_01;

INSERT INTO dbo.TestTable (
	FirstName, LastName, Age
)
VALUES (
	'TestUser01', 'This is a test value', 30
);