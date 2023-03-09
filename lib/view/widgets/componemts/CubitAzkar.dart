import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim/view/widgets/componemts/statesOfAzkar.dart';

class AzkarCubit extends Cubit<AzkarStates> {
  AzkarCubit() : super(initState());
  static AzkarCubit get(context) => BlocProvider.of(context);
  List<dynamic> count = [
    1,
    3,
    3,
    3,
    1,
    1,
    3,
    4,
    1,
    7,
    3,
    1,
    1,
    3,
    3,
    3,
    1,
    3,
    1,
    1,
    3,
    10,
    3,
    3,
    3,
    3,
    1,
    1,
    100,
    100,
    100,
    1,
    1,
    3,
    3,
    3,
    1,
    1,
    3,
    4,
    1,
    7,
    3,
    1,
    1,
    3,
    3,
    3,
    1,
    3,
    1,
    1,
    3,
    10,
    3,
    3,
    3,
    3,
    100,
    1,
    100,
    //ElMESa
    1,
    3,
    1,
    1,
    1,
    1,
    33,
    33,
    34,
    1,
    1,
    3,
    3,
    3,
    //AzkarElsalah
    1,
    1,
    1,
    33,
    1,
    3,
    3,
    3,
    1,
    10,
    1,
    7,
    1,
    //87
  ];
  FirstState({required int x}) {
    if (count[x] == 1) {
      count[x] = '0';
      emit(WhileCountEnable());
    } else if (count[x] > 0) {
      count[x]--;
      emit(WhileCountEnable());
    } else if (count[x] == 0 || count[x] == 1) {
      count[x] = '0';
      emit(WhileCountDisable());
    }
    print('$count');
  }
}
