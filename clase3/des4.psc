Algoritmo sin_titulo
	//Definiciones
	Dimension nombres[3]
	Dimension notas1[3]
	Dimension notas2[3]
	Dimension notas3[3]
	Dimension notas4[3]
	Dimension notas5[3]
	
	Definir nota1, nota2, nota3, nota4, nota5 Como Entero
	//Entradas y Procesos
	Para i=1 Hasta 3
		Mostrar "Ingrese el nombre del " i "° alumno: " Sin Saltar
		Leer nombres[i]
		//validar que el valor ingresado sea correcto
		Repetir
			Mostrar "Ingrese la nota del Desafio 1 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota1
			Si (nota1 < 0 O nota1 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota1
			FinSi
			
		Hasta Que nota1 >= 0 Y nota1 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas1[i] = nota1
		Repetir
			Mostrar "Ingrese la nota del Desafio 2 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota2
			Si (nota2 < 0 O nota2 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota2
			FinSi
			
		Hasta Que nota2 >= 0 Y nota2 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas2[i] = nota2
		Repetir
			Mostrar "Ingrese la nota del Desafio 3 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota3
			Si (nota3 < 0 O nota3 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota3
			FinSi
			
		Hasta Que nota3 >= 0 Y nota3 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas3[i] = nota3
		Repetir
			Mostrar "Ingrese la nota del Desafio 4 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota4
			Si (nota4 < 0 O nota4 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota4
			FinSi
			
		Hasta Que nota4 >= 0 Y nota4 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas4[i] = nota4
		Repetir
			Mostrar "Ingrese la nota del Desafio 5 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota5
			Si (nota5 < 0 O nota5 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota5
			FinSi
			
		Hasta Que nota5 >= 0 Y nota5 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas5[i] = nota5
		
		Si nota1 >= 80 Entonces
			estatus1 = "APROBADO"
		SiNo
			estatus1 = "REPROBADO"
		FinSi
		Si nota2 >= 80 Entonces
			estatus2 = "APROBADO"
		SiNo
			estatus2 = "REPROBADO"
		FinSi
		Si nota3 >= 80 Entonces
			estatus3 = "APROBADO"
		SiNo
			estatus3 = "REPROBADO"
		FinSi
		Si nota4 >= 80 Entonces
			estatus4 = "APROBADO"
		SiNo
			estatus4 = "REPROBADO"
		FinSi
		Si nota5 >= 80 Entonces
			estatus5 = "APROBADO"
		SiNo
			estatus5 = "REPROBADO"
		FinSi
	FinPara
	//Salidas
	Mostrar "Las notas de los alumnos son: "
	Para i=1 Hasta 3
		
			
			Mostrar "alumno: " nombres[i] " obtuvo una nota en el desafio 1 de: " notas1[i] " puntos " estatus1
			Mostrar "alumno: " nombres[i] " obtuvo una nota en el desafio 2 de:  " notas2[i] " puntos " estatus2
			Mostrar "alumno: " nombres[i] " obtuvo una nota en el desafio 3 de:  " notas3[i] " puntos " estatus3
			Mostrar "alumno: " nombres[i] " obtuvo una nota en el desafio 4 de:  " notas4[i] " puntos " estatus4
			Mostrar "alumno: " nombres[i] " obtuvo una nota en el desafio 5 de:  " notas5[i] " puntos " estatus5
		
			
		
		
	FinPara
FinAlgoritmo
