CREATE TABLE [dbo].[Assignment]
(
	[DateAssigned] DATE NOT NULL, 
    [StaffID] INT NOT NULL, 
    [LocCode] INT NOT NULL,
    PRIMARY KEY (DateAssigned, StaffID, LocCode),
    CONSTRAINT STAFFID FOREIGN KEY (StaffID) REFERENCES Employee,
    CONSTRAINT LOCATIONCODE FOREIGN KEY (LocCode) REFERENCES Office
)
