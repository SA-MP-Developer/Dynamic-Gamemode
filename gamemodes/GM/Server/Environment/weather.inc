#if defined SERVER_ENVIRONMENT_WEATHER
	#endinput
#endif
#define SERVER_ENVIRONMENT_WEATHER

#include "GM/Utils/date_manipulations"
#include "GM/Server/Common/generic_timers"
#include "GM/Server/Environment/weather_type"

#include <YSI\y_hooks>
#define DEF_WEATHER SUNNY_LA

// default weather update time in hours
// between each weather cycle
//
#define DEF_WEATHER_TIME (6)

// next time to update weather (timestamp)
//
static _next_wtime;

// time cycle in hours
//
static _wtime_cyc = DEF_WEATHER_TIME;

static _cur_weather = DEF_WEATHER;
static _next_weather = DEF_WEATHER;

// set a new weather.
// reset the weather time cycle
// and raise OnWeatherChange event.
//
AC_SetWeather(weatherid)
{
	new old_weather = _cur_weather;
	_cur_weather = weatherid;
	_next_wtime = gettime() + _wtime_cyc * 3600;
	SetWeather(_cur_weather);
	CallLocalFunction("OnWeatherChange", "dd", old_weather, _cur_weather);
}

//
// PUBLIC FUNCTIONS
//

/**
	<summary>OnWeatherChange event</summary>
	<param name="old_weather"></param>
	<param name="new_weather"></param>	
*/
forward OnWeatherChange(old_weather, new_weather);

// Hook setweather native.
//
#if defined _ALS_SetWeather
    #undef SetWeather
#else
    #define _ALS_SetWeather
#endif
#define SetWeather AC_SetWeather

// GetWeather doesn't exists by default,
// but it should exists if gamemode
// uses samp-fixes.
#if !defined GetWeather

/**
	<summary>Get the current weatherid</summary>
	<returns>No return</returns>	
*/
GetWeather()
{
	return _cur_weather;
}
#endif

/**
	<summary>Get weather info</summary>
	<param name="cur_weather">The current weather</param>
	<param name="next_weather">The next weather</param>
	<param name="time_cycle">The time cycle between each weather update</param>
	<returns>No return</returns>
	<remarks>you can pick one param or more</remarks>	
*/
GetWeatherInfo(&cur_weather=0, &next_weather=0, &time_cycle=0)
{
	cur_weather = _cur_weather;
	next_weather = _next_weather;
	time_cycle = _wtime_cyc;
}

/**
	<summary>Set the next weather</summary>
	<param name="weatherid"></param>
	<returns>No return</returns>
*/
SetNextWeather(weatherid)
{
	_next_weather = weatherid;
}

// set the time before a new
// weather cycle. 

/**
	<summary>Set time before the next weather update</summary>
	<param name="hours">time in hours</param>
	<returns>No return</returns>
*/
SetTimeBeforeUpdateWeather(hours)
{
	if(hours < 1)
	{
		// TODO: add logger trace
		SendRconCommand("exit");
	}

	_wtime_cyc = hours;
	_next_wtime = gettime() + hours * 3600;
}

// checks if a new weather
// cycle is required and 
// applies new weather if necessary.
hook EachFiveMinutes()
{
	if(IsTimeElapsed(_next_wtime))
	{
		AC_SetWeather(_next_weather);
	}
	return Y_HOOKS_CONTINUE_RETURN_1;
}

// applies default weather on init.
hook OnGameModeInit()
{
	SetWeather(_cur_weather);
	return Y_HOOKS_CONTINUE_RETURN_1;
}