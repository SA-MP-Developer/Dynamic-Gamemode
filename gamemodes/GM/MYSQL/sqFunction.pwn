/*
		Mysql Function
*/

forward MysqlInit();

public MysqlInit()
{
	new Cache:result = mysql_query(_Connect, "SELECT * FROM `"#COMPTE_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);
	
	result = mysql_query(_Connect, "SELECT * FROM `"#BANS_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);

	result = mysql_query(_Connect, "SELECT * FROM `"#PERSO_TAB"`"); 
	if(!result) goto createtable;
	cache_delete(result);

	print("Toute les table sont la wtf");
	createtable:
	cache_delete(result);
	mysql_query_file(_Connect, "dev.sql");
	print("[MYSQL] Table Created");


	return 1;

}
