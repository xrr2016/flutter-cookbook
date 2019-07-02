import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cookbook/main.dart';
import 'package:sentry/sentry.dart';

final SentryClient _sentry = SentryClient(
    dsn:
        "https://dcac69f7d88c4f1684e146e4b705a1b6:8ee831af57304074aecb787a28abcf63@sentry.io/1495143");

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

Future<Null> _reportError(dynamic error, dynamic stackTrace) async {
  print('Caught error: $error');

  // if (isInDebugMode) {
  //   print(stackTrace);
  //   print('In dev mode. Not sending report to Sentry.io.');
  //   return;
  // }

  print('Reporting to Sentry.io...');

  final SentryResponse response = await _sentry.captureException(
    exception: error,
    stackTrace: stackTrace,
  );

  if (response.isSuccessful) {
    print('Success! Event ID: ${response.eventId}');
  } else {
    print('Failed to report to Sentry.io: ${response.error}');
  }
}

Future<Null> main() async {
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (isInDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  runZoned<Future<Null>>(() async {
    runApp(MyApp());
  }, onError: (error, stackTrace) async {
    await _reportError(error, stackTrace);
  });
}

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report errors to a service'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        children: <Widget>[
          new RaisedButton(
            child: new Text('Dart exception'),
            elevation: 1.0,
            onPressed: () {
              throw new StateError('This is a Dart exception.');
            },
          ),
          new RaisedButton(
            child: new Text('async Dart exception'),
            elevation: 1.0,
            onPressed: () async {
              foo() async {
                throw new StateError('This is an async Dart exception.');
              }

              bar() async {
                await foo();
              }

              await bar();
            },
          ),
          new RaisedButton(
            child: new Text('Java exception'),
            elevation: 1.0,
            onPressed: () async {
              final channel = const MethodChannel('crashy-custom-channel');
              await channel.invokeMethod('blah');
            },
          ),
        ],
      ),
    );
  }
}
