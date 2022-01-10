Algoritmo Objetivo_3
	//Declarativos
	Definir a, b Como Entero
	Definir resultado1, resultado2 Como Logico
	//Entrada
	a= Aleatorio(0,20)
	b= Aleatorio(0,20)
	//Proceso 
	
	Si a != b Entonces
		resultado1 = Verdadero
		resultado3 = " Ambos son distintos "
	SiNo
		resultado1 = Falso
		resultado3 = " Ambos son Iguales "
	FinSi
	Si a > b Entonces
		resultado2 = Verdadero
		resultado = " A es mayor que B "
	SiNo
		SI a = b Entonces
			resultado3 = resultado3
		SiNo
			
		resultado2 = Falso
		resultado = " A es menor que B"
	     FinSi
	FinSi
	//salidas
	Mostrar "Valor de A = " a
	Mostrar "Valor de B = " b
	Mostrar resultado3
	Mostrar resultado
FinAlgoritmo
