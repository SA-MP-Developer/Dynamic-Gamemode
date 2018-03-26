#if defined MAIN_FILE_INCLUDED
	#endinput
#endif

#define MAIN_FILE_INCLUDED

/*

  _____                              _         _____ _____  _____  
 |  __ \                            (_)       / ____|  __ \|  __ |
 | |  | |_   _ _ __   __ _ _ __ ___  _  ___  | (___ | |__) | |__) |
 | |  | | | | | '_ \ / _` | '_ ` _ \| |/ __|  \___ \|  _  /|  ___/ 
 | |__| | |_| | | | | (_| | | | | | | | (__   ____) | | \ \| |     
 |_____/ \__, |_| |_|\__,_|_| |_| |_|_|\___| |_____/|_|  \_\_|     
		  __/ |                                                    
		 |___/                                                     

*/
#if __Pawn != 0x30A
	#error Please Download Zeex's PAWN Compiler: github.com/Zeex/pawn/releases
#elseif __Pawn >= 0x0400		 
	#error This GameMode does not support PAWN 4
#endif

/**----------------------------------------------------**/
		 
#if __compat != 1
	#pragma compat 1
#endif
// =============================

#define GM_VERSION_MAJOR "0"
#define GM_VERSION_MINOR "1"
#define GM_VERSION_STATE "DEV"

#define SERVER_ENVIRONMENT 1

/***
 *        ___                          _                  _           
 *       /   \___ _ __   ___ _ __   __| | __ _ _ __   ___(_) ___  ___ 
 *      / /\ / _ \ '_ \ / _ \ '_ \ / _` |/ _` | '_ \ / __| |/ _ \/ __|
 *     / /_//  __/ |_) |  __/ | | | (_| | (_| | | | | (__| |  __/\__ \
 *    /___,' \___| .__/ \___|_| |_|\__,_|\__,_|_| |_|\___|_|\___||___/
 *               |_|                                                  
 *
 */

#include <a_samp>
#include <YSI\y_hooks>
#include <YSI\y_iterate>


#if defined FindModelFileNameFromCRC
	#define SAMP_VERSION "0.3.7DL"
#else
	#define SAMP_VERSION "0.3.7"
#endif

// =============================

#include "GM/Utils.pwn"

#include "GM/Entities.pwn"

#include "GM/Server/startup.inc"

 #include "GM/Server/server_config.inc"
// =============================

// UNIT TESTS FRAMEWORK
// Uncomment to disable.
//
#include "GM_tests/run_tests"




main()
{
	printf(" ** Dynamic SRP Started **");
	printf(" ** Version : %s.%s.%s", GM_VERSION_STATE, GM_VERSION_MAJOR, GM_VERSION_MINOR);
}



