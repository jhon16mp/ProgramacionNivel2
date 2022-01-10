//Aqui vamos hacer una clase para los clientes nuevos a registrar
//Aqui esta mi primera clase compuesta
clase Cliente 
      definir nombre como caracter
      definir cedula como caracter
      definir rif como caracter
      definir telefono como caracter
      definir direccion como caracter

      metodo registrar_cliente()
      mostrar "Ingrese el nombre del cliente"
      leer nombre
       mostrar "Ingrese el numero de Rif del cliente"
      leer rif
      mostrar "Ingrese el numero de cedula del cliente"
      leer cedula
      mostrar "Ingrese el numero de telefono del cliente"
      leer telefono
      mostrar "Ingrese la direccion del cliente"
      leer direccion
      
      metodo mostrar_cliente()
      mostrar "el nombre del cliente es" nombre
      mostrar "el numero de Rif del cliente es" rif
      mostrar "el numero de cedula del cliente es" cedula
      mostrar "el numero de telefono del cliente es" telefono
      mostrar "la direccion del cliente es" direccion


fin clase

//Aqui vamos a llamar a mis clases compuestas ya desfinidaas con anterioridad
clase Factura 
     definir num_fac como caracter //Aqui la variable para el numero de la factura
     //Aqui use solamente las variables rif y nombre para el cliente ya registrado
     definir juan como Cliente //nombre del cliente y su rif
     definir producto como caracter//Aqui nos referimos al nombre o nombres de los productos
     definir cantidad como caracter //Aqui van las cantidades del producto a llevar
     definir precio como caracter //Aqui va el precio del producto
     //Aqui declaramos para calcular los montos a pagar
     definir subTotal como real
     definir monto_iva como real
     definir iva como real
     definir total como real

     metodo procesar_factura()

     registrar_factura()
     mostrar_factura()

     fin metodo

     metodo registrar_factura()

     mostrar "Ingrese el numero de la factura"
     leer num_fac
      mostrar "Ingrese el nombre del producto"
     leer producto
      mostrar "Ingrese la cantidad a llevar del producto"
     leer cantidad
      mostrar "Ingrese el precio del producto"
     leer precio

    //Hacemos el calculo para  lo que se va a mostrar en la factura
      subTotal = precio * cantidad
      iva = 0.16
      monto_iva = subTotal * iva
      total = subTotal + monto_iva
      
      metodo mostrar_factura()

      mostrar "el numero de factura es" num_fac
      mostrar "el nombre del cliente es" juan.mostrar_cliente()//Aqui ya estamos llamando mi clase cliente su metodo para mostrar el nombre y el rif como pide el ejercicio
      mostrar "el nombre del producto es" producto
      mostrar "la cantidad a llevar del producto  es" cantidad
      mostrar "el precio del producto es" precio
      mostrar "El monto  sin iva es " subTotal
      mostrar "El monto por iva es " monto_iva
      mostrar "El total a pagar es de " total

      fin metodo

fin clase

