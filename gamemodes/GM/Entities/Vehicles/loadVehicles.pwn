/*
Load Vehicles
*/

forward LoadVehicles();

public LoadVehicles()
{
	mysql_tquery(g_Sql, "SELECT * FROM `"#VEHICLES_TAB"`", "OnLoadVehicles");
	return 1;

}

public OnLoadVehicles()
{
	new count;
	cache_get_row_count(count); // Get total rows
	for(new i; i < count; i++) 
	{

	
	}
	return 1;
}