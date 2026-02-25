import 'dart:io';

void eliminar(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print(" No hay productos para eliminar.");
    return;
  }

  stdout.write("Ingrese el índice del producto a eliminar: ");
  String? indiceInput = stdin.readLineSync();
  int? indice = int.tryParse(indiceInput ?? "");

  if (indice == null || indice < 0 || indice >= productos.length) {
    print(" Índice inválido.");
    return;
  }

  productos.removeAt(indice);
  print("Producto eliminado correctamente.");
}