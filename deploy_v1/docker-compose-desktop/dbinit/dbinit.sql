-- At the top of your init.sql
-- SET GLOBAL character_set_server = 'utf8mb4';
-- SET GLOBAL collation_server = 'utf8mb4_unicode_ci';
-- SET GLOBAL max_connections = 200;

-- Create the databases
CREATE DATABASE IF NOT EXISTS docmaccdbdentaluser CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS docmaccdbtreatmentplan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS docmaccdbbill CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS docmaccdbdentalchart CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS docmaccdbmedical CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS docmaccdbpatient CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create the custom user
CREATE USER IF NOT EXISTS 'docmacc'@'%' IDENTIFIED WITH caching_sha2_password BY 'd0cmAccpAssw0rd';

-- Grant access to all three databases
GRANT ALL PRIVILEGES ON *.* TO 'docmacc'@'%';
-- GRANT ALL PRIVILEGES ON docmaccdbdentaluser.* TO 'docmacc'@'%';
-- GRANT ALL PRIVILEGES ON docmaccdbtreatmentplan.* TO 'docmacc'@'%';
-- GRANT ALL PRIVILEGES ON docmaccdbbill.* TO 'docmacc'@'%';
-- GRANT ALL PRIVILEGES ON docmaccdbdentalchart.* TO 'docmacc'@'%';
-- GRANT ALL PRIVILEGES ON docmaccdbmedical.* TO 'docmacc'@'%';
-- GRANT ALL PRIVILEGES ON docmaccdbpatient.* TO 'docmacc'@'%';

FLUSH PRIVILEGES;