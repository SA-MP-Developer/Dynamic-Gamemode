#if defined DATA_BUSINESS_INCLUDED
	#endinput
#endif

#define DATA_BUSINESS_INCLUDED

// =============================

#include <a_samp>
#include <YSI/y_hooks>

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

new gBizInfos[MAX_BUSINESS][E_BUSINESS_INFOS];

// =============================

hook OnGameModeInit()
{
	for(new i = 0; i < MAX_BUSINESS; i++)
	{
		gBizInfos[i][bizSqlID] = -1;
		gBizInfos[i][bizName] = "";
		gBizInfos[i][bizOwner] = -1;
		gBizInfos[i][bizPosExtX] = -1.0;
		gBizInfos[i][bizPosExtY] = -1.0;
		gBizInfos[i][bizPosExtZ] = -1.0;
		gBizInfos[i][bizPosIntX] = -1.0;
		gBizInfos[i][bizPosIntY] = -1.0;
		gBizInfos[i][bizPosIntZ] = -1.0;
		gBizInfos[i][bizIdType] = -1;
		gBizInfos[i]bizVW] = -1;
	}
}

// =============================

ResetBizVars(bizId)
{
	gBizInfos[bizId][bizSqlID] = -1;
	gBizInfos[bizId][bizName] = "";
	gBizInfos[bizId][bizOwner] = -1;
	gBizInfos[bizId][bizPosExtX] = -1.0;
	gBizInfos[bizId][bizPosExtY] = -1.0;
	gBizInfos[bizId][bizPosExtZ] = -1.0;
	gBizInfos[bizId][bizPosIntX] = -1.0;
	gBizInfos[bizId][bizPosIntY] = -1.0;
	gBizInfos[bizId][bizPosIntZ] = -1.0;
	gBizInfos[bizId][bizIdType] = -1;
	gBizInfos[bizId]bizVW] = -1;
}