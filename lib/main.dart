import 'package:flutter/material.dart';
import 'package:instagramproject/pages/loadingsplashscreen.dart';
import 'package:instagramproject/pages/splash_screen.dart';

import 'package:instagramproject/theme/theme_provider.dart';
import 'package:instagramproject/theme/themes.dart';

import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       child: const MyApp(),
//     ),
//   );
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   var email = prefs.getString("email");
//   // print(email);
//  runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       child: const MyApp(),
//     ),
//   );

//   // runApp(MaterialApp(
//   //   debugShowCheckedModeBanner: false,
//   //   home: email == null ? Login() : Home(),
//   // ));

// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.system,

//       // theme: lightMode,

//       theme: Provider.of<ThemeProvider>(context).themedata,

//       darkTheme: darkMode,

//       debugShowCheckedModeBanner: false,

//       home: email==null? SplashScreen():HomePage();

//       // home: LoadingSplashScreen(),
//       // home: const PaginationDemo(),
//       // home: Settings(),
//       // home: const UploadPage(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:instagramproject/homepage.dart';
// import 'package:instagramproject/pages/splash_screen.dart';
// import 'package:instagramproject/theme/theme_provider.dart';
// import 'package:instagramproject/theme/themes.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString("email");
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(email: email), // Pass the email variable to MyApp
    ),
  );
}

class MyApp extends StatelessWidget {
  final String? email; // Declare email as an instance variable

  const MyApp({Key? key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Provider.of<ThemeProvider>(context).themedata,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: email == null ? const SplashScreen() : const LoadingSplashScreen(),
    );
  }
}
