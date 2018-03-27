#if defined SERVER_CONFIG_INCLUDED
    #endinput
#endif

#define SERVER_CONFIG_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_hooks>

#include "GM/Utils/configHelper.pwn"

// =============================

hook OnGameModeInit()
{

	if(LoadConfigurationFile("serverconfig.cfg") == false)
	{
		printf("Cannot open server configuration file (filename : %s).", "serverconfig.cfg");
		printf("Aborting startup.");
		SendRconCommand("exit");
	}


	new rcon[80];

	format(rcon, sizeof(rcon), "hostname %s", gConfigFile[HOSTNAME]);
	SendRconCommand(rcon);

	format(rcon, sizeof(rcon), "weburl %s", gConfigFile[WEBSITE]);
	SendRconCommand(rcon);

	format(rcon, sizeof(rcon), "map %s", gConfigFile[MAPNAME]);
	SendRconCommand(rcon);

	format(rcon, sizeof(rcon), "language %s", gConfigFile[LANGUAGE]);
	SendRconCommand(rcon);
    
    SetGameModeText(gConfigFile[MODENAME]);

    return 1;
}

