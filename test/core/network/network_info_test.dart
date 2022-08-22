import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:tdd_sampel/core/network/network_info.dart';

class MockInternetConnectionChecker extends Mock
    implements InternetConnectionChecker {}

void main() {
  late NetworkInfoImp networkInfoImp;
  late MockInternetConnectionChecker mockInternetConnectionChecker;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();

    networkInfoImp = NetworkInfoImp(mockInternetConnectionChecker);
  });

  group("internet connection checker", () {
    test('should forward the call to InternetConnectionchecker.hasConection',
        () async {
      // arrange
      final tHasConnectionCheckerFuture = Future.value(true);

      //* Here we are stubing the isConnected getter;

      when(() => mockInternetConnectionChecker.hasConnection)
          .thenAnswer((_) => tHasConnectionCheckerFuture);

      // act

      final result = networkInfoImp.isConnected;

      // assert

      verify(() => mockInternetConnectionChecker.hasConnection);
      expect(result, tHasConnectionCheckerFuture);
    });
  });
}
