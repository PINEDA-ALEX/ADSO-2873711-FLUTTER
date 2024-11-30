import 'package:get/get.dart';

class Mycontroller extends GetxController {
  final _titulo = "Curriculum vitae V2 -ADSO".obs;
  final _listaExperienciaLaboral = [].obs;


  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  void addItemListaExperienciaLaboral(Map<String, dynamic> item) {
    _listaExperienciaLaboral.add(item);
  }

  void cambiarListaExperienciaLaboral(List item) {
    _listaExperienciaLaboral.value = item;
  }

  void removeItemListaExperienciaLaboral(int index) {
    _listaExperienciaLaboral.removeAt(index);
  }

  void editItemListaExperienciaLaboral(int index, Map item) {
    _listaExperienciaLaboral[index] = item;
  }

  String get Titulo => _titulo.value;
  List get ListaExperienciaLaboral => _listaExperienciaLaboral.value;
}