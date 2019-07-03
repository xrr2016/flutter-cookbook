import 'package:flutter/material.dart';
import 'package:flutter_cookbook/cookbooks.dart';
import 'package:flutter_cookbook/navigation/extract_arguments_page.dart';
import 'package:flutter_cookbook/navigation/navigate_second_page.dart';
import 'package:flutter_cookbook/navigation/pass_auguments_page.dart';
import 'package:flutter_cookbook/navigation/screen_arguments.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CookBooks(),
      theme: ThemeData(
        fontFamily: 'Puhuiti',
      ),
      routes: {
        '/second': (context) => NavigateSecondPage(),
        ExtractArgumentsPage.routeName: (context) => ExtractArgumentsPage(),
      },
      onGenerateRoute: (settings) {
        print(settings.name);

        if (settings.name == PassArgumentsPage.routeName) {
          final ScreenArguments args = settings.arguments;

          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsPage(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CookBooks());
      },
    );
  }
}
