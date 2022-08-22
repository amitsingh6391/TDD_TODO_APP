import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension Dispatcher on BuildContext {
  dynamic dispatch<T extends StateStreamableSource<Object?>>(Object event) {
    (BlocProvider.of<T>(this) as Bloc).add(event);
  }
}
