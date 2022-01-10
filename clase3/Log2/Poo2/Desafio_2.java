clase Ciudad()
     definir nombre_ciudad como caracter
     definir precio como real

        metodo registrar_ciudad()
           Mostrar "Ingresar ciudad seleccionar entre: (Caracas, Porlamar,Puerto_Ordaz"
           leer nombre
        fin metodo  

        metodo calculo_ciudad()
           Si nombre = "Caracas" entonces
              precio = 20
           Sino 
           Si nombre = "Porlamar"
              precio = 30
           Sino 
           Si nombre = "Puerto_Ordaz"
              precio = 35
           fin Si

        fin metodo 

        metodo mostra_ciudad()
           Mostrar"El nombre de la ciudad es " nombre "y su precio es de " precio " $ "
        fin metodo
fin clase

clase Piloto()
     definir nombre como caracter
     definir edad como entero 
     definir sexo como caracter

      metodo registrar_Piloto(name,años,sex)
           nombre = name
           edad = años
           sexo = sex
        fin metodo  
      metodo mostrar_Piloto()
           Mostrar"El nombre del Piloto es " nombre
           Mostrar"La edad del Piloto es " edad
           Mostrar"el sexo ddel Piloto es " sexo
      fin metodo
      
fin clase 

clase Avion()
     definir codigo como caracter//Se tiene que recordar que los codigos de los aviones llevan letras y numeros
     definir capacidad_pasajeros como entero
     definir kilometraje como real 
     definir capacidad_combustible como real

        metodo registrar_Avion(asientos)

           capacidad_pasajeros = asientos

           Mostrar "Ingresar el codigo del avion"
           leer codigo
           Mostrar"Ingrese el kilometraje del avion"
           leer kilometraje
           mostrar"Ingrese la capacidad del combustible de la aeronave"
           leer capacidad_combustible
        fin metodo

        metodo mostra_Avion()
           Mostrar"El Codigo del avion es" codigo
           Mostrar"La capacidad de pasajeros que tiene el avion es" capacidad_pasajeros "Personas"
           Mostrar"El kilometraje del avion es" kilometraje "Km"
           Mostrar"La capacidad de combustible del avion es" capacidad_combustible "L"
        fin metodo

fin clase 

clase Vuelos()
     definir capitan como Piloto
     definir horario como caracter //Se dejo como caracter para especificar si sera PM o Am 
     definir ciudad_destino como Ciudad 
     definir numero_pasajeros como entero
     definir boeing_737 como Avion
     definir ingresos como real

        metodo registrar_vuelo()

        boeing_737 .Avion.capacidad_pasajeros//Aqui llamamos la capacidad de pasajeros de mi clase avion

           Mostrar "Ingrese el Horario del vuelo "
           leer horario
           Mostrar"Ingresar el numero pasajeros"
             leer numero_pasajeros
           Si  numero_pasajeros <= boeing_737 entonces
             Mostrar "Asientos disponibles"
           Sino 
             Mostrar"Asientos llenos"
           fin Si          
        fin metodo 

        metodo Clacular_Ingresos_Aerolinea()

        ingresos = numero_pasajeros * ciudad_destino .Ciudad.precio //Aqui llamamos el precio de nuestra clase ciudad
        fin metodo                    

        metodo mostrar_vuelos()
           Mostrar"La informacion del Piloto es"capitan.mostrar_Piloto()
           Mostrar"El horario de salida del avion es "horario
           Mostrar"El destino del vuelo es " ciudad_destino .Ciudad.nombre_ciudad//Llamamos a nuestra clase ciudad para mostrar el nombre
           Mostrar"El cual tiene un precio de " ciudad_destino .Ciudad.precio "$"//Llamamos a nuestra clase ciudad para mostrar el precio
           Mostrar"El numero de pasajeros es de " numero_pasajeros 
           Mostrar"El igreso que tiene la aerolinea es de " ingresos " $"
        fin metodo 

fin clase 
