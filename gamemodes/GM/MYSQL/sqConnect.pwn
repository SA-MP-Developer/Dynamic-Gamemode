/*
  Mysql Connect 
  Jaber the fdf 
*/
#tryinclude "YSI\y_hooks"

#if !defined _INC_y_hooks
	#error Veuillez Télécharger La Lib' YSI | https://github.com/Misiur/YSI-Includes
#endif

/*
	SERVER_ENVIRONMENT == 1 // Devloppement
	SERVER_ENVIRONMENT == 2 // Public
	look at CONFIG folder
*/

#if SERVER_ENVIRONMENT == 1
	#define MYSQL_HOST "localhost"
	#define MYSQL_BDD "dev"
	#define MYSQL_USER "root"
	#define MYSQL_PASS ""
#elseif SERVER_ENVIRONMENT == 2
	#define MYSQL_HOST "localhost"
	#define MYSQL_BDD "rp"
	#define MYSQL_USER "root"
	#define MYSQL_PASS ""
#endif


stock
  	MySQL:_Connect;

GameMode::Init()
{
	_Connect = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_BDD);
	if(mysql_errno() != 0)	print("Connection mysql échouer !"), SendRconCommand("exit");
	else print("Connection mysql réussi !");
	MysqlInit();
	mysql_log(ALL);
	return 1;
}
