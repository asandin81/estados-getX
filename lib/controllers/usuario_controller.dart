import 'package:estados/models/usuario.dart';
import 'package:get/get.dart';

class UsuarioController extends GetxController {
  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  void cargarUsuario(Usuario user) {
    this.existeUsuario.value = true;
    this.usuario.value = user;
  }

  void cambiarEdad(int edad) {
    this.usuario.update((val) {
      val!.edad = edad;
    });
  }

  void agregarProfesion(String profesion) {
    this.usuario.update((val) {
      val!.profesiones = [...val.profesiones, profesion];
    });
  }
}
