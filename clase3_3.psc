
subproceso leerDatos(nombre por referencia, nota por referencia)
	escribir "Introduzca el nombre:";
	leer nombre;
	escribir "Introduzca la nota:";
	leer nota;
FinSubProceso

subproceso mostrarSalidas(contCero,contAprobados,notaMenor,alumnoNotaMenor,notaMayor,alumnoNotaMayor)
	escribir contCero , " alumnos obtuvieron 0 pts en su evaluacion";
	escribir "aprobaron ",contAprobados," alumnos";
	escribir "La nota menor por ahora es:",notaMenor," y la tiene ",alumnoNotaMenor;
	escribir "La nota mayor por ahora es:",notaMayor," y la tiene ",alumnoNotaMayor;
	Esperar Tecla;
FinSubProceso

SubProceso determinarMayor(nota,nombre,notaMayor Por Referencia,alumnoNotaMayor Por Referencia)
	si nota > notaMayor entonces
		notaMayor = nota;
		alumnoNotaMayor = nombre;
	FinSi
FinSubProceso

SubProceso determinarMenor(nota,nombre,notaMenor Por Referencia,alumnoNotaMenor Por Referencia)
	si nota < notaMenor entonces
		notaMenor = nota;
		alumnoNotaMenor = nombre;
	FinSi
FinSubProceso

subproceso actualizarContadores(nota,contAlumnos Por Referencia,contCero Por Referencia,contAprobados Por Referencia,contReprobados Por Referencia)
	contAlumnos=contAlumnos+1;
	si nota = 0 entonces
		contCero=contCero+1;
	FinSi
	si nota >=80 entonces
		contAprobados=contAprobados+1;
	FinSi
	contReprobados=contAlumnos-contAprobados;
FinSubProceso

SubAlgoritmo inicializar(notaMenor Por Referencia,notaMayor por referencia,contCero Por Referencia,contAprobados Por Referencia,contAlumnos Por Referencia)
	notaMenor=101;
	notaMayor=-1;
	contCero = 0;
	contAprobados=0;
	contAlumnos=0;
FinSubAlgoritmo

SubAlgoritmo mostrarMenu(opcion Por Referencia)
	Limpiar Pantalla;
	escribir "Opciones del menu";
	escribir "=====================================";
	escribir "1: registrar nota de alumno";
	escribir "2: mostrar resultados";
	escribir "3: salir";
	escribir "******************************";
	escribir "Seleccione una opcion (1..3)";
	leer opcion;
FinSubAlgoritmo

Algoritmo sin_titulo
	definir nombre,alumnoNotaMayor,alumnoNotaMenor Como Caracter;
	definir nota,notaMenor,notaMayor como entero;
	definir opcion como entero;
	definir contCero,contAprobados,contAlumnos,contReprobados como entero;
	
	inicializar(notaMenor,notaMayor,contCero,contAprobados,contAlumnos);	
	repetir 
		mostrarMenu(opcion);
		segun opcion hacer
		1:	leerDatos(nombre, nota);
			determinarMayor(nota,nombre,notaMayor,alumnoNotaMayor);
			determinarMenor(nota,nombre,notaMenor,alumnoNotaMenor);
			actualizarContadores(nota,contAlumnos,contCero,contAprobados,contReprobados);
		2:	si contAlumnos=0 entonces
				escribir "no has procesado ningun alumno";
				Esperar Tecla;
			SiNo
				mostrarSalidas(contCero,contAprobados,notaMenor,alumnoNotaMenor,notaMayor,alumnoNotaMayor);
			FinSi
		FinSegun

	Hasta Que opcion=3;
	
FinAlgoritmo
