import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/ui/cubit/kayit_sayfa_cubit.dart';
import 'package:to_do_app/ui/renkler.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kayıt Sayfa",style: TextStyle(color: yaziRenk,fontFamily: "Pacifico", fontSize: 24),),
        backgroundColor: renk3,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                controller: tfName,
                decoration: const InputDecoration(hintText: "Yapıacak Giriniz..."),
              ),
            ),
            SizedBox(width: 300, height: 50,
              child: ElevatedButton(onPressed: (){
                context.read<KayitSayfaCubit>().kaydet(tfName.text);
              }, child: Text("KAYDET",style: TextStyle(color: yaziRenk,),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: renk3
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
