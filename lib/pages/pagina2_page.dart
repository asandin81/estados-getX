import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.find<UsuarioController>();
    print(Get.arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                final Usuario newUsuario = Usuario(nombre: 'Angel', edad: 40);
                usuarioCtrl.cargarUsuario(newUsuario);
                Get.snackbar(
                    'Usuario establecido', 'Angel es el usuario establecido.',
                    backgroundColor: Colors.white,
                    boxShadows: [
                      BoxShadow(color: Colors.black38, blurRadius: 10)
                    ]);
              }),
          MaterialButton(
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(30);
              }),
          MaterialButton(
              child: Text('Añadir Profesion',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.agregarProfesion(
                    'Profesion #${usuarioCtrl.usuario.value.profesiones.length + 1}');
              }),
          MaterialButton(
              child:
                  Text('Cambiar Tema', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              }),
        ],
      )),
    );
  }
}
