import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'model/app_state_model.dart';

// codelabs  ======>  https://codelabs.flutter-io.cn/codelabs/flutter-cupertino-cn/index.html
void main() {
  // This app is designed only to work vertically, so we limit
  // orientations to portrait up and down.
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(
    ChangeNotifierProvider<AppStateModel>(       // NEW
      create: (context) => AppStateModel()..loadProducts(),  // NEW
      child: CupertinoStoreApp(),                // NEW
    ),
  );
}