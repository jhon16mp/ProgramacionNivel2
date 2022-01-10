Algoritmo practica_cap10_1
	//Definiciones
	Definir edad como entero
	Definir estado como caracter
	Definir mayorEdad, solteron Como Logico
	
	//Entradas
	Mostrar "Ingrese la edad: "
	Leer edad
	Mostrar "Ingrese su estado civil, [S]:Soltero; [P]:Pareja = "
	Leer estado
	
	//Proceso
	estado = Mayusculas(estado)
	
	Si edad>=18 entonces
		mayorEdad = verdadero
	FinSi
	Si estado="S" entonces
		solteron = verdadero
	FinSi
	
	//Salidas
	Si ~mayorEdad entonces
		Mostrar "La persona es menor de edad!"
		Mostrar "Su edad es: " edad
	SiNo
		Mostrar "La persona es mayor de edad!"
		Mostrar "Su edad es: " edad
	FinSi
	Si ~solteron Entonces
		Mostrar "La persona tiene pareja!"
	SiNo
		Mostrar "La persona es soltera!"
	FinSi
	
	
FinAlgoritmo
