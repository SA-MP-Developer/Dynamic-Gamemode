#if defined DATA_BUSINESS_INCLUDED
	#endinput
#endif

#define DATA_BUSINESS_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_hooks>

#include "Utils.pwn"

// =============================

enum E_BUSINESS_INFOS {
	bizSqlID,
	bizName[MAX_PLAYER_NAME],
	bizOwner,
	// --
	Float:bizPosExtX,
	Float:bizPosExtY,
	Float:bizPosExtZ,
	// --
	Float:bizPosIntX,
	Float:bizPosIntY,
	Float:bizPosIntZ,
	// --
	bizIdType,
	bizVW
}

// =============================

new gBizInfos[MAX_BUSINESS][E_BUSINESS_INFOS],
    gBizInfosClone[1][E_BUSINESS_INFOS];

// =============================

hook OnGameModeInit()
{
	gBizInfosClone[0][bizSqlID] = -1;
	gBizInfosClone[0][bizOwner] = -1;
	gBizInfosClone[0][bizPosExtX] = -1.0;
	gBizInfosClone[0][bizPosExtY] = -1.0;
	gBizInfosClone[0][bizPosExtZ] = -1.0;
	gBizInfosClone[0][bizPosIntX] = -1.0;
	gBizInfosClone[0][bizPosIntY] = -1.0;
	gBizInfosClone[0][bizPosIntZ] = -1.0;
	gBizInfosClone[0][bizIdType] = -1;
	gBizInfosClone[0]bizVW] = -1;
	
	for(new i = 0; i < MAX_BUSINESS; i++)
	{
		ResetBizVars(i);
	}

	return Y_HOOKS_CONTINUE_RETURN_1;
}

// =============================


/**
	<summary>Reset a business variables</summary>
	<param name="bizId">Business In Game ID</param>
	<returns>Nothing</returns>
*/
stock ResetBizVars(bizId)
{
	gBizInfos[bizId] = gBizInfosClone[0];
}
