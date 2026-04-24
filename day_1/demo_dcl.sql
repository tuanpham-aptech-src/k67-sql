-- create user 'ba_ro_01'@'%' identified by "zxczxc123";

GRANT SELECT ON company_db.* TO 'ba_ro_01'@'%';

REVOKE SELECT ON company_db.users FROM 'ba_ro_01'@'%';

-- xem danh sách user | để lấy đúng host
select * from mysql.user;