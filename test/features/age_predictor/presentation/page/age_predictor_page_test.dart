import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/bloc/bloc/age_predictor_bloc.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/pages/age_predictor_page.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/widgets/age_predictor_widget.dart';

class MockAgePredictorBloc
    extends MockBloc<AgePredictorEvent, AgePredictorState>
    implements AgePredictorBloc {}

void main() async {
  MockAgePredictorBloc agePredictorBloc = MockAgePredictorBloc();

  testWidgets(
    'AgePredictorPage Widget test',
    (WidgetTester tester) async {
      whenListen(
        agePredictorBloc,
        Stream.fromIterable(
          [
            const AgePredictorInital(),
            const AgePredictorLoading(),
          ],
        ),
        initialState: const AgePredictorInital(),
      );

      await tester.pumpWidget(
        BlocProvider<AgePredictorBloc>(
          create: (context) => agePredictorBloc,
          child: const AgePredictorPage(),
        ),
      );

      await tester.pump();

      expect(find.text('Age Predictor'), findsOneWidget);
      expect(find.byKey(const Key('textField')), findsOneWidget);

      expect(find.byType(ElevatedButton), findsOneWidget);

      var button = find.byKey(const Key('SubmitButton'));

      await tester.pumpWidget(
        BlocProvider<AgePredictorBloc>(
          create: (context) => agePredictorBloc,
          child: const AgePredictorWidget(),
        ),
      );

      // expect(find.byKey(const Key('intial')), findsOneWidget);
      await tester.pump();
      expect(find.byKey(const Key('agePredictor')), findsOneWidget);
      // await tester.tap(button);
      // await tester.pump();

      // expect(find.byKey(const Key('Inital')), findsOneWidget);
    },
  );
}
