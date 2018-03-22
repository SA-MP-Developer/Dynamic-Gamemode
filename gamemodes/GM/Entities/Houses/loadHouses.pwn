#if defined LOAD_HOUSES_INCLUDED
	#endinput
#endif

#define LOAD_HOUSES_INCLUDED


/*
Load Houses
*/

forward LoadHouses();
forward OnLoadHouses();

public LoadHouses()
{
	mysql_tquery(g_Sql, "SELECT * FROM `"#HOUSES_TAB"`", "OnLoadHouses");
	return 1;

}

public OnLoadHouses()
{
	new count;
	cache_get_row_count(count); // Get total rows
	for(new i; i < count; i++) 
	{

	
	}
	return 1;
}