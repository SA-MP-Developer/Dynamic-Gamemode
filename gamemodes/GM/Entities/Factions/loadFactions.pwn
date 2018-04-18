#if defined LOAD_FACTIONS_INCLUDED
	#endinput
#endif

#define LOAD_FACTIONS_INCLUDED

#include "GM/Entities/Factions/dataQg.pwn"
#include "GM/Entities/Factions/loadQg.pwn"

/*
	Load Factions
*/

forward LoadFactions();
forward OnFactionsLoad();

/*************************************/

public LoadFactions()
{
	mysql_tquery(_Connect, "SELECT * FROM `"#FACTIONS_TAB"`", "OnFactionsLoad");
	return 1;

}

public OnFactionsLoad()
{
	new count, FactionName[LONG_STR], FactionType, req[100];
	cache_get_row_count(count); // Get total rows
	for(new i; i < count; i++) 
	{
		cache_get_value_name(i, "name", FactionName);
		cache_get_value_name_int(i, "idType", FactionType);
		mysql_format(_Connect, "SELECT * FROM `"#QG_TAB"` WHERE name = `%s`", FactionName);
		mysql_tquery(_Connect, "SELECT * FROM `"#QG_TAB"`", "OnQgLoad", "sii", FactionName, FactionType, FactionID);
	}
	
	return 1;
}
