
import 'dart:async';
import 'package:universal_html/js.dart';


Future<T> promiseToFuture<T>(JsObject jsPromise) async {
  final completer = Completer<T>();

  jsPromise.callMethod('then', [allowInterop((value) {
    completer.complete(value);
  })]);

  jsPromise.callMethod('catch', [allowInterop((error) {
    completer.completeError(error);
  })]);

  return completer.future;
}