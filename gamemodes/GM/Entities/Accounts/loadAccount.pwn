/*
	Main Account File
*/

#if defined LOAD_ACCOUNT_INCLUDED
	#endinput
#endif

#define LOAD_ACCOUNT_INCLUDED

#include "GM/Entities/Accounts/dataAccount.pwn"
#include "GM/Entities/Accounts/registerAccount.pwn"
#include "GM/Entities/Accounts/functionAccount.pwn"

forward BanCheck(playerid);
forward Connect(playerid);

Player::Account(playerid)
{
	GetPlayerName(playerid, gAccInfos[playerid][accNickname], MAX_PLAYER_NAME);
	GetPlayerIp(playerid, gAccInfos[playerid][accIp], 16);	
}

Player::Disconnect(playerid, reason)
{
	if(IsPlayerLoged(playerid))
	{
		ResetAccountVars(playerid);
	}
}

Player::RequestClass(playerid, classid)
{
  if(!IsPlayerLoged(playerid))
  {
      static
            query[150];
      TogglePlayerSpectating(playerid, true);

      mysql_format(_Connect, query, sizeof(query), "SELECT * FROM `#BANS_TABLE` WHERE `IP` = '%s'", gAccInfos[playerid][accIp]);
      mysql_tquery(_Connect, query, "BanCheck", "i", playerid);
  }
  return 1;
}

public BanCheck(playerid)
{
  static
        row, query[128];
  cache_get_row_count(row);

  if(!row) goto noban;

  new
      Ban_Time;
  cache_get_value_name_int(0, "BanTime", Ban_Time);

  if(Ban_Time == -1)
  {
    return Kick(playerid);
  }

  noban:

  mysql_format(_Connect, query, sizeof(query), "SELECT * FROM `#ACCOUNTS_TAB` WHERE `pseudo` = '%s'", gAccInfos[playerid][accNickname]);
  return mysql_tquery(_Connect, query, "Connect", "i", playerid);
}

public Connect(playerid)
{
  static
        row;
  cache_get_row_count(row);

  if(row)
  {
    return Dialog_Show(playerid, Login, DIALOG_STYLE_PASSWORD, "Login","Please insert your password to connect", "Login", "Cancel");
  }
  return Dialog_Show(playerid, Register, DIALOG_STYLE_INPUT, "Register","Please insert a password to register", "Register", "Annuler");
}
