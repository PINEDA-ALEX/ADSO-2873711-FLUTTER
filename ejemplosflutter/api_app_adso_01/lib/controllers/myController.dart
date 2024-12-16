import 'package:get/get.dart';

class MyController extends GetxController {
  final _titulo = "Consumo de appis - 01".obs;
  final _pagina = 0.obs;
  final _listaUsuariosReqRes = [].obs;

  void setTitulo(String item) {
    _titulo.value = item;
  }

  void setPaginas(int item) {
    _pagina.value = item;
  }

  void setListaUsuariosReqRes(List item) {
    _listaUsuariosReqRes.value = item;
  }

  String get Titulo => _titulo.value;
  int get Pagina => _pagina.value;
  List get ListaUsuariosReqRes => _listaUsuariosReqRes.value;
}
