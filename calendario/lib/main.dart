// TODO Implement this library.
import 'package:calendario/temas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final tema = ValueNotifier(ThemeMode.light);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: tema,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: value,
          // theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          // darkTheme:
          //     ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          home: const Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Material Theme Builder"),
          actions: [
            Switch(
                value: tema.value == ThemeMode.dark,
                onChanged: (newValue) {
                    setState(() {
                      themeMode = !themeMode;
                    });
                  },
                // onChanged: (isDark) {
                //   setState(() {
                //     tema.value = isDark ? ThemeMode.dark : ThemeMode.light;
                //   });
                // })
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Update with your UI',
              ),
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => {}, tooltip: 'Increment'));
  }
  
  void setState(Null Function() param0) {}
}
