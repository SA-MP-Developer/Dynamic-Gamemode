// GENERIC TIMERS
// Some generic timers. Use them slightly.
// IMPORTANT: USE Y_HOOKS_CONTINUE_RETURN_1
// when you hooks these.
//
// Exemple :
// 
// hook EachOneHour()
// {
//     // do something
//     return Y_HOOKS_CONTINUE_RETURN_1;
// }
//

#if defined SERVER_GENERIC_TIMERS
    #endinput
#endif

#define SERVER_GENERIC_TIMERS
#include <YSI\y_hooks>

/**
	<summary>Server event callback raised each one hour</summary>
	<remarks>You have to return Y_HOOKS_CONTINUE_RETURN_1</remarks>
*/
forward EachOneHour();

/**
	<summary>Server event callback raised each five minutes</summary>
	<remarks>You have to return Y_HOOKS_CONTINUE_RETURN_1</remarks>
*/
forward EachFiveMinutes();

/**
	<summary>Server event callback raised each second</summary>
	<remarks>You have to return Y_HOOKS_CONTINUE_RETURN_1</remarks>
*/
forward EachOneSecond();

//
// Internal fonctions are used to call other publics.
// They are called by timers. Timers can't call publics
// because these publics are not implements at this time, just defined.
// It is not possible to call them properly without intermediate
// function.
forward Internal_EachOneSecond();
forward Internal_EachFiveMinutes();
forward Internal_EachOneHour();

hook OnGameModeInit()
{
    SetTimer("Internal_EachOneHour", 1000*60*60, true);
    SetTimer("Internal_EachFiveMinutes", 1000*60*5, true);
    SetTimer("Internal_EachOneSecond", 1000, true);
    return Y_HOOKS_CONTINUE_RETURN_1;
}

// [WARNING] 
// DO NOT USE INTERNAL FUNCTIONS
// OUTSIDE OF THIS LIBRARY
public Internal_EachOneSecond()
{
    CallLocalFunction("EachOneSecond", "");
    return 1;
}

public Internal_EachFiveMinutes()
{
    CallLocalFunction("EachFiveMinutes", "");
    return 1;
}

public Internal_EachOneHour()
{
    CallLocalFunction("EachOneHour", "");
    return 1;
}