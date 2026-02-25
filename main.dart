// Objetivo General
// Desarrollar una aplicación CRUD en Dart desde consola, para gestionar un catálogo de productos
// de una tienda, permitiendo crear, listar, actualizar y eliminar productos, utilizando:
// ● Listas ● Mapas  ● Ciclos ● Estructuras switch-case
import 'dart:io';

import 'update.dart';
import 'delete.dart';
import 'CreatePro.dart';
import 'ListarPro.dart';

void main() {
  List<Map<String, dynamic>> productos = [];
  bool continuar = true;
  while (continuar) {
    print("\n===== Gestionar un catálogo de productos de una tienda =====");
    print("1. Agregar producto");
    print("2. Listar productos");
    print("3. Actualizar producto");
    print("4. Eliminar producto");
    print("5. Salir");
    stdout.write("Seleccione una opción: ");

    int? opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
      agregarProducto(productos);
      break;

      case 2:
      listarProductos(productos);
      break;

      case 3:
      actualizar(productos);
      break;

      case 4:
      eliminar(productos);
      break;

      case 5:
        // SALIR
        print("Saliendo del programa...");
        continuar = false;
        break;

      default:
        print("Opción inválida. Intente nuevamente.");
    }
  }
}
