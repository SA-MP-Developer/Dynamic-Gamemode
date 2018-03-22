/*
Load Business
*/

forward LoadBusiness();

public LoadBusiness()
{
	mysql_tquery(g_Sql, "SELECT * FROM `"#BUSINESS_TAB"`", "OnLoadBusiness");
	return 1;

}

public OnLoadBusiness()
{
	new count;
	cache_get_row_count(count); // Get total rows
	for(new i; i < count; i++) 
	{

	
	}
	return 1;
}