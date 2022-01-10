SubAlgoritmo Leer_Entradas(cliente Por Referencia)
	Limpiar Pantalla;
	Escribir "Ingrese el nombre del cliente";
	Leer cliente;
FinSubAlgoritmo

funcion opcion=mostrar_menu()
	Definir opcion como entero;
	Repetir
		Limpiar Pantalla;
		Escribir "Menu de opciones de mermelada:";
		Escribir "==================";
		Escribir "1: Mermelada de fresa";
		Escribir "2: Mermelada de melocoton";
		Escribir "3: Mermelada de guayaba";
		Escribir "4: Mermelada de piña";
		Escribir "5: Salir";
		Leer opcion;
	Hasta Que opcion <= 5
	
	
	
FinFuncion

SubAlgoritmo RecargoFresa(recargo Por Referencia,costo,totalRecargo Por Referencia)
	recargo <- costo * (40/100);
	totalRecargo <- costo + recargo;
	
	
FinSubAlgoritmo
SubAlgoritmo RecargoMelocoton(recargo Por Referencia,costo,totalRecargo Por Referencia)
	recargo <- costo * (40/100);
	totalRecargo <- costo + recargo;
	
	
FinSubAlgoritmo
SubAlgoritmo RecargoGuayaba(recargo Por Referencia,costo,totalRecargo Por Referencia)
	recargo <- costo * (25/100);
	totalRecargo <- costo + recargo;
	
	
FinSubAlgoritmo
SubAlgoritmo RecargoPina(recargo Por Referencia,costo,totalRecargo Por Referencia)
	recargo <- costo * (25/100);
	totalRecargo <- costo + recargo;
	
	
FinSubAlgoritmo

SubAlgoritmo Leer_cantidad(cantidad Por Referencia)
	Escribir "Ingrese la cantidad de mermeladas que desea llevar";
	Leer cantidad;
	
FinSubAlgoritmo

SubAlgoritmo CalculoDescuento(cantidad,descuento Por Referencia,totalDescuento Por Referencia,totalRecargo,Predescuento Por Referencia,contadorDescuento Por Referencia)
	Si cantidad > 6 Entonces
		descuento <- 10;
		contadorDescuento <- contadorDescuento + 1;
	SiNo
		descuento <- 0;
	FinSi
	Predescuento <- totalRecargo*cantidad*(descuento/100);
	totalDescuento <- totalRecargo*cantidad - Predescuento;
	
FinSubAlgoritmo

SubAlgoritmo calculoIva(totalDescuento,iva,PreIva Por Referencia, TotalPagar Por Referencia)
	PreIva <- totalDescuento * (iva/100);
	TotalPagar <- totalDescuento + PreIva;
	
FinSubAlgoritmo
SubAlgoritmo IniciarContadores(contadorFresa Por Referencia,contadorDescuento Por Referencia,PagoMayor Por Referencia,PagoMenor Por Referencia)
	contadorFresa<-0;
	contadorDescuento<-0;
	PagoMayor<--1;
	PagoMenor<-10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
FinSubAlgoritmo
SubProceso determinarMayor(cliente,ClienteMayor Por Referencia,TotalPagar,PagoMayor Por Referencia)
	si TotalPagar > PagoMayor entonces
		PagoMayor <- TotalPagar;
		ClienteMayor <- cliente;
	FinSi
FinSubProceso

SubProceso determinarMenor(cliente,ClienteMenor Por Referencia,cantidad ,PagoMenor Por Referencia)
	si cantidad < PagoMenor entonces
		PagoMenor <- cantidad;
		ClienteMenor <- cliente;
	FinSi
FinSubProceso

SubAlgoritmo MostrarSalidas(cantidad,totalDescuento,totalRecargo,Predescuento,PreIva,TotalPagar,contadorFresa,contadorDescuento,ClienteMayor,ClienteMenor )
	Limpiar Pantalla;
	Escribir "El monto  a pagar por el cliente sin el descuento es:",totalRecargo*cantidad," $";
	Escribir "El monto del Descuento es: ",Predescuento, " $";
	Escribir "Cantidad a pagar por el cliente una vez hecho el descuento es de: ",totalDescuento," $";
	Escribir "El monto del IVA considerando un 15 % es: ",PreIva," $";
	Escribir "El monto total de la factura incluyendo el IVA es de: ",TotalPagar," $";
	Escribir "La cantidad de clientes que compranron la mermelada de fresa es de: ",contadorFresa;
	Escribir "La cantidad de clientes que recibieron descuentos fue de: ",contadorDescuento;
	Escribir "Nombre del cliente que pago el monto mas alto de la factura es: ", ClienteMayor;
	Escribir "Nombre del cliente que compro la menor cantidad de unidades de mermelada es: ",ClienteMenor;
	Esperar Tecla;
FinSubAlgoritmo


SubAlgoritmo Finalizar()
	Escribir "Hasta pronto";
	Esperar Tecla;
FinSubAlgoritmo

Proceso Desafio_3
	Definir opcion como entero;
	Definir costo Como Entero;
	Definir recargo, totalRecargo Como Real;
	Definir cliente,ClienteMayor,ClienteMenor Como Caracter;
	Definir cantidad Como Entero;
	Definir iva Como Entero;
	Definir descuento,totalDescuento,Predescuento, PreIva,TotalPagar,PagoMayor,PagoMenor  Como Real;
	Definir contadorFresa,contadorDescuento Como Entero;
	costo <- 5;
	iva <- 15;
	IniciarContadores(contadorFresa,contadorDescuento,PagoMayor,PagoMenor);
	Escribir "Bienvenido a la fabrica de mermeladas";
	Escribir "  ";
	Esperar 2 Segundos;
	repetir 
		Leer_Entradas(cliente);
		opcion <- mostrar_menu();
		segun opcion hacer
			1:	contadorFresa <- contadorFresa +1;
				RecargoFresa(recargo,costo,totalRecargo);
				Leer_cantidad(cantidad);
				CalculoDescuento(cantidad,descuento,totalDescuento,totalRecargo,Predescuento,contadorDescuento);
				calculoIva(totalDescuento,iva,PreIva,TotalPagar);
				determinarMayor(cliente,ClienteMayor,TotalPagar,PagoMayor);
				determinarMenor(cliente,ClienteMenor,cantidad,PagoMenor);
			2:	RecargoMelocoton(recargo,costo,totalRecargo);
				Leer_cantidad(cantidad);
				CalculoDescuento(cantidad,descuento,totalDescuento,totalRecargo,Predescuento,contadorDescuento);
				calculoIva(totalDescuento,iva,PreIva,TotalPagar);
				determinarMayor(cliente,ClienteMayor,TotalPagar,PagoMayor);
				determinarMenor(cliente,ClienteMenor,cantidad,PagoMenor);
			3: RecargoGuayaba(recargo,costo,totalRecargo);	
				Leer_cantidad(cantidad);
				CalculoDescuento(cantidad,descuento,totalDescuento,totalRecargo,Predescuento,contadorDescuento);
				calculoIva(totalDescuento,iva,PreIva,TotalPagar);
				determinarMayor(cliente,ClienteMayor,TotalPagar,PagoMayor);
				determinarMenor(cliente,ClienteMenor,cantidad,PagoMenor);
			4: RecargoPina(recargo,costo,totalRecargo);
				Leer_cantidad(cantidad);
				CalculoDescuento(cantidad,descuento,totalDescuento,totalRecargo,Predescuento,contadorDescuento);
				calculoIva(totalDescuento,iva,PreIva,TotalPagar);
				determinarMayor(cliente,ClienteMayor,TotalPagar,PagoMayor);
				determinarMenor(cliente,ClienteMenor,cantidad,PagoMenor);
			5: Finalizar();
				
		FinSegun
		MostrarSalidas(cantidad,totalDescuento,totalRecargo,Predescuento,PreIva,TotalPagar,contadorFresa,contadorDescuento,ClienteMayor,ClienteMenor);
	Hasta Que opcion = 5;
	
FinProceso
