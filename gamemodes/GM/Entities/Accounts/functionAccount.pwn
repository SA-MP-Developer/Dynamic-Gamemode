#if defined FUNCTION_ACCOUNT_INCLUDED
	#endinput
#endif

#define FUNCTION_ACCOUNT_INCLUDED

// =============================

#include <a_samp>
#include <YSI\y_hooks>

#include "GM/Entities/Accounts/dataAccount.pwn"

// =============================

/**
	<summary>Check if a player is logged</summary>
	<param name="playerid">Player In Game ID</param>
	<returns>1 if logged, 0 otherwise</returns>
*/

stock IsPlayerLoged(playerid)
{
  return gAccInfos[playerid][accLogged];
}

stock GetAccountData(playerid)
{
  
}
