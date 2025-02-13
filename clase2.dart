class Clientes {
  int _is_cliente;
  String _nombre;
  String _email;
  String _telefono;
  String _direccion;
  bool _activo;
  DateTime _fecha_registro;
// Constructor
 Clientes(
    this._is_cliente,
    this._nombre,
    this._email,
    this._telefono,
    this._direccion,
    this._activo,
    this._fecha_registro,
  );
  // Método para mostrar los datos del cliente
  void mostrar() {
    print("ID Cliente: $_is_cliente");
    print("Nombre: $_nombre");
    print("Email: $_email");
    print("Teléfono: $_telefono");
    print("Dirección: $_direccion");
    print("¿Activo?: $_activo");
    print("Fecha de registro: $_fecha_registro");
  }
  // Método para capturar datos del cliente (simulado)
  void capturarDatos(
    int is_cliente,
    String nombre,
    String email,
    String telefono,
    String direccion,
    bool activo,
    DateTime fecha_registro,
  ) {
    this._is_cliente = is_cliente;
    this._nombre = nombre;
    this._email = email;
    this._telefono = telefono;
    this._direccion = direccion;
    this._activo = activo;
    this._fecha_registro = fecha_registro;
  }
   // funcion mostrar
}
//-----------------------------------------------------------------
class Pedidos {
  // Atributos privados
  int _id_pedido;
  DateTime _fecha_pedido;
  int _id_cliente;
  double _total_pedido;
  String _estado;
  String _metodo_pago;
  DateTime _fecha_entrega;

  // Constructor
  Pedidos(
    this._id_pedido,
    this._fecha_pedido,
    this._id_cliente,
    this._total_pedido,
    this._estado,
    this._metodo_pago,
    this._fecha_entrega,
  );

  // Método para mostrar los datos del pedido
  void mostrar() {
    print("\nDatos del pedido:");
    print("ID Pedido: $_id_pedido");
    print("Fecha del pedido: $_fecha_pedido");
    print("ID Cliente: $_id_cliente");
    print("Total del pedido: \$${_total_pedido.toStringAsFixed(2)}");
    print("Estado: $_estado");
    print("Método de pago: $_metodo_pago");
    print("Fecha de entrega: $_fecha_entrega");
  }
} // Clase Pedidos
//-----------------------------------------------------------------
class Productos {
  // Atributos privados
  int _id_producto;
  String _nombre;
  double _precio;
  String _descripcion;
  String _tipo_sushi;
  int _cantidad_disponible;
  bool _activo;

  // Constructor
  Productos(
    this._id_producto,
    this._nombre,
    this._precio,
    this._descripcion,
    this._tipo_sushi,
    this._cantidad_disponible,
    this._activo,
  );

  // Método para mostrar los datos del producto
  void mostrar() {
    print("\nDatos del producto:");
    print("ID Producto: $_id_producto");
    print("Nombre: $_nombre");
    print("Precio: \$${_precio.toStringAsFixed(2)}");
    print("Descripción: $_descripcion");
    print("Tipo de sushi: $_tipo_sushi");
    print("Cantidad disponible: $_cantidad_disponible");
    print("¿Activo?: $_activo");
  }
} // Clase Productos
//-----------------------------------------------------------------
void main() {
  print("Reyes Alfonso Ramirez Martinez Mat 22308051281289 gpo 6 J");
  // Crear objeto de la clase Clientes
  
  var cliente = Clientes(
    101, // is_cliente
    "Juan Pérez", // nombre
    "juan.perez@example.com", // email
    "1234567890", // telefono
    "Calle Falsa 123", // direccion
    true, // activo
    DateTime(2023, 10, 1), // fecha_registro
  );
  // Crear un objeto de la clase Pedidos
  var pedido = Pedidos(
    1, // id_pedido
    DateTime(2023, 10, 5), // fecha_pedido
    101, // id_cliente
    150.75, // total_pedido
    "En proceso", // estado
    "Tarjeta de crédito", // metodo_pago
    DateTime(2023, 10, 10), // fecha_entrega
  );
  // Crear un objeto de la clase Productos
  var producto = Productos(
    201, // id_producto
    "Sushi de salmón", // nombre
    12.50, // precio
    "Sushi fresco con salmón de alta calidad", // descripcion
    "Nigiri", // tipo_sushi
    50, // cantidad_disponible
    true, // activo
  );
  // Mostrar los datos del cliente
  print("---------------------------------Tabla Clientes---------------------------------");
  cliente.mostrar();
  // Mostrar los datos del pedido
  print("---------------------------------Tabla Pedidos---------------------------------");
  pedido.mostrar();

  // Mostrar los datos del producto
  print("---------------------------------Tabla Productos---------------------------------");
  producto.mostrar();
} // fin de main