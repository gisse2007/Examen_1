void listarProductos(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print("No hay productos registrados.");
    return;
  }

  print("\n===== LISTA DE PRODUCTOS =====");

  for (int i = 0; i < productos.length; i++) {
    print("Producto #$i");
    print("Nombre: ${productos[i]["nombre"]}");
    print("Precio: \$${productos[i]["precio"]}");
    print("Cantidad: ${productos[i]["cantidad"]}");
    print("---------------------------");
  }
}