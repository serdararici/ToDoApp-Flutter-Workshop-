import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/data/entity/todos.dart';
import 'package:to_do_app/data/repo/tododao_repository.dart';

class AnasayfaCubit extends Cubit<List<ToDos>>{
  AnasayfaCubit() : super(<ToDos>[]);
  var toDoRepo = ToDoDaoRepository();
}