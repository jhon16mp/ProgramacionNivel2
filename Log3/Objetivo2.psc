Algoritmo Objetivo_2
	Definir sexo, sexoMostrar, Pension Como Caracter
	Definir edad, cotizacion Como Entero
	//Entradas
	Mostrar " INGRESE SU SEXO (H) HOMBRE; (M) MUJER, (SOLOMANTE INGRESE LA LETRA) "
	Leer sexo
	Mostrar "INGRESE SU EDAD "
	Leer edad
	Mostrar "INGRESE EL NUMERO DE COTIZACIONES QUE HA HECHO "
	Leer cotizacion
	//Proceso
	sexo = Mayusculas(sexo)
	
	
	Si (sexo = "M" Y cotizacion >=750 Y edad >= 55) O (sexo = "H" Y cotizacion >=750 Y edad >= 60) Entonces
		Pension = " PUEDE OPTAR DEL SERVICIO DE PENSIONES DEL IVSS"
	SiNo
		Pension = " NO PUEDE OPTAR EL SERVICIO DE PENSIONES DEL IVSS"
	FinSi
	si sexo="H" entonces
		sexoMostrar = "Hombre"
	SiNo
		si sexo="M" Entonces
			sexoMostrar = "Mujer"
		FinSi
	FinSi
	
	//Salidas 
	Mostrar "El sexo de la persona es " sexoMostrar " y su edad es " edad " años " 
	Mostrar " La persona tiene " cotizacion " cotizaciones emitidas en el IVSS"
	Mostrar  "La persona " Pension
FinAlgoritmo
