SubAlgoritmo leer_entradas(Dia Por Referencia, Monto Por Referencia)
	Escribir "BIENVENIDOS A LA COMPAÑIA DE TU_ALQUILER_DE_CARRITOS.COM"
	Escribir "        "
	Escribir "INGRESAR LA CANTIDAD DE DIAS QUE DESEA ALQUILAR" Sin Saltar
	Leer Dia
	Escribir "INGRESAR MONTO PARA EL ALQUILER DEL VEHICULO" Sin Saltar
	Leer Monto
FinSubAlgoritmo

SubAlgoritmo calculo_reserva(Dia,Monto,Pago_Total Por Referencia,Reserva Por Referencia)
	Pago_Total <- Dia*Monto
	
	Reserva <- (Pago_Total)*35/100
	
FinSubAlgoritmo

SubAlgoritmo calculo_diario(Dia,Pago_Total,Reserva,Cuotas Por Referencia)
	Cuotas <- (Pago_Total-Reserva)/Dia
	
FinSubAlgoritmo

SubAlgoritmo mostrar_salidas(Dia,Pago_Total,Reserva,Cuotas)
	Escribir "         "
	Escribir "FACTURA"
	Escribir "         "
	Escribir "ESTE ES EL PAGO TOTAL ",Pago_Total," $ "
	Escribir "ESTE ES SU MONTO A CANCELAR POR EL CONCEPTO DE RESERVA  =  ",Reserva," $ "
	Escribir "EL MONTO DE LA CUOTA DIARIA QUE SE CARGA EN SU TARJETA DE CREDITO ES  =  ",Cuotas," $ "
	Escribir "MUCHAS GRACIAS POR ELEGIR A LA COMPAÑIA TU_ALQUILER_DE_CARRITOS.COM"
	Escribir "NOS VEMOS EN ",Dia," DIAS"
FinSubAlgoritmo

Algoritmo Desafio_1
	Definir Pago_Total Como Real
	Definir Monto Como Real
	Definir Dia Como Entero
	Definir Cuotas Como Real
	Definir Reserva Como Real
	
	leer_entradas(Dia,Monto)
	calculo_reserva(Dia,Monto,Pago_Total,Reserva)
	calculo_diario(Dia,Pago_Total,Reserva,Cuotas)
	mostrar_salidas(Dia,Pago_Total,Reserva,Cuotas)
FinAlgoritmo
