#if defined LOAD_BUSINESS_INCLUDED
	#endinput
#endif

#define LOAD_BUSINESS_INCLUDED

// =============================

#include <a_mysql>

// =============================

forward LoadBusiness();
forward OnLoadBusiness();

public LoadBusiness()
{
	mysql_tquery(_Connect, "SELECT * FROM `"#BUSINESS_TAB"`", "OnLoadBusiness");
	return 1;

}

// =============================

public OnLoadBusiness()
{
	new count;
	cache_get_row_count(count); // Get total rows
	for(new i; i < count; i++) 
	{

	
	}
	return 1;
}
