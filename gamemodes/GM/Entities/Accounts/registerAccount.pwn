/*
  Register Account File 
*/

/**----------------------------------------------------**/

#tryinclude "easyDialog"

#if !defined Dialog_Opened
	#error Please Download the EasyDialog Include | github.com/Awsomedude/easyDialog
#endif

/**----------------------------------------------------**/

Dialog:Register(playerid, response, listitem, inputtext[])
{
  if(!response) return Kick(playerid);

  static
        string[129];
  if(strlen(inputtext) < 5 || strlen(inputtext) > 128)
  {
    return Dialog_Show(playerid, SignUp, DIALOG_STYLE_INPUT, "Registration "," Error: Your password does not meet the following parmeters: Minimum 5 characters, Maximum 128", "Register", "Cancel");
  }
  mysql_format(_Connect, string, sizeof(string), "INSERT INTO `#ACCOUNTS_TAB` (pseudo, password, ip) VALUES ('%s', '%s', '%s')", gAccInfos[playerid][accNickname], inputtext, gAccInfos[playerid][accIp]);
  mysql_tquery(_Connect, string);
  return Dialog_Show(playerid, Login, DIALOG_STYLE_PASSWORD, "Login", "Account SAVE: Please insert your password to login ", "Login", "Cancel");
}



