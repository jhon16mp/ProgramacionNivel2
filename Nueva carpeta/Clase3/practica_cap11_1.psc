Algoritmo practica_cap11_1
	//Definiciones
	Definir nombre, talla Como Caracter
	Definir unidades Como Entero
	Definir precioUnitario, porcentaje, subTotal, descuento, total Como Real
	//Entradas
	Mostrar "Ingrese su nombre: "
	Leer nombre
	Mostrar "Ingrese la talla que llevara [S], [M], [L],[XL]: "
	Leer talla
	Mostrar "Ingrese las unidades que llevara: "
	Leer unidades
	
	//Procesos
	talla =  Mayusculas(talla)
	Segun talla
		"S": precioUnitario=50000
		"M": precioUnitario=55000
		"L": precioUnitario=60000
		"XL": precioUnitario=65000
		De Otro Modo:
			Mostrar "La talla ingresada no es Validad"
	FinSegun
	
	Si unidades <6 entonces
		porcentaje=0
	SiNo
		Si unidades >=6 Y unidades<12 Entonces
			porcentaje=5
		SiNo
			Si unidades >=12 Y unidades<24 Entonces
				porcentaje=10
			SiNo
				Si unidades>=24 entonces
					porcentaje=15
				FinSi
			FinSi
		FinSi
	FinSi
	
	subTotal = precioUnitario * unidades
	descuento = subTotal * porcentaje / 100
	total = subTotal - descuento
	
	//Salidas
	Mostrar "Apreciado cliente: " nombre
	Mostrar "Usted esta comprando articulos de la talla: " talla
	Mostrar "Cuyo precio unitario es de: " precioUnitario
	Mostrar "Llevando una cantidad de: " unidades " articulos"
	Mostrar ""
	Mostrar "El subtotal a pagar es de: " subTotal " Bs"
	Mostrar "El descuento aplicado segun el numero de articulos que esta llevando es de: " porcentaje "%"
	Mostrar "Que es un monto de: " descuento " Bs"
	Mostrar ""
	Mostrar "El total a pagar es: " total " Bs"
	Mostrar ""
	Mostrar "Gracias por su compra!!!"
	
	
FinAlgoritmo
