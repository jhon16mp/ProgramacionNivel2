Algoritmo Objetivo_4
	//Declarativos
	Definir monto, iva, descuento, descuento1,  total, ventas, totalventas, precio Como Real
	Definir cantidad Como Entero
	Definir pagos, catnegada, montonegado Como Logico
	//Entradas
	Mostrar " INGRESE EL PRECIO DEL PRODUCTO"
	Leer  monto
	Mostrar " INGRESE LA CANTIDAD QUE DESEA LLEVAR"
	Leer  cantidad
	
	
	//Proceso 
	ventas = monto * cantidad
	iva = 16/100
	totalventas = ventas * iva
	precio = ventas + totalventas
	SI monto > 0 Entonces
		montonegado = Verdadero
	FinSi
	
	Si cantidad > 0 Entonces
		catnegada = Verdadero
	FinSi
	
	Si precio > 500000 Entonces
		pagos = Verdadero
		descuento1 = 5
		descuento = precio * (descuento1/100) 
		total = precio - descuento
	FinSi
	
	//salidas
	Si ~montonegado Entonces
		Mostrar  " Por favor Ingrese el monto del producto"
		Mostrar "  "
	FinSi
	
	Si ~catnegada Entonces
		Mostrar "Por favor ingrese una cantidad "
		Mostrar "  "
	FinSi
	
	SI ~pagos Entonces
		descuento1 = 2
		descuento = precio * (descuento1/100)
		total = precio - descuento 
		Mostrar " EL monto sin IVA es de " ventas " Bs"
		Mostrar " El IVA es de " totalventas " Bs"
		Mostrar " El monto neto es de " precio " Bs"
		Mostrar " Tiene Un descuento del " descuento1 " % el cual es " descuento
		Mostrar " Su total a pagar es de " total " Bs"
	SiNo
		Mostrar " EL monto sin IVA es de " ventas " Bs"
		Mostrar " El IVA es de " totalventas " Bs"
		Mostrar " El monto neto es de " precio " Bs"
		Mostrar " Tiene Un descuento del " descuento1 " % el cual es " descuento
		Mostrar " Su total a pagar es de " total " Bs"
	FinSi
	
FinAlgoritmo
