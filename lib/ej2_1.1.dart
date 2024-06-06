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
		middle: Text('Cupertino Navigation Bar'), // Title in the middle 
		leading: CupertinoButton( 
		child: Text( 
			'Back', 
			style: TextStyle(fontSize: 13), 
		), 
		onPressed: () { 
			// Add your back button action here 
			Navigator.of(context).pop(); 
		}, 
		), 
		trailing: CupertinoButton( 
		child: Text( 
			'Save', 
			style: TextStyle(fontSize: 13), 
		), 
		onPressed: () { 
			// Add your save button action here 
		}, 
		), 
	), 
	child: Center( 
		child: Text('Your content goes here.'), 
	), 
	); 
} 
} 
