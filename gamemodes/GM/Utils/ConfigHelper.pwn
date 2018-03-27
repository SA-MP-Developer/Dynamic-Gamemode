#if defined CONFIG_HELPER_INCLUDED
	#endinput
#endif

#define CONFIG_HELPER_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_ini>

#include "GM/Utils/constantsUtils.pwn"

// =============================

enum E_CONFIG_ITEMS {
	DB_IP[VERY_VERY_SHORT_STR],
	DB_TABLE[VERY_VERY_SHORT_STR],
	DB_PASSWORD[SHORT_STR],
	DB_USER[VERY_SHORT_STR],
	// --
	HOSTNAME[SHORT_STR],
	MAPNAME[SHORT_STR],
	LANGUAGE[SHORT_STR],
	MODENAME[SHORT_STR]
}

stock gConfigFile[E_CONFIG_ITEMS];

// =============================

/**
	<summary>Load a configuration file</summary>
	<param name="file">The file to be loaded</param>
	<returns>True if everything is ok, false otherwise</returns>
*/
stock LoadConfigurationFile(file[])
{
	return INI_ParseFile(file, "ServerConfig_%s");
}

/**
	<summary>Save a configuration file</summary>
	<param name="file">The file to be saved</param>
	<returns>Nothing</returns>
*/
stock SaveConfigurationFile(file[])
{
	INI:confFile = INI_Open("serverconfig.cfg");

	INI_SetTag(confFile, "general");

	INI_WriteString(confFile, "hostname", gConfigFile[HOSTNAME]);
	INI_WriteString(confFile, "mapname", gConfigFile[MAPNAME]);
	INI_WriteString(confFile, "language", gConfigFile[LANGUAGE]);
	INI_WriteString(confFile, "modname", gConfigFile[MODENAME]);

	INI_SetTag(confFile, "mysql");

	INI_WriteString(confFile, "ip", gConfigFile[DB_IP]);
	INI_WriteString(confFile, "table", gConfigFile[DB_TABLE]);
	INI_WriteString(confFile, "password", gConfigFile[DB_PASSWORD]);
	INI_WriteString(confFile, "user", gConfigFile[DB_USER]);

	INI_Close(confFile);
}

/**
	<summary>Getter for config file values</summary>
	<param name="item">The item to be get</param>
	<returns>The item</returns>
*/
stock GetConfigFileItem(E_CONFIG_ITEMS:item)
{
	return gConfigFile[item];
}

// =============================

forward ServerConfig_general(name[], value[]);
public ServerConfig_general(name[], value[])
{
	INI_String("hostname", gConfigFile[HOSTNAME], SHORT_STR);
	INI_String("mapname", gConfigFile[MAPNAME], SHORT_STR);
	INI_String("language", gConfigFile[LANGUAGE], SHORT_STR);
	INI_String("modname", gConfigFile[MODENAME], SHORT_STR);

	return 1;
}

forward ServerConfig_mysql(name[], value[]);
public ServerConfig_mysql(name[], value[])
{
	INI_String("ip", gConfigFile[DB_IP], VERY_VERY_SHORT_STR);
	INI_String("table", gConfigFile[DB_TABLE], VERY_VERY_SHORT_STR);
	INI_String("password", gConfigFile[DB_PASSWORD], SHORT_STR);
	INI_String("user", gConfigFile[DB_USER], VERY_SHORT_STR);

	return 1;
}