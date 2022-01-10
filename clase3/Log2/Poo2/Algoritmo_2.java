Algoritmo Poo2
    definir Prado como Piloto
    definir barquisimeto como Ciudad
    definir aeronave como Avion
    definir planDEvuelo como Vuelo
    definir name como caracter 
    definir años como entero
    definir sex como caracter
    definir asientos como entero 

    Prado = nuevo Piloto()
    barquisimeto = nuevo Ciudad()
    aeronave = nuevo Avion()
    planDEvuelo = nuevo Vuelo()

    barquisimeto.registrar_ciudad()
    barquisimeto.calculo_ciudad()
    barquisimeto.mostrar_ciudad()

    mostrar "A continuacion se registraran los datos del Piloto"
    name= "Jenny"
    años= "28"
    sex = "Mujer"
    Prado.registrar_Piloto(name,años,sex)
    Prado.mostrar_Piloto()

    mostrar "A continuacion se registraran el numero de asientos"
    asientos = "174"
    aeronave.registrar_Avion(asientos)
    aeronave.mostrar_Avion()
    
    planDEvuelo.registrar_vuelo()
    planDEvuelo.Clacular_Ingresos_Aerolinea()
    planDEvuelo.mostrar_vuelos()
    
fin Algoritmo