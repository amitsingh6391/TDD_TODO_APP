import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/age_predictor_bloc.dart';

class AgePredictorWidget extends StatelessWidget {
  const AgePredictorWidget({Key? key}) : super(key: key);

  static const Key key1 = Key("intial");
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AgePredictorBloc>().state;
    return state.when(
      agePredictorIntial: () => const Text(
        "intial",
      ),
      agePredictorLoading: () => const CircularProgressIndicator(),
      agePredicorError: (error) => Text("error : $error"),
      agePredictorLoaded: (data) => data.age != null
          ? Text(
              "Your Age is : ${data.age}",
            )
          : const Text("Please enter diffrent name"),
    );
  }
}
