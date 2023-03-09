import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim/view/pages/Quran/controller/state.dart';

import '../../../../constants.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(initState());
  onTapToSava({required BuildContext context}) async {
    await setFontSize();
    await getFontSize();
    setViewMode();
    emit(saveState());
  }
}
