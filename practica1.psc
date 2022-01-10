SubAlgoritmo leer_datos(nro, nombre Por Referencia,nota Por Referencia)
	escribir "Introduzca el nombre del alumno ",nro,":";
	leer nombre;
	escribir "Introduzca la nota:";
	leer nota;
FinSubAlgoritmo

SubAlgoritmo mostrar_salidas_por_alumno(nota_mayor,nombre_nota_mayor,nota_menor,nombre_nota_menor)
	escribir "La mayor nota hasta el momento es ",nota_mayor;
	escribir "y la tiene ",nombre_nota_mayor;
	escribir "La menor nota hasta el momento es ",nota_menor;
	escribir "y la tiene ",nombre_nota_menor;
FinSubAlgoritmo

SubAlgoritmo determinar_mayor_alumno(nota,nombre,nota_mayor Por Referencia,nombre_nota_mayor Por Referencia)
	si nota > nota_mayor entonces
		nota_mayor <-nota;
		nombre_nota_mayor <- nombre;
	FinSi
FinSubAlgoritmo

SubAlgoritmo determinar_menor_alumno(nota,nombre,nota_menor Por Referencia,nombre_nota_menor Por Referencia)
	si nota < nota_menor entonces
		nota_menor <- nota;
		nombre_nota_menor <- nombre;
	FinSi
FinSubAlgoritmo

SubAlgoritmo inicializar(nota_mayor Por Referencia,nota_menor Por Referencia,cont_aprobados Por Referencia,cont_alumnos Por Referencia,cont_ceros Por Referencia)
	nota_mayor<- -1;
	nota_menor<-101;
	cont_aprobados<-0;
	cont_alumnos<-0;
	cont_ceros<-0;
FinSubAlgoritmo

SubAlgoritmo actualizar_contadores(nota,cont_aprobados Por Referencia,cont_ceros Por Referencia)
	si nota>=80 entonces
		cont_aprobados<-cont_aprobados+1;
	SiNo
		si nota=0 Entonces
			cont_ceros<-cont_ceros+1;
		FinSi
	FinSi
FinSubAlgoritmo

SubAlgoritmo mostrar_resultados_finales(cont_reprobados,cont_aprobados)
	escribir "el numero alumnos reprobados fue:",cont_reprobados;
	escribir "El numero de alumnos aprobados fue:", cont_aprobados;
FinSubAlgoritmo

funcion cont_reprobados = calcular_reprobados(cont_alumnos, cont_aprobados)
	definir cont_reprobados como numero;
	
	cont_reprobados<-cont_alumnos - cont_aprobados;
FinFuncion

funcion opcion=mostrar_menu()
	definir opcion como entero;
	
	Limpiar Pantalla;
	escribir "Menu de opciones:";
	escribir "==================";
	escribir "1: leer datos";
	escribir "2: mostrar resultados";
	escribir "3: salir";
	escribir "Seleccion su opcion:";
	leer opcion;
FinFuncion

Proceso sin_titulo
	definir nombre,nombre_nota_mayor,nombre_nota_menor Como Caracter;
	definir nota,opcion, nota_mayor,nota_menor como entero;
	definir cont_aprobados,cont_alumnos,cont_reprobados,cont_ceros como entero;
	
	inicializar(nota_mayor,nota_menor,cont_aprobados,cont_alumnos,cont_ceros);
	Repetir
		opcion<-mostrar_menu();
		segun opcion hacer
		1: 	cont_alumnos<-cont_alumnos+1;
			leer_datos(cont_alumnos,nombre,nota);
			determinar_menor_alumno(nota,nombre,nota_menor,nombre_nota_menor);
			determinar_mayor_alumno(nota,nombre,nota_mayor,nombre_nota_mayor);
			actualizar_contadores(nota,cont_aprobados,cont_ceros);
		2:	si cont_alumnos = 0 entonces
				escribir "no ha procesado ningun alumno";
			sino
				mostrar_salidas_por_alumno(nota_mayor,nombre_nota_mayor,nota_menor,nombre_nota_menor);
			FinSi
			esperar tecla;
		finsegun;		
		
	Hasta Que opcion = 3;
	
	cont_reprobados <- calcular_reprobados(cont_alumnos, cont_aprobados);
	mostrar_resultados_finales(cont_reprobados,cont_aprobados);
	
FinProceso
