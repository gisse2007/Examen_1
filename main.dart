// Objetivo General
// Desarrollar una aplicación CRUD en Dart desde consola, para gestionar un catálogo de productos
// de una tienda, permitiendo crear, listar, actualizar y eliminar productos, utilizando:
// ● Listas ● Mapas  ● Ciclos ● Estructuras switch-case
import 'dart:io';

import 'actualizar.dart';
import 'eliminar.dart';

void main() {
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
      ();
      break;

      case 2:
      ();
      break;

      case 3:
      actualizar();
      break;

      case 4:
      eliminar();
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
