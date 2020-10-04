/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if '$(DeployTestData)' = 'true'

BEGIN

DELETE FROM EMPLOYEE;

INSERT INTO EMPLOYEE (StaffID, GivenName, Surname) VALUES
(1, 'SYED', 'RAZVI'),
(2, 'BILL', 'CLINTON'),
(3, 'STEVE', 'JOBS');

END