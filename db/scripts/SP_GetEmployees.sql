USE COMPANY;  
GO

IF object_id('SP_GetEmployees') IS NOT NULL DROP PROCEDURE SP_GetEmployees
GO

CREATE PROCEDURE SP_GetEmployees
(
    @Id INT = NULL,
    @FirstName NVARCHAR(50) = NULL,    
    @LastName NVARCHAR(50) = NULL,    
    @Email NVARCHAR(50) = NULL,    
    @Phone NVARCHAR(13) = NULL,    
    @Department NVARCHAR(50) = NULL
)
AS
BEGIN TRY
    SELECT 
		id_employee,
		first_name,
		last_name,
		email,
		phone,
		department
    FROM Tb_Employees
    WHERE 
		((@Id IS NULL) OR (id_employee = @Id)) AND
		((@FirstName IS NULL) OR (first_name LIKE CONCAT('%',@FirstName,'%'))) AND
		((@LastName IS NULL) OR (last_name LIKE CONCAT('%',@LastName,'%'))) AND
		((@Email IS NULL) OR (email LIKE CONCAT('%',@Email,'%'))) AND
		((@Phone IS NULL) OR (phone LIKE CONCAT('%',@Phone,'%'))) AND
		((@Department IS NULL) OR (department LIKE CONCAT('%',@Department,'%')))
	ORDER BY first_name, last_name
END TRY  
BEGIN CATCH 
	/** TODO: Add execute sp logger **/
	PRINT ERROR_MESSAGE()
    SELECT  
		CAST(null as int) as id_employee,
		CAST(null as nvarchar(50)) as first_name,
		CAST(null as nvarchar(50)) as last_name,
		CAST(null as nvarchar(50)) as email,
		CAST(null as nvarchar(13)) as phone,
		CAST(null as nvarchar(50)) as department
END CATCH;   
GO