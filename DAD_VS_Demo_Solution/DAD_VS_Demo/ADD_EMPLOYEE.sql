CREATE PROCEDURE [dbo].[ADD_EMPLOYEE]
	@pStaffID int = 0,
	@pGivenName NVARCHAR (50),
	@pSurname NVARCHAR (50)

AS
	INSERT INTO EMPLOYEE (StaffID, GivenName, Surname) VALUES
(@pStaffID, @pGivenName, @pSurname);

RETURN 0
