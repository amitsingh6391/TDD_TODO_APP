import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/pages/age_predictor_page.dart';
import 'features/age_predictor/presentation/bloc/bloc/age_predictor_bloc.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Predictor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AgePredictorBloc>(
        create: (context) => sl<AgePredictorBloc>(),
        child: const AgePredictorPage(),
      ),
    );
  }
}
