/*
  Login Account
*/

forward CheckPass(playerid);

/**----------------------------------------------------**/

Dialog:Login(playerid, response, listitem, inputtext[])
{
	if(!response) return Kick(playerid);

	static
      	string[129];
	if(strlen(inputtext) < 5 || strlen(inputtext) > 128)
	{
  	return Dialog_Show(playerid, Login, DIALOG_STYLE_PASSWORD, "Login", "Error: Your password does not respect the following parmeters: Minimum 5 characters, Maximum 128", "Login", "Cancel");
	}

	format(gAccInfos[playerid][accPassword], 129, inputtext);

	mysql_format(_Connect, string, sizeof(string), "SELECT * FROM `#ACCOUNTS_TAB` WHERE `pseudo` = '%s' AND `password`= '%s' ORDER BY id ASC LIMIT 1", gAccInfos[playerid][accNickname], gAccInfos[playerid][accPassword]);
	return mysql_tquery(_Connect, string, "CheckPass", "i", playerid);
}

/**----------------------------------------------------**/

public CheckPass(playerid)
{
	static
				string[129], query[129];
	
	if(!cache_get_row_count()) 
		return Dialog_Show(playerid, Login, DIALOG_STYLE_PASSWORD, "Login", "Error :( Password Incorrect: Please insert your Password to login", "Login", "Cancel");
	else
	{
		//spawn
	}

	return 1;
}
