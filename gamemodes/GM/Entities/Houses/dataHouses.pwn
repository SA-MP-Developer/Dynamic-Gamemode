#if defined DATA_HOUSES_INCLUDED
	#endinput
#endif

#define DATA_HOUSES_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_hooks>

#include "Utils.pwn"

// =============================

enum E_HOUSE_INFOS {
	hSqlId,
	hOwner
}

// =============================

new gHousesInfos[MAX_HOUSES][E_HOUSE_INFOS];

// =============================

hook OnGameModeInit()
{

	return Y_HOOKS_CONTINUE_RETURN_1;
}

// =============================

/**
	<summary>Reset a house variables</summary>
	<param name="houseID">House In Game ID</param>
	<returns>Nothing</returns>
*/
stock ResetHouseVars(houseID)
{

}