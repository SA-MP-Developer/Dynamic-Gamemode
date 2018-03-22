/*
  Main Account File 
*/

/**----------------------------------------------------**/

#tryinclude "easyDialog"

#if !defined Dialog_Opened
	#error Please Download the EasyDialog Include | github.com/Awsomedude/easyDialog
#endif

/**----------------------------------------------------**/

#tryinclude "RP\PLAYER\ACCOUNT\accountLogin.pwn"

#if !defined _login_
  #error Unable to load the Login file , Not Found 
#endif

/**----------------------------------------------------**/

#tryinclude "RP\PLAYER\ACCOUNT\accountRegister.pwn"

#if !defined _register_
  #error Unable to load the Register File , Not Found
#endif

/**----------------------------------------------------**/

#tryinclude "RP\PLAYER\ACCOUNT\accountFunc.pwn"

#if !defined IsPlayerLoged
  #error Unable to load the Account function file , Not Found
#endif
