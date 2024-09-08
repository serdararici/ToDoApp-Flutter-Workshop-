
import 'package:to_do_app/data/entity/todos.dart';
import 'package:to_do_app/sqlite/veritabani_yardimcisi.dart';

class ToDoDaoRepository {  // DAO : Database Access Object

  Future<void> kaydet(String name) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var yeniTodo = Map<String,dynamic>();
    yeniTodo["name"] = name;

    await db.insert('todo', yeniTodo);
  }

  Future<void> guncelle(int id, String name) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var guncellenenTodo = Map<String,dynamic>();
    guncellenenTodo["name"] = name;

    await db.update("todo", guncellenenTodo, where: "id=?", whereArgs: [id] );
  }

  Future<List<ToDos>> toDosYukle() async {

    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM todo");

    return List.generate(maps.length, (index) {
      var satir = maps[index];
      var id = satir["id"];
      var name = satir["name"];

      return ToDos(id: id, name: name);

    });

    /*
    var toDosListesi  = <ToDos>[];
    var toDo1 = ToDos(id: 1, name: "Spor");
    var toDo2 = ToDos(id: 2, name: "Yemek");
    var toDo3 = ToDos(id: 3, name: "Alışveriş");
    toDosListesi.add(toDo1);
    toDosListesi.add(toDo2);
    toDosListesi.add(toDo3);

    return toDosListesi;

     */
  }

  Future<List<ToDos>> ara(String aramaKelimesi) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM todo WHERE name like '%$aramaKelimesi%'");

    return List.generate(maps.length, (index) {
      var satir = maps[index];
      var id = satir["id"];
      var name = satir["name"];

      return ToDos(id: id, name: name);

    });
  }

  Future<void> sil(int id) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    await db.delete("todo", where: "id =?", whereArgs: [id]);
  }

}