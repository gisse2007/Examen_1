import 'dart:io';

void agregarProducto(List<Map<String, dynamic>> productos) {
  stdout.write("Ingrese el nombre del producto: ");
  String nombre = stdin.readLineSync() ?? "";

  if (nombre.isEmpty) {
    print("El nombre no puede estar vacío.");
    return;
  }

  stdout.write("Ingrese el precio del producto: ");
  double? precio = double.tryParse(stdin.readLineSync() ?? "");

  if (precio == null || precio < 0) {
    print("Precio inválido.");
    return;
  }

  stdout.write("Ingrese la cantidad disponible: ");
  int? cantidad = int.tryParse(stdin.readLineSync() ?? "");

  if (cantidad == null || cantidad < 0) {
    print("Cantidad inválida.");
    return;
  }

  Map<String, dynamic> producto = {
    "nombre": nombre,
    "precio": precio,
    "cantidad": cantidad
  };

  productos.add(producto);

  print("Producto agregado correctamente.");
}