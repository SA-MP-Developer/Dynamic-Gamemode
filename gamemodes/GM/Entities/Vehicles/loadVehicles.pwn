#if defined LOAD_VEHICLES_INCLUDED
	#endinput
#endif

#define LOAD_VEHICLES_INCLUDED

/*
Load Vehicles
*/

forward LoadVehicles();
forward OnLoadVehicles();

public LoadVehicles()
{
	mysql_tquery(_Connect, "SELECT * FROM `"#VEHICLES_TAB"`", "OnLoadVehicles");
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
