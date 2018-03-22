/*
      Mysql System With R40 Plugins
      All Credits To Madinator & Team
*/

#tryinclude "a_mysql"

#if !defined mysql_connect_file
	#error Veuillez Télécharger L'include Mysql R40 | github.com/pBlueG/SA-MP-MySQL/releases
#endif


#tryinclude "GM/MYSQL/sqConnect.pwn"

#if !defined _Connect
	#error Impossible de Charger le Fichier Mysql , sqConnect introuvable
#endif

#tryinclude "GM/MYSQL/sqFunction.pwn"

#if !defined MysqlInit
	#error Impossible de Charger le Fichier Mysql , sqFunction introuvable
#endif

#tryinclude "GM/MYSQL/sqConfig.pwn"

#if !defined ACCOUNTS_TAB
	#error Impossible de Charger le Fichier Mysql , sqConfig introuvable
#endif
