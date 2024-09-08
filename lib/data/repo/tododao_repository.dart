import 'package:to_do_app/data/entity/todos.dart';

class ToDoDaoRepository {  // DAO : DAtabase Access Object

  Future<void> kaydet(String name) async {
    print("Kaydet: $name");
  }

  Future<void> guncelle(int id, String name) async{
    print("Guncelle: $id - $name");
  }

  Future<List<ToDos>> toDosYukle() async {
    var toDosListesi  = <ToDos>[];
    var toDo1 = ToDos(id: 1, name: "Spor");
    var toDo2 = ToDos(id: 2, name: "Yemek");
    var toDo3 = ToDos(id: 3, name: "Alışveriş");
    toDosListesi.add(toDo1);
    toDosListesi.add(toDo2);
    toDosListesi.add(toDo3);

    return toDosListesi;
  }

  Future<List<ToDos>> ara(String aramaKelimesi) async {
    var toDosListesi  = <ToDos>[];

    var toDo = ToDos(id: 1, name: "Spor");
    toDosListesi.add(toDo);

    return toDosListesi;
  }

  Future<void> sil(int id) async{
    print("Sil : $id");
  }

}