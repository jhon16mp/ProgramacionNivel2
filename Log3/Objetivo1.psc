Algoritmo Objetivo_1
	//Declarativos
	Definir sexo, sexoMostrar, Pension Como Caracter
	Definir edad Como Entero
	//Entradas
	Mostrar " INGRESE SU SEXO (H) HOMBRE; (M) MUJER, (SOLOMANTE INGRESE LA LETRA) "
	Leer sexo
	Mostrar "INGRESE SU EDAD "
	Leer edad
	
	//Proceso
	sexo = Mayusculas(sexo)
	
	Si (sexo = "M" Y edad >= 55) O (sexo = "H" Y edad >= 60) Entonces
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
	Mostrar "El sexo de la persona es " sexoMostrar " y su edad es " edad " años y esta persona " Pension
	
FinAlgoritmo
