Algoritmo Banco
definir fechan como Fecha()
definir datosCliente como Cliente()
definir provincial como CuentaBancaria()
definir tarjeta como TarjetaCredito()
definir ingresar como BancoMovil


ingresar = nuevo BancoMovil()//se ejecuta constructor por defecto
ingresar.setUsuario("Juan")
ingresar.setClave("123456POO")
ingresar.entrarBancoMovil()//Llamamos nuestro metodo contraseña para poder ingresar en la aplicacion

//descpues de ingresar se procesan cada dato almacenado por el cliente o su informacion
fechan = nuevo Fecha()//Se ejecuta el constructor por defecto
datosCliente.SetNombre("Nuevo")
datosCliente.SetCedula("Nuevo")
datosCliente.SetEdad("Nuevo")
datosCliente.SetSexo("Nuevo")
datosCliente = nuevo Cliente("Juan","26","hombre","2254674")//Se ejecuta el constructor por parametros
provincial.setSaldo("500")
provincial.setSaldoDeudor("0")
provincial.setNumeroCuenta("010823400000450450")
provincial = nuevo CuentaBancaria()//se ejecuta el constructor por defecto
tarjeta.setMontoCredito("1000")
tarjeta.setDeudaCredito("0")
tarjeta.setNumeroTarjeta("574897067")
tarjeta = nuevo TarjetaCredito("7896574","1000","0")//se ejecuta el constructor por parametros
//se muestra el menu despues de procesar la informacion
ingresar. Menu()


Mostrar "Aqui se muestra el Menu de lo que se tiene en la aplicacion"
mostrar "Nombre :" datosCliente.getUsuario()
mostrar "Saldo de la cuenta :" provincial.getSaldo()
mostrar "Dia :" fechan.getDia()
mostrar "Mes :" fechan.getMes()
mostrar "Año :" fechan.getAño()
mostrar "Numero de la cuenta :"provincial.getNumeroCuenta()
mostrar "Saldo de la tarjeta de credito :"tarjeta.getMontoCredito()

   
fin Algoritmo