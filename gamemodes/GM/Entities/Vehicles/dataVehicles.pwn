#if defined DATA_VEHICLES_INCLUDED
	#endinput
#endif

#define DATA_VEHICLES_INCLUDED

enum v_data_vehicles {
	vIdSQL, //id sql
	vIdIG, //id in-game
	vModelID,
	vOwnerID,
	
	//--position
	Float:vPos[6],
	vInt,
	vVW,
	
	//--slot
	vTrunkSlot,
	
	//--params
	bool:vEngine,
	bool:vDoor[4], //0 = up drivers | 1 = up passeager | 2 = down left passeager | 3 down right passeager
	bool:vWindow[4], //idem vdoor
	bool:vTrunk,
	bool:vHood,
	bool:vAlarm,
	bool:IsAlarm,
	
	//--look
	vColor[2],
	vPlate[50]
}

new
	vAccInfos[MAX_VEHICLES][v_data_vehicles];