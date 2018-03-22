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

// =============================

#define GM_VERSION_MAJOR "0"
#define GM_VERSION_MINOR "1"
#define GM_VERSION_STATE "DEV"

#define SERVER_ENVIRONMENT 1

// =============================

#include <a_samp>

// =============================

#include "GM/Utils.pwn"

#include "GM/Entities.pwn"

// =============================

main()
{
	printf(" ** Dynamic SRP Started **");
	printf(" ** Version : %s.%s.%s", GM_VERSION_STATE, GM_VERSION_MAJOR, GM_VERSION_MINOR);
}