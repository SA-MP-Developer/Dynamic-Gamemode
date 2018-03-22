#if defined CONFIG_HELPER_INCLUDED
	#endinput
#endif

#define CONFIG_HELPER_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_ini>

// =============================

enum E_CONFIG_ITEMS {
	DB_IP,
	DB_TABLE,
	DB_PASSWORD,
	DB_USER,
	// --
	HOSTNAME,
	MAPNAME,
	LANGUAGE
}

new gConfigFile[E_CONFIG_ITEMS];

// =============================

stock LoadConfigurationFile(file[])
{

}

stock SaveConfigurationFile(file[])
{

}

stock GetConfigFileItem(E_CONFIG_ITEMS:item)
{

}