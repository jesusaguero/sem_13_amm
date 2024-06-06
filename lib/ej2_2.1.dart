import "package:flutter/material.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My App",
      home: NewHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewHomePage extends StatefulWidget {
  const NewHomePage({super.key});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: openDatePicker,
          child: const Text("Open Date Picker"),
        ),
      ),
    );
  }

  Future<void> openDatePicker() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          // The below-written code will only affect the pop-up window.
          data: ThemeData(
            // I tried to match my picker with your photo.
            useMaterial3: true,
            brightness: Brightness.dark,
            colorSchemeSeed: Colors.purple,
            // Write your own code for customizing the date picker theme.
          ),
          child: child ?? const SizedBox(),
        );
      },
    );
    return Future<void>.value();
  }
}