ALTER DATABASE QCBuild
SET SINGLE_USER WITH
ROLLBACK IMMEDIATE
 
----Restore Database
RESTORE DATABASE QCBuild
FROM DISK = 'D:\BackUpYourBaackUpFile.bak'
WITH MOVE 'QCBuildMDF' TO 'D:\QCBuildMDFFile.mdf',
MOVE 'QCBuildLDF' TO 'D:\QCBuildLDFFile.ldf'
 
/*If there is no error in statement before database will be in multiuser
mode.
If error occurs please execute following command it will convert
database in multi user.*/
ALTER DATABASE QCBuild SET MULTI_USER
GO
