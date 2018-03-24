// implements colliders for gamemode.
// a collider is a modification of streamer area.
// data can be attached to a collider (only int)
// data_type is an entity type (see entities enum if already exists)
// data_id is the id of the entity

// GEN TODO: adds more control to events & destroy/exists functions
//           need runtime test to verify setcolliderposition behaviour 

#if defined COLLIDER_INC
    #endinput
#endif

#define COLLIDER_INC
#include <streamer>
#include <YSI\y_hooks>
//
#define COL_NO_DATA (-1)
#define COL_Z_OFFSET (3.0)
#define COL_DEF_SIZE (1.0)
//

//
// PRIVATE FUNCTIONS
//
// Doesn't need defensive programming.
INTERNAL_SaveColliderData(colid, data_type, data_id)
{
    static col_data[2];
    col_data[0] = data_type;
    col_data[1] = data_id;  
    Streamer_SetArrayData(STREAMER_TYPE_AREA, colid, E_STREAMER_EXTRA_ID, col_data);
}

//
// PUBLIC FUNCTIONS
//

/**
	<summary>Get data of collider</summary>
	<param name="colid"></param>
    <param name="data_type reference"></param>
    <param name="data_id reference"></param>
	<returns>1 on success, 0 on failure</returns>
*/
GetColliderData(colid, &data_type, &data_id)
{
    new col_data[2];
    if(Streamer_GetArrayData(STREAMER_TYPE_AREA, colid, E_STREAMER_EXTRA_ID, col_data))
    {
        data_type = col_data[0];
        data_id = col_data[1];
        return 1;
    }
    return 0;
}

/**
	<summary>Create Collider</summary>
	<param name="x"></param>
    <param name="y"></param>
    <param name="z"></param>
    <param name="data_type"></param>
    <param name="radius">optional</param>
    <param name="interiorid">optional</param>
    <param name="x">worldid</param>
	<returns>
	    id of new collider, 0 on failure.
	</returns>
	<remarks>
		use instead of CreateDynArea().
	</remarks>
*/
CreateCollider(Float:x, Float:y, Float:z, data_type, data_id, Float:radius=COL_DEF_SIZE, interiorid = -1, worldid = -1)
{
    new colid = CreateDynamicCylinder(x, y, z, z+COL_Z_OFFSET, radius, worldid, interiorid);
    if(colid == INVALID_STREAMER_ID)
    {
        // TODO: add logger 
        return 0;
    } 
    INTERNAL_SaveColliderData(colid, data_type, data_id);
    return colid;
}

/**
	<summary>Destroy a collider</summary>
	<param name="colid"></param>
	<returns>1 on success, 0 on failure</returns>
*/
DestroyCollider(colid)
{
    // TODO: needs more controls
    return DestroyDynamicArea(colid);    
}

/**
	<summary>Checks if collider exists</summary>
	<param name="colid"></param>
	<returns>1 if exists, else 0</returns>
*/
IsColliderExists(colid)
{
    // TODO: needs more controls
    return IsValidDynamicArea(colid);
}

// TODO: Needs runtime testing. im not sure about enums of streamer.
/**
	<summary>Set position of a collider</summary>
	<param name="x"></param>
	<param name="y"></param>
	<param name="z"></param>
	<returns>1 on success, 0 on failure</returns>
*/
SetColliderPosition(colid, Float:x, Float:y, Float:z)
{
    if(IsColliderExists(colid))
    {
        Streamer_SetFloatData(STREAMER_TYPE_AREA, colid, E_STREAMER_X, x);
        Streamer_SetFloatData(STREAMER_TYPE_AREA, colid, E_STREAMER_Y, y);
        Streamer_SetFloatData(STREAMER_TYPE_AREA, colid, E_STREAMER_Z, z);
        return 1;
    }
    
    else
    {
        // TODO: add logger
        return 0;
    }
}

//
// EVENTS
//

// Raise OnPlayerEnterCollider Event when player enters into a collider
hook OnPlayerEnterDynArea(playerid, colid)
{
    new d_type, d_id;
    GetColliderData(colid, d_type, d_id);
    CallLocalFunction("OnPlayerEnterCollider", "iiii", playerid, colid, d_type, d_id);
    return Y_HOOKS_BREAK_RETURN_1;
}

// Raise OnPlayerExitCollider Event when player exits from a collider
hook OnPlayerLeaveDynArea(playerid, colid)
{
    new d_type, d_id;
    GetColliderData(colid, d_type, d_id);
    CallLocalFunction("OnPlayerExitCollider", "iiii", playerid, colid, d_type, d_id);
    return Y_HOOKS_BREAK_RETURN_1;
}