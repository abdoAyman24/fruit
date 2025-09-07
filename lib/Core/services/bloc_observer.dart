import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) async {
    super.onChange(bloc, change);
    print('[Bloc State Change] ${bloc.runtimeType}: $change');
    
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('[Bloc Transition] ${bloc.runtimeType}: $transition');
  }
}
