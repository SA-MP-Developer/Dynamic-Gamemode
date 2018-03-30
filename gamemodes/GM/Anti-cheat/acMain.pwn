/*
  Main file of Dynamic Gamemode Anti cheat system 
  using : 
  
  Pawn.Raknet 
*/

#if SERVER_AC == 0
  #endinput
#endif

//=============================

#include <Pawn.RakNet>

#include "GM/Anti-cheat/acData.pwn"
#include "GM/Anti-cheat/acServer.pwn"
#include "GM/Anti-cheat/acClient.pwn"


