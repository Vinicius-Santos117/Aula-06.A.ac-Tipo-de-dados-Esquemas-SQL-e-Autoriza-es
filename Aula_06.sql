/* 
Questão 1.
*/


CREATE USER User_A WITH PASSWORD = 'Teste@001';
CREATE USER User_B WITH PASSWORD = 'Teste@002';
CREATE USER User_C WITH PASSWORD = 'Teste@003';
CREATE USER User_D WITH PASSWORD = 'Teste@004';
CREATE USER User_E WITH PASSWORD = 'Teste@005';

/* 
Questão 2.
*/

GRANT SELECT, UPDATE ON time_slot TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON advisor TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON takes TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON student TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON teaches TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON section TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON instructor TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON course TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON department TO User_A WITH GRANT OPTION;
GRANT SELECT, UPDATE ON prereq TO User_A WITH GRANT OPTION;


/* 
Questão 3.
*/



SELECT princ.name AS Usuario,
    princ.type_desc AS Tipo,
    perm.permission_name AS Permissao,
    perm.state_desc AS Estado,
    perm.class_desc AS Classe,
    OBJECT_NAME(perm.major_id) AS Objeto
FROM sys.database_principals princ
LEFT JOIN sys.database_permissions perm
    ON perm.grantee_principal_id = princ.principal_id
WHERE princ.name = 'User_A';