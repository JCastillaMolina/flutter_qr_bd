import 'package:flutter/material.dart';
import 'package:flutter_codigo2_qr/providers/example_provider.dart';
import 'package:flutter_codigo2_qr/ui/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'providers/db_provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExampleProvider()),
        ChangeNotifierProvider(create: (_) => DBProvider()),
      ],
      child: MaterialApp(
        title: "QRApp",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.sourceSansProTextTheme(),
        ),
        home: HomePage(),
      ),
    );
  }
}
