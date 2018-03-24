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
	for(new i=0, vehicleid=1; i < count; i++) 
	{
		cache_get_value_name_int(i, "id", vAccInfos[vehicleid][vIdSQL]);
		cache_get_value_name_int(i, "idModel", vAccInfos[vehicleid][vModelID]);
		cache_get_value_name_int(i, "idOwner", vAccInfos[vehicleid][vOwnerID]);
		
		cache_get_value_name_float(i, "PosX", vAccInfos[vehicleid][vPos][0]);
		cache_get_value_name_float(i, "PosY", vAccInfos[vehicleid][vPos][1]);
		cache_get_value_name_float(i, "PosZ", vAccInfos[vehicleid][vPos][2]);
		
		cache_get_value_name_float(i, "RotX", vAccInfos[vehicleid][vPos][3]);
		cache_get_value_name_float(i, "RotY", vAccInfos[vehicleid][vPos][4]);
		cache_get_value_name_float(i, "RotZ", vAccInfos[vehicleid][vPos][5]);
		
		cache_get_value_name_int(i, "Interior", vAccInfos[vehicleid][vInt]);
		cache_get_value_name_int(i, "VirtualWorld", vAccInfos[vehicleid][vVW]);
		
		cache_get_value_name_int(i, "Color1", vAccInfos[vehicleid][vColor][0]);
		cache_get_value_name_int(i, "Color2", vAccInfos[vehicleid][vColor][1]);
		
		
		vAccInfos[vehicleid][vIdIG] = CreateVehicle(playerid, vAccInfos[vehicleid][vPos][0], vAccInfos[vehicleid][vPos][1], vAccInfos[vehicleid][vPos][2], vAccInfos[vehicleid][vPos][5], vAccInfos[vehicleid][vColor][0], vAccInfos[vehicleid][vColor][0], 0, 0);
		SetVehicleAngularVelocity(vehicleid, vAccInfos[vehicleid][vPos][3], vAccInfos[vehicleid][vPos][4], vAccInfos[vehicleid][vPos][5])
	}
	return 1;
}
