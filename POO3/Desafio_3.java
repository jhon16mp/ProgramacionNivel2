
clase Fecha
    privado definir dia, mes, año como entero
     //getters
    publico metodo getDia() como entero
         retornar dia
    fin metodo 
    publico metodo getMes() como entero
         retornar mes
    fin metodo 
    publico metodo getAño() como entero
         retornar mes
    fin metodo 
//constructor sin parametros
      publico metodo Fecha()
         dia = 16
         mes = 9
         año = 1994
      fin metodo
fin clase 

clase Cliente
privado definir nombre como caracter 
privado definir cedula como entero
privado definir edad como entero
privado definir fechaNacimiento como Fecha
privado definir sexo como caracter
//getters
       publico metodo getNombre() como entero
            retornar cedula
       fin metodo 
       publico metodo getcedula() como entero
            retornar cedula
       fin metodo 
       publico metodo getEdad() como entero
            retornar cedula
       fin metodo 
       publico metodo getSexo() como entero
            retornar cedula
       fin metodo 
//setters
       publico metodo SetNombre(nuevo_nombre) 
           nombre = nuevo_nombre
       fin metodo 
       publico metodo SetCedula(nueva_cedula) 
           cedula = nueva_cedula
       fin metodo 
       publico metodo SetSexo(nuevo_sexo) 
          sexo = nuevo_sexo
       fin metodo
       publico metodo SetEdad(nueva_edad) 
       edad = nueva_edad
       fin metodo
       //constructor con parametros
           publico metodo Cliente(name,años,sex,ced)
                 nombre = name
                 edad = años
                 sexo = sex
                 cedula = ced
                 fechaNacimiento = nuevo Fecha(16,9,1994)
            fin metodo  
          
           
fin clase

clase CuentaBancaria
 privado definir numeroCuenta como entero
 privado definir saldo como real 
 privado definir saldoDeudor como real
         definir dueñoCuenta como Cliente
            
//getters
    publico metodo getSaldo() como real
         retornar saldo
    fin metodo 
    publico metodo getSaldoDeudor() como real
         retornar saldoDeudor
    fin metodo 
    publico metodo getNumeroCuenta() como entero
         retornar numeroCuenta
    fin metodo 
//setters
    publico metodo SetSaldo(nuevo_saldo) 
          saldo = nuevo_saldo
    fin metodo 
    publico metodo SetSaldoDeudor(nuevo_saldoDeudor) 
         saldoDeudor = nuevo_saldoDeudor
    fin metodo 
    publico metodo getNumeroCuenta(nuevo_numeroCuenta) 
         numeroCuenta = nuevo_numeroCuenta
    fin metodo

//constructor sin parametros
         publico metodo CuentaBancaria()
              dueñoCuenta = nuevo Cliente(nombre)
              numeroCuenta = "0108-00000001234"
              saldo = "100"
              saldoDeudor = "0"
          fin metodo
   

fin clase

clase TarjetaCredito
 privado definir montoCredito como real 
 privado definir deudaCredito como real
 privado definir numeroTarjeta como entero
//getters
    publico metodo getMontoCredito() como real
         retornar montoCredito
    fin metodo 
    publico metodo getDeudaCredito() como real
         retornar deudaCredito
    fin metodo 
    publico metodo getNumeroTarjeta() como entero
         retornar numeroTarjeta
    fin metodo 
//setters
     publico metodo SetMontoCredito(nuevo_MontoCredito) 
        montoCredito = nuevo_MontoCredito
    fin metodo 
    publico metodo SetDeudaCredito(nuevo_DeudaCredito) 
       deudaCredito = nuevo_DeudaCredito
    fin metodo 
    publico metodo SetNumeroTarjeta(nuevo_NumeroTarjeta) 
       numeroTarjeta = nuevo_NumeroTarjeta
    fin metodo   
//constructor con parametros
     publico metodo TarjetaCredito(numero,monto,deuda)
        montoCredito = monto 
        deudaCredito = deuda
        numeroTarjeta = numero
    fin metodo
    
fin clase

clase BancoMovil
 privado definir usuario como caracter
 privado definir clave como caracter 
 definir personaNatural como Cliente //Aqui se coloco personaNatural es porque eso es lo que te preguntan cuando entras como cliente 
 definir cuenta como CuentaBancaria
 definir tarjeta como TarjetaCredito
//getters
     publico metodo getClave() como caracter
         retornar clave
     fin metodo 
     publico metodo getUsuario() como caracter
         retornar usuario
     fin metodo 
//setters
     publico metodo SetClave(nueva_clave) 
        clave = nueva_clave
     fin metodo 
     publico metodo Setusuario(nuevo_usuario) 
        usuario = nuevo_usuario
     fin metodo 
     
     metodo entrarBancoMovil()
     Mostrar "Ingrese el nombre de usuario"
     leer usuario
     Mostrar "Ingrese la clave"
     leer clave
     Si usuario = "Juan" Y clave ="123456POO" Entonces
        mostrar "Usted ingreso con exito"
     Sino 
        mostrar "usuario y clave incorrecta"
      fin Si

     fin metodo
 //constructor sin parametros
      publico metodo BancoMovil()
             usuario = " "
             clave = " "
      fin metodo
      publico metodo Menu()
             personaNatural = nuevo Cliente(nombre)
             cuenta = nuevo CuentaBancaria(saldo)
             tarjeta = nuevo TarjetaCredito(numeroTarjeta)
      fin metodo

fin clase 