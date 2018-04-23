/*
	QG loading Script 
*/

forward OnQgLoad(FactionName[], FactionType, FactionID);

public OnQgLoad(FactionName[], FactionType, FactionID)
{
	if(cache_get_row_count() == 0) return FactionQGData[FactionID][Exist] = false;
	/* code load*/
	return 1;
}
