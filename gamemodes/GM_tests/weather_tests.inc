#include "GM/Server/Environment/weather"

// getweatherinfo_whenget_return_correct_data
// must get : cur_weather 5, next 10, time 20
Test:GetWeatherInfo_data()
{
    SetWeather(5);
    SetNextWeather(10);
    SetTimeBeforeUpdateWeather(20);

    new curw, nextw, time;
    GetWeatherInfo(curw, nextw, time);
    ASSERT(curw == 5);
    ASSERT(nextw == 10);
    ASSERT(time == 20);    
}