import 'dart:io';

class Producto {
  int idProducto;
  String nombre;
  double precio;
  String descripcion;
  String tipoSushi;
  int cantidadDisponible;
  bool activo;

  Producto({
    required this.idProducto,
    required this.nombre,
    required this.precio,
    required this.descripcion,
    required this.tipoSushi,
    required this.cantidadDisponible,
    required this.activo,
  });

  void capturarDatos() {
    print("Ingrese el ID del producto:");
    idProducto = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del producto:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el precio del producto:");
    precio = double.parse(stdin.readLineSync()!);

    print("Ingrese la descripción del producto:");
    descripcion = stdin.readLineSync()!;

    print("Ingrese el tipo de sushi:");
    tipoSushi = stdin.readLineSync()!;

    print("Ingrese la cantidad disponible:");
    cantidadDisponible = int.parse(stdin.readLineSync()!);

    print("¿Está activo el producto? (true/false):");
    activo = stdin.readLineSync()!.toLowerCase() == 'true';
  }
}

class SushiEspecial extends Producto {
  SushiEspecial({
    required int idProducto,
    required String nombre,
    required double precio,
    required String descripcion,
    required String tipoSushi,
    required int cantidadDisponible,
    required bool activo,
  }) : super(
          idProducto: idProducto,
          nombre: nombre,
          precio: precio,
          descripcion: descripcion,
          tipoSushi: tipoSushi,
          cantidadDisponible: cantidadDisponible,
          activo: activo,
        );

  void mostrarDatos() {
    print("ID Producto: $idProducto");
    print("Nombre: $nombre");
    print("Precio: $precio");
    print("Descripción: $descripcion");
    print("Tipo de Sushi: $tipoSushi");
    print("Cantidad Disponible: $cantidadDisponible");
    print("Activo: $activo");
  }
}


class Pedido {
  int idPedido;
  String fechaPedido;
  int idCliente;
  double totalPedido;
  String estado;
  String metodoPago;
  String fechaEntrega;

  Pedido({
    required this.idPedido,
    required this.fechaPedido,
    required this.idCliente,
    required this.totalPedido,
    required this.estado,
    required this.metodoPago,
    required this.fechaEntrega,
  });

  void capturarDatos() {
    print("Ingrese el ID del pedido:");
    idPedido = int.parse(stdin.readLineSync()!);

    print("Ingrese la fecha del pedido (YYYY-MM-DD):");
    fechaPedido = stdin.readLineSync()!;

    print("Ingrese el ID del cliente:");
    idCliente = int.parse(stdin.readLineSync()!);

    print("Ingrese el total del pedido:");
    totalPedido = double.parse(stdin.readLineSync()!);

    print("Ingrese el estado del pedido:");
    estado = stdin.readLineSync()!;

    print("Ingrese el método de pago:");
    metodoPago = stdin.readLineSync()!;

    print("Ingrese la fecha de entrega (YYYY-MM-DD):");
    fechaEntrega = stdin.readLineSync()!;
  }
}

class PedidoExpress extends Pedido {
  PedidoExpress({
    required int idPedido,
    required String fechaPedido,
    required int idCliente,
    required double totalPedido,
    required String estado,
    required String metodoPago,
    required String fechaEntrega,
  }) : super(
          idPedido: idPedido,
          fechaPedido: fechaPedido,
          idCliente: idCliente,
          totalPedido: totalPedido,
          estado: estado,
          metodoPago: metodoPago,
          fechaEntrega: fechaEntrega,
        );

  void mostrarDatos() {
    print("ID Pedido: $idPedido");
    print("Fecha del Pedido: $fechaPedido");
    print("ID Cliente: $idCliente");
    print("Total del Pedido: $totalPedido");
    print("Estado: $estado");
    print("Método de Pago: $metodoPago");
    print("Fecha de Entrega: $fechaEntrega");
  }
}
void main() {
  print("Reyes Alfonso Ramirez Martinez Mat 22308051281289 gpo 6 J");
  // Crear una instancia de SushiEspecial
  SushiEspecial sushi = SushiEspecial(
    idProducto: 0,
    nombre: "",
    precio: 0.0,
    descripcion: "",
    tipoSushi: "",
    cantidadDisponible: 0,
    activo: false,
  );

  // Capturar los datos del producto
  print("Captura de datos del producto:");
  sushi.capturarDatos();

  

  // Crear una instancia de PedidoExpress
  PedidoExpress pedido = PedidoExpress(
    idPedido: 0,
    fechaPedido: "",
    idCliente: 0,
    totalPedido: 0.0,
    estado: "",
    metodoPago: "",
    fechaEntrega: "",
  );

  // Capturar los datos del pedido
  print("\nCaptura de datos del pedido:");
  pedido.capturarDatos();


  
  print("Reyes Alfonso Ramirez Martinez Mat 22308051281289 gpo 6 J");
  // Mostrar los datos del producto
  print("------------Tabla 1 - Datos del Producto:------------");
  print("\nDatos del Producto:");
  sushi.mostrarDatos();
  // Mostrar los datos del pedido
  print("-----------Tabla 2 - Datos del Pedido:----------");
  print("\nDatos del Pedido:");
  pedido.mostrarDatos();
}