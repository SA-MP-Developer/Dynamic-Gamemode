/*
	Client Side Anti Cheat Function
*/

#if defined CLIENT_AC
	#endinput
#endif 
#define CLIENT_AC

public OnIncomingRPC(playerid, rpcid, BitStream:bs)
{
	switch(rpcid)
	{
		case RPC_ClientJoin: 
		{
			new iVersion,
				byteMod,
				byteNameLen,
				NickName[24],
				uiClientChallengeResponse,
				byteAuthBSLen,
				auth_bs[4*16],
				iClientVerLen,
				ClientVersion[30];

			BS_ReadValue(
				bs,
				PR_INT32, iVersion,
				PR_UINT8, byteMod,
				PR_UINT8, byteNameLen,
				PR_STRING, NickName, byteNameLen,
				PR_UINT32, uiClientChallengeResponse,
				PR_UINT8, byteAuthBSLen,
				PR_STRING, auth_bs, byteAuthBSLen,
				PR_UINT8, iClientVerLen,
				PR_STRING, ClientVersion, iClientVerLen
			);			

		}
	}	
	return 1;
}	
