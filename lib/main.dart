import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'accueilPage.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
  ///
  /// Force the layout to Portrait mode
  /// 
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 1000),
      allowFontScaling: false,
      builder: () => MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'FBL_Clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PageAccueil(),
      ),
    );
  }
}


