import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/data/entity/todos.dart';
import 'package:to_do_app/ui/cubit/anasayfa_cubit.dart';
import 'package:to_do_app/ui/renkler.dart';
import 'package:to_do_app/ui/views/detay_sayfa.dart';
import 'package:to_do_app/ui/views/kayit_sayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  void initState() {
    super.initState();
    //Uygulama çalıştırıldığında bir kere çalışır.
    context.read<AnasayfaCubit>().toDosYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDos", style: TextStyle(color: yaziRenk, fontFamily: "Pacifico",fontSize: 24),),
        backgroundColor: renk3,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const KayitSayfa()))
              .then((value){
                print("Anasayfaya dönüldü.");
          });
        },
        backgroundColor: renk3,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSearchTextField(
                    placeholder: "Ara",
                    onChanged: (searchText){
                      context.read<AnasayfaCubit>().ara(searchText);
                    },
                  ),
                ),
              BlocBuilder<AnasayfaCubit,List<ToDos>>(
                builder: (context, toDosListesi){
                  if(toDosListesi.isNotEmpty){
                    return Expanded(
                      child: ListView.builder(
                        itemCount: toDosListesi.length,
                        itemBuilder: (context, indeks){
                          var toDo = toDosListesi[indeks];
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(toDos: toDo)))
                                .then((value){
                               print("Anasayfaya dönüldü.");
                            });
                          },
                          child: Card(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(toDo.name, style: const TextStyle(fontSize: 20),),
                                  ),
                                  Spacer(),
                                  IconButton(onPressed: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: renk1,
                                        content: Text("${toDo.name} silinsin mi?",style: TextStyle(color: yaziRenk),),
                                        action: SnackBarAction(label: "Evet", textColor: yaziRenk, onPressed: (){
                                          context.read<AnasayfaCubit>().sil(toDo.id);
                                      },),
                                      ),

                                    );
                                  }, icon: Icon(Icons.clear, color: renk1,)),
                                ],
                              ),
                            ),
                        );
                        },
                      ),
                    );
                  }else{
                    return const Center();
                  }
                },
              ),
             ],
           ),
      ),
    );
  }
}
