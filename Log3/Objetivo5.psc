Algoritmo Objetivo_5
	//Declarativo
	Definir dato Como Entero
	Definir mensaje Como Caracter
	//Entrada
	Mostrar "MENU"
	Mostrar "SELECCIONE UNA DE LAS SIGUIENTES OPCIONES"
	Mostrar "INGRESE (1) PARA CONOCER SU SALDO"
	Mostrar "INGRESE (2) PARA CONOCER SU PLAN DE SERVICIO"
	Mostrar "INGRESE (3) PARA ACTIVACION DE PLANES"
	Mostrar "INGRESE (4) PARA RECLAMOS Y ATENCION DEL USUARIO"
	Mostrar "INGRESE (5) PARA SALIR"
	Leer dato
	
	dat = ConvertirATexto(dato)
	
	//Proceso 
	Segun dat
		"1": mensaje = " Conocer su saldo"
		"2": mensaje = " Conocer su plan de servicio"
		"3": mensaje = " Activacion de planes"
		"4": mensaje = " Reclamos y atencion del usuario"
		"5": mensaje = " Salir"
		De Otro Modo:
			Mostrar "La  opcion seleccionada no es correcta"
	FinSegun
	
	// Salida
	Mostrar " El cliente selecciono la opcion :" dato " la cual es : " mensaje
FinAlgoritmo
