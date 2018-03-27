#if defined DATE_MANIPULATIONS
	#endinput
#endif

#define DATE_MANIPULATIONS

bool:IsTimeElapsed(time_to_success)
{
	if(gettime() > time_to_success)
		return true;
	return false;
}