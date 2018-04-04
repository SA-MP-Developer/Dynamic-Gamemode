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
	new count, FactionName[LONG_STR], FactionType;
	cache_get_row_count(count); // Get total rows
	for(new i; i < count; i++) 
	{
	}
	cache_get_value_name(0, "name", FactionName);
	cache_get_value_name_int(0, "idType", FactionType);
	mysql_tquery(_Connect, "SELECT * FROM `"#QG_TAB"`", "OnQgLoad", "si", FactionName, FactionType);
	return 1;
}
