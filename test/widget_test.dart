import 'package:flutter_test/flutter_test.dart';
import 'package:rankstaurant/app.dart';

void main() {
  testWidgets('Basic widget presence check', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    expect(find.text('Welcome to rankstaurant'), findsOneWidget);
  });
}
