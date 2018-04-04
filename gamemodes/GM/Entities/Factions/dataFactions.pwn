
enum _FactionData
{
	sqlID,
	Name[LONG_STR],
	Owner[LONG_STR],
	Type
	/*
		Type :

		1 - LAW 
		2 - MEDICAL
		3 - ILLEGAL

	*/
};
new FactionsDataInfo[MAX_FACTIONS][_FactionData];


