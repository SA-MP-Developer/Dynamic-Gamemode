#if defined DATA_VEHICLES_INCLUDED
	#endinput
#endif

#define DATA_VEHICLES_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_hooks>

#include "Utils.pwn"

// =============================

enum E_VEHICLE_INFOS {
	vSqlId,
	vOwner
}

// =============================

new gVehiclesInfos[MAX_HOUSES][E_VEHICLE_INFOS];

// =============================

hook OnGameModeInit()
{

	return Y_HOOKS_CONTINUE_RETURN_1;
}

// =============================

/**
	<summary>Reset a vehicle variables</summary>
	<param name="houseID">Vehicle In Game ID</param>
	<returns>Nothing</returns>
*/
stock ResetVehicleVars(vehID)
{

}