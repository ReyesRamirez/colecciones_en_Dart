import 'dart:io';

class Empleado {
  int idEmpleado;
  String nombre;
  String cargo;
  String telefono;
  String email;
  String fechaContratacion;
  double salario;
  int idSucursal;

  Empleado({
    required this.idEmpleado,
    required this.nombre,
    required this.cargo,
    required this.telefono,
    required this.email,
    required this.fechaContratacion,
    required this.salario,
    required this.idSucursal,
  });

  void capturarDatos() {
    print("Ingrese el ID del empleado:");
    idEmpleado = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del empleado:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el cargo del empleado:");
    cargo = stdin.readLineSync()!;

    print("Ingrese el teléfono del empleado:");
    telefono = stdin.readLineSync()!;

    print("Ingrese el email del empleado:");
    email = stdin.readLineSync()!;

    print("Ingrese la fecha de contratación del empleado (YYYY-MM-DD):");
    fechaContratacion = stdin.readLineSync()!;

    print("Ingrese el salario del empleado:");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el ID de la sucursal del empleado:");
    idSucursal = int.parse(stdin.readLineSync()!);
  }
}

class Pedro extends Empleado {
  Pedro({
    required int idEmpleado,
    required String nombre,
    required String cargo,
    required String telefono,
    required String email,
    required String fechaContratacion,
    required double salario,
    required int idSucursal,
  }) : super(
          idEmpleado: idEmpleado,
          nombre: nombre,
          cargo: cargo,
          telefono: telefono,
          email: email,
          fechaContratacion: fechaContratacion,
          salario: salario,
          idSucursal: idSucursal,
        );

  void mostrarDatos() {
    print("ID Empleado: $idEmpleado");
    print("Nombre: $nombre");
    print("Cargo: $cargo");
    print("Teléfono: $telefono");
    print("Email: $email");
    print("Fecha de Contratación: $fechaContratacion");
    print("Salario: $salario");
    print("ID Sucursal: $idSucursal");
  }
}

void main() {
  // const
  Pedro pedro = Pedro(
    idEmpleado: 0,
    nombre: "",
    cargo: "",
    telefono: "",
    email: "",
    fechaContratacion: "",
    salario: 0.0,
    idSucursal: 0,
  );

  // Capturar los datos del empleado
  pedro.capturarDatos();

  // Mostrar los datos del empleado
  print("\nDatos del Empleado:");
  pedro.mostrarDatos();
}