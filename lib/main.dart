import 'package:flutter/material.dart';
import 'package:semillero/src/pages/alert_page.dart';
import 'package:semillero/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // Configuración para la localización
        // https://flutter.dev/docs/development/accessibility-and-localization/internationalization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', ''), // Español, no código del país
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoute(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada $settings.name');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
