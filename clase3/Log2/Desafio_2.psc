SubAlgoritmo LeerEntradas(nombre Por Referencia,letra Por Referencia,cantidad Por Referencia)
	Presentacion(nombre);
	Franelas(letra);
	cantidadFranelas(cantidad);
FinSubAlgoritmo

SubAlgoritmo Presentacion(nombre Por Referencia)
	Escribir "Bienvenido a la fabrica de franelas";
	Escribir "Ingrese su nombre";
	Leer nombre;
FinSubAlgoritmo

SubAlgoritmo Franelas(letra Por Referencia)
	Escribir "Actualmente disponemos de 3 tipo de franelas";
	Escribir "Franela tipo (A) con un coste de 25000";
	Escribir "Franela tipo (B) con un coste de 150000";
	Escribir "Franela tipo (C) con un coste de 168900";
	Repetir 
		Escribir "Ingrese la letra de la franela que desea aquirir(A,B,C)";
		Leer letra;
		letra <- Mayusculas(letra);
		Si (letra <> "A") Y (letra <> "B") Y (letra <> "C") entonces
			Escribir  "La letra de la franela debe ser (A) o (B) o (C)";
		FinSi
	Hasta Que letra = "A" O letra = "B" O letra = "C"
FinSubAlgoritmo

SubAlgoritmo cantidadFranelas(cantidad Por Referencia)
	Escribir "Ingrese la cantidad de franelas que desea llevar";
	Leer cantidad;
FinSubAlgoritmo

SubAlgoritmo IniciarFabrica()
	Definir nombre, letra Como Caracter;
	Definir cantidad Como Entero;
	Definir monto, descuento, compra Como Real;
	Definir compradescuento, Totalpagar Como Real;
	
	LeerEntradas(nombre,letra,cantidad);
	ProcesodeFabrica(letra,cantidad,monto,descuento,compra,compradescuento,Totalpagar);
	mostrarSalidas(nombre,letra,cantidad,monto,descuento,compra,compradescuento,Totalpagar);
FinSubAlgoritmo

SubAlgoritmo ProcesodeFabrica(letra,cantidad,monto Por Referencia,descuento Por Referencia,compra Por Referencia,compradescuento Por Referencia,Totalpagar Por Referencia)
	CalcularMontocompra(letra ,cantidad ,monto ,compra );
	CalcularDescuento(cantidad,descuento,compra,compradescuento);
	CalcularTotal(Totalpagar,compra,compradescuento);
FinSubAlgoritmo

SubAlgoritmo CalcularMontocompra(letra,cantidad,monto Por Referencia,compra Por Referencia)
	Si letra = "A" Entonces
		monto <- 25000;
	SiNo
		Si letra = "B" Entonces
			monto <- 150000;
		SiNo
			Si letra = "C" Entonces
				monto <- 168900;
			FinSi
		FinSi
	FinSi
	compra <- monto * cantidad; 
FinSubAlgoritmo

SubAlgoritmo CalcularDescuento(cantidad ,descuento Por Referencia,compra Por Referencia,compradescuento Por Referencia)
	Si cantidad < 6 Entonces
		descuento <- 0;
	SiNo
		Si cantidad >= 6 Y cantidad <= 11 Entonces
		descuento <- 5;
	SiNo
		Si cantidad >11 Y cantidad<24 Entonces
			descuento <- 0;
		SiNo
		   Si cantidad >= 24 Entonces
			   descuento <- 15;
		         FinSi
			FinSi
		FinSi
	FinSi
	compradescuento <- compra * (descuento/100);
FinSubAlgoritmo

SubAlgoritmo CalcularTotal(Totalpagar Por Referencia,compra Por Referencia,compradescuento Por Referencia)
	Totalpagar <- compra - compradescuento;
FinSubAlgoritmo

SubAlgoritmo mostrarSalidas(nombre,letra,cantidad,monto,descuento,compra,compradescuento,Totalpagar)
	Escribir "Factura";
	Escribir "El cliente ",nombre,", compro una franela de tipo (",letra,")";
	Escribir "La cual tiene un costo de ",monto," y lleva una cantidad ",cantidad," franelas";
	Escribir "El monto de la compra es de ",compra;
	Escribir "El cual tiene un descuento del ",descuento,"% el cual es ",compradescuento;
	Escribir "El total a pagar es ",Totalpagar;
FinSubAlgoritmo


Algoritmo Desafio_2
	IniciarFabrica();
FinAlgoritmo
