import 'package:flutter/material.dart';
import 'package:tdd_sampel/core/util/context_util.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/bloc/bloc/age_predictor_bloc.dart';
import '../widgets/age_predictor_widget.dart';

class AgePredictorPage extends StatefulWidget {
  const AgePredictorPage({Key? key}) : super(key: key);

  // static const String route = '/welcome_page';

  @override
  State<AgePredictorPage> createState() => _AgePredictorPageState();
}

class _AgePredictorPageState extends State<AgePredictorPage> {
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Age Predictor",
                key: Key("Title"),
              ),
              const SizedBox(
                height: 20,
              ),
              const AgePredictorWidget(
                key: Key("agePredictor"),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  key: const Key('textField'),
                  controller: _name,
                  maxLength: 9,
                  decoration: const InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA2A2A2),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff3C372F)),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                key: const Key("SubmitButton"),
                onPressed: () {
                  context
                      .dispatch<AgePredictorBloc>(GetAgeFromName(_name.text));
                },
                child: const Text(
                  "Submit",
                  key: Key("SubmitText"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
