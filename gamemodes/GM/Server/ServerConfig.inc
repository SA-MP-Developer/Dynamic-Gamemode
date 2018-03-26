#include <a_samp>
#include <YSI\y_hooks>



/* Define the config for your server*/ 
#define HOST "Dynamic Semi-Roleplay"
#define WEBSITE "http://sa-mp-fr.com"
#define MAP "Los Santos"
#define LANG "Francais"
#define GAMEMODE "Dynamic SRP"


forward VA_OnScriptInit();  

hook OnGameModeInit()

{
	new rcon[80];

	format(rcon, sizeof(rcon), "hostname %s", HOST);
	SendRconCommand(rcon);

	format(rcon, sizeof(rcon), "weburl %s", WEBSITE);
	SendRconCommand(rcon);

	format(rcon, sizeof(rcon), "map %s", MAP);
	SendRconCommand(rcon);

	format(rcon, sizeof(rcon), "language %s", LANG);
	SendRconCommand(rcon);
    
    SetGameModeText(GAMEMODE);

    return 1;
}

