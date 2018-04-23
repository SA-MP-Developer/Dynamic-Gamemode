enum _FactionType {
	FACTION_TYPE_LAW = 1,
	FACTION_TYPE_MEDICAL,
	FACTION_TYPE_ILLEGAL
}
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


