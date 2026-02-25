import 'dart:io';

void actualizar(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print("No hay productos para actualizar.");
    return;
  }

  stdout.write("Ingrese el índice del producto a actualizar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? "");

  if (indice == null || indice < 0 || indice >= productos.length) {
    print("Índice inválido.");
    return;
  }

  var producto = productos[indice];

  print("Deja el campo vacío si no deseas modificarlo.");

  stdout.write("Nombre actual: ${producto['nombre']} → Nuevo: ");
  String? nuevoNombre = stdin.readLineSync();

  if (nuevoNombre != null && nuevoNombre.isNotEmpty) {
    producto['nombre'] = nuevoNombre;
  }
  stdout.write("Precio actual: ${producto['precio']} → Nuevo: ");
  String? precioInput = stdin.readLineSync();

  if (precioInput != null && precioInput.isNotEmpty) {
    double? nuevoPrecio = double.tryParse(precioInput);

    if (nuevoPrecio != null && nuevoPrecio > 0) {
      producto['precio'] = nuevoPrecio;
    } else {
      print("Precio inválido. Se mantiene el valor anterior.");
    }
  }
  stdout.write("Cantidad actual: ${producto['cantidad']} → Nueva: ");
  String? cantidadInput = stdin.readLineSync();

  if (cantidadInput != null && cantidadInput.isNotEmpty) {
    int? nuevaCantidad = int.tryParse(cantidadInput);

    if (nuevaCantidad != null && nuevaCantidad >= 0) {
      producto['cantidad'] = nuevaCantidad;
    } else {
      print("Cantidad inválida. Se mantiene el valor anterior.");
    }
  }

  print("Producto actualizado correctamente.");
}