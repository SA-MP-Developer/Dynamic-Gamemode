 /*
  Anti-cheat Data and more 
 */
 
 
// Sync Const 

const PLAYER_SYNC = 207;
const VEHICLE_SYNC = 200;
const PASSENGER_SYNC = 211;
const TRAILER_SYNC = 210;
const UNOCCUPIED_SYNC = 209;
const AIM_SYNC = 203;
const BULLET_SYNC = 206;

#define RPC_ServerJoin   137 
#define RPC_ServerQuit   138 
#define RPC_InitGame   139 
#define RPC_ClientJoin   25 
#define RPC_NPCJoin   54 
#define RPC_Death   53 
#define RPC_RequestClass   128 
#define RPC_RequestSpawn   129 
#define RPC_SetInteriorId   118 
#define RPC_Spawn   52 
#define RPC_Chat   101 
#define RPC_EnterVehicle   26 
#define RPC_ExitVehicle   154 
#define RPC_DamageVehicle   106 
#define RPC_MenuSelect   132 
#define RPC_MenuQuit   140 
#define RPC_ScmEvent   96 
#define RPC_AdminMapTeleport   255 
#define RPC_WorldPlayerAdd   32 
#define RPC_WorldPlayerDeath   166 
#define RPC_WorldPlayerRemove   163 
#define RPC_WorldVehicleAdd   164 
#define RPC_WorldVehicleRemove   165 
#define RPC_SetCheckpoint   107 
#define RPC_DisableCheckpoint   37 
#define RPC_SetRaceCheckpoint   38 
#define RPC_DisableRaceCheckpoint   39 
#define RPC_UpdateScoresPingsIPs   155 
#define RPC_SvrStats   102 
#define RPC_GameModeRestart   40 
#define RPC_ConnectionRejected   130 
#define RPC_ClientMessage   93 
#define RPC_WorldTime   94 
#define RPC_Pickup   95 
#define RPC_DestroyPickup   63 
#define RPC_DestroyWeaponPickup   97 
#define RPC_Weather   152 
#define RPC_SetTimeEx   255 
#define RPC_ToggleClock   30 
#define RPC_ServerCommand   50 
#define RPC_PickedUpPickup   131 
#define RPC_PickedUpWeapon   255 
#define RPC_VehicleDestroyed   136 
#define RPC_DialogResponse   62 
#define RPC_PlayAudioStream   41 
#define RPC_StopAudioStream   42 
#define RPC_ClickPlayer   23 
#define RPC_PlayerUpdate   60 
#define RPC_ClickTextDraw   83 
#define RPC_MapMarker   119 
#define RPC_PlayerGiveTakeDamage   115 
#define RPC_EnterEditObject   27 
#define RPC_EditObject   117 

#define RPC_ScrSetSpawnInfo   68 
#define RPC_ScrSetPlayerTeam   69 
#define RPC_ScrSetPlayerSkin   153 
#define RPC_ScrSetPlayerName   11 
#define RPC_ScrSetPlayerPos   12 
#define RPC_ScrSetPlayerPosFindZ   13 
#define RPC_ScrSetPlayerHealth   14 
#define RPC_ScrPutPlayerInVehicle   70 
#define RPC_ScrRemovePlayerFromVehicle   71 
#define RPC_ScrSetPlayerColor   72 
#define RPC_ScrDisplayGameText   73 
#define RPC_ScrSetInterior   156 
#define RPC_ScrSetCameraPos   157 
#define RPC_ScrSetCameraLookAt   158 
#define RPC_ScrSetVehiclePos   159 
#define RPC_ScrSetVehicleZAngle   160 
#define RPC_ScrVehicleParams   161 
#define RPC_ScrSetCameraBehindPlayer   162 
#define RPC_ScrTogglePlayerControllable   15 
#define RPC_ScrPlaySound   16 
#define RPC_ScrSetWorldBounds   17 
#define RPC_ScrHaveSomeMoney   18 
#define RPC_ScrSetPlayerFacingAngle   19 
#define RPC_ScrResetMoney   20 
#define RPC_ScrResetPlayerWeapons   21 
#define RPC_ScrGivePlayerWeapon   22 
#define RPC_ScrRespawnVehicle   255 
#define RPC_ScrLinkVehicle   65 
#define RPC_ScrSetPlayerArmour   66 
#define RPC_ScrDeathMessage   55 
#define RPC_ScrSetMapIcon   56 
#define RPC_ScrDisableMapIcon   144 
#define RPC_ScrSetWeaponAmmo   145 
#define RPC_ScrSetGravity   146 
#define RPC_ScrSetVehicleHealth   147 
#define RPC_ScrAttachTrailerToVehicle   148 
#define RPC_ScrDetachTrailerFromVehicle   149 
#define RPC_ScrCreateObject   44 
#define RPC_ScrSetObjectPos   45 
#define RPC_ScrSetObjectRotation   46 
#define RPC_ScrDestroyObject   47 
#define RPC_ScrCreateExplosion   79 
#define RPC_ScrShowNameTag   80 
#define RPC_ScrMoveObject   99 
#define RPC_ScrStopObject   122 
#define RPC_ScrNumberPlate   123 
#define RPC_ScrTogglePlayerSpectating   124 
#define RPC_ScrSetPlayerSpectating   255 
#define RPC_ScrPlayerSpectatePlayer   126 
#define RPC_ScrPlayerSpectateVehicle   127 
#define RPC_ScrRemoveComponent   57 
#define RPC_ScrForceSpawnSelection   74 
#define RPC_ScrAttachObjectToPlayer   75 
#define RPC_ScrInitMenu   76 
#define RPC_ScrShowMenu   77 
#define RPC_ScrHideMenu   78 
#define RPC_ScrSetPlayerWantedLevel   133 
#define RPC_ScrShowTextDraw   134 
#define RPC_ScrHideTextDraw   135 
#define RPC_ScrEditTextDraw   105 
#define RPC_ScrAddGangZone   108 
#define RPC_ScrRemoveGangZone   120 
#define RPC_ScrFlashGangZone   121 
#define RPC_ScrStopFlashGangZone   85 
#define RPC_ScrApplyAnimation   86 
#define RPC_ScrClearAnimations   87 
#define RPC_ScrSetSpecialAction   88 
#define RPC_ScrEnableStuntBonus   104 
#define RPC_ScrSetFightingStyle   89 
#define RPC_ScrSetPlayerVelocity   90 
#define RPC_ScrSetVehicleVelocity   91 
#define RPC_ScrToggleWidescreen   255 
#define RPC_ScrSetVehicleTireStatus   255 
#define RPC_ScrSetPlayerDrunkLevel   35 
#define RPC_ScrDialogBox   61 
#define RPC_ScrCreate3DTextLabel   36 

