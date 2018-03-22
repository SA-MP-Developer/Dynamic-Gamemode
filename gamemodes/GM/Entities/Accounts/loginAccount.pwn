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

	mysql_format(_Connect, string, sizeof(string), "SELECT * FROM `#ACCOUNTS_TAB` WHERE `pseudo` = '%s'", gAccInfos[playerid][accNickname]);
	return mysql_tquery(_Connect, string, "CheckPass", "i", playerid);
}

/**----------------------------------------------------**/

public CheckPass(playerid)
{
	static
				string[129], query[129], pass[129];
	cache_get_value_name(0, "password", pass);

	if(strcmp(pass, gAccInfos[playerid][accPassword], true) == 0)
	{
    //Spawn
	}
	else return Dialog_Show(playerid, Login, DIALOG_STYLE_PASSWORD, "Login", "Error :( Password Incorrect: Please insert your Password to login", "Login", "Cancel");

	return 1;
}
