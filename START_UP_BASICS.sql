-- CREATE --
-- To create a database: 
CREATE DATABASE <database name>;

-- USE --
-- To use a specific database: 
USE <database name>;

-- DROP -- 
-- To delete a database: 
DROP DATABASE <database name>;

-- READ ONLY --
-- To set a database to readonly: 
ALTER DATABASE <database name> READ ONLY = 1;
-- If it's read only you can't make changes but you can read data
-- To disable readonly set to 0

-- ENCRYPTION --
-- To enable encryption: 
ALTER DATABASE <database name> ENCRYPTION = 'Y';

-- FINDING A PLUGIN --
SELECT PLUGIN_NAME, PLUGIN_STATUS
FROM INFORMATION_SCHEMA.PLUGINS;
SHOW VARIABLES LIKE 'plugin_dir';
INSTALL PLUGIN <plugin_type (ex: keyring_file)> SONAME '<file_name.dll>';