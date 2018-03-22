/*
		Mysql Function
*/

forward MysqlInit();

public MysqlInit()
{
	new Cache:result = mysql_query(_Connect, "SELECT * FROM `"#ACCOUNTS_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);
	
	result = mysql_query(_Connect, "SELECT * FROM `"#BUSINESS_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);

	result = mysql_query(_Connect, "SELECT * FROM `"#HOUSES_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);
	
	result = mysql_query(_Connect, "SELECT * FROM `"#VEHICLES_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);

	print("Toutes les tables sont présentes");
	createtable:
	cache_delete(result);
	mysql_query_file(_Connect, "dev.sql");
	print("[MYSQL] Table Created");


	return 1;

}
