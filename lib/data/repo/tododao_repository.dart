class ToDoDaoRepository {  // DAO : DAtabase Access Object

  Future<void> kaydet(String name) async {
    print("Kaydet: $name");
  }

  Future<void> guncelle(int id, String name) async{
    print("Guncelle: $id - $name");
  }

}