import 'package:flutter/cupertino.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return CupertinoApp(
	debugShowCheckedModeBanner: false,
	title: 'CupertinoNavigationBar Example',
	home: CupertinoNavigationBarExample(),
	);
}
}

class CupertinoNavigationBarExample extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return CupertinoPageScaffold(
	navigationBar: CupertinoNavigationBar(
		middle: Text('Cupertino Navigation Bar'),
		leading: CupertinoButton(
		child: Text(
			'Back',
			style: TextStyle(fontSize: 13),
		),
		onPressed: () {
			Navigator.of(context).pop();
		},
		),
		trailing: CupertinoButton(
		child: Text(
			'Save',
			style: TextStyle(fontSize: 13),
		),
		onPressed: () {
		},
		),
	),
	child: Center(
		child: Text('Your content goes here.'),
	),
	);
}
}
