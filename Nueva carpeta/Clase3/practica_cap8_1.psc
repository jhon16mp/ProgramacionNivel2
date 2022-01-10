Algoritmo practica8_1_Lop_2
	//Definiciones
	Definir sueldoTotal, sueldoBase, montoVentas, bono, porcentaje, bonoVejez Como Real
	Definir edad como Entero
	Definir sexo, sexoMostrar Como Caracter
	
	sueldoBase= 1000000
	
	//Entradas
	Mostrar "Ingrese el monto de las ventas en el mes: "
	Leer montoVentas
	Mostrar "Ingrese el sexo [H]:Hombre O  [M]:Mujer= "
	Leer sexo
	Mostrar "Ingrese la edad del vendedor: "
	Leer edad
	
	//Proceso
	Si montoVentas>0 Y montoVentas<75000 entonces
		porcentaje = 5
	sino
		si montoVentas>=90000 Y montoVentas<200000 Entonces
			porcentaje = 7
		SiNo
			si montoVentas>300000 Y montoVentas<1000000 Entonces
				porcentaje = 8
			SiNo
				Si montoVentas>1500000 Entonces
					porcentaje = 10
				SiNo
					porcentaje = 6
				FinSi
			FinSi
		FinSi
	FinSi
	
	sexo = Mayusculas(sexo)
	si sexo="H" entonces
		sexoMostrar = "Hombre"
	SiNo
		si sexo="M" Entonces
			sexoMostrar = "Mujer"
		FinSi
	FinSi
	
	Si (sexo="H" Y edad>59) O (sexo="M" Y edad>54) Entonces
		bonoVejez=40000
	SiNo
		bonoVejez = 0
	FinSi
//	Si sexo="H" Y edad>59 Entonces
//		bonoVejez=40000
//	SiNo
//		si sexo="M" Y edad>54 Entonces
//			bonoVejez=40000
//		FinSi
//	FinSi
	
	bono = montoVentas*porcentaje/100
	
	sueldoTotal = sueldoBase + bono + bonoVejez
	
	//Salidas
	Mostrar "El sueldo base es: " sueldoBase
	Mostrar "El monto de ventas del mes es: " montoVentas
	Mostrar "El porcentaje de comision a las ventas es: " porcentaje
	Mostrar "La comision a ganar es: " bono
	Mostrar "La edad del vendedor es: " edad
	Mostrar "El sexo del vendedor es: " sexoMostrar
	Mostrar "El bono por edad y sexo es de: " bonoVejez " Bs"
	Mostrar ""
	Mostrar "El sueldo total a cobrar es: " sueldoTotal
FinAlgoritmo
