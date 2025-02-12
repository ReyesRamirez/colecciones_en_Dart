void main(){

    print("Reyes Alfonso Ramirez Martinez Mat 22308051281289 gpo 6 J");
    Map<String, dynamic> Clientes = {
        "id_cliente": 12, 
        "nombre": "Reyes Alfonso Ramirez Martinez", 
        "email": "a.22308051281289@cbtis128.edu.mx",
        "telefono": 1234567890,
        "direccion": "Calle 123, Colonia 123, Ciudad 123, Estado 123, Pais 123",
        "activo": true,
        "fecha_nacimiento": DateTime.parse("2007-01-06"),
        };
        Map<String, dynamic> Pedidos = {
        "id_pedido": 1, 
        "fecha_pedido": DateTime.parse("2021-10-06"), 
        "id_cliente": "a.22308051281289@cbtis128.edu.mx",
        "total_pedido": 47839.56,
        "estado": "Enviado",
        "metodo_pago": "Tarjeta",
        "fecha_entrega": DateTime.parse("2021-10-08"),
        };
    print("Mapa de Clientes: ");
    print(Clientes);
    print("iterar un mapa con forEach: ");
    Clientes.forEach((key, value){
        print("$key, $value");
    });
     print("Mapa de Clientes: ");
    print(Clientes);
    for(var key in Clientes.keys){
        print("${Clientes[key]}");
    }
    print("Mapa de Pedidos: ");
    print(Pedidos);
    print("iterar un mapa con forEach: ");
    Pedidos.forEach((key, value){
        print("$key, $value");
    });
    print("Mapa de Pedidos: ");
    print(Pedidos);
    for(var key in Pedidos.keys){
        print("${Pedidos[key]}");
    }
}