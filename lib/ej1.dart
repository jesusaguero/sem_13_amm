import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(AlertDialogApp());

class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlertDialogExample(),
    );
  }
}

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  void _showMaterialAlertDialogAcceptCancel(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Material Alert'),
        content: const Text('This is a Material alert dialog with Accept and Cancel.'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }

  void _showMaterialAlertDialogAccept(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Material Alert'),
        content: const Text('This is a Material alert dialog with Accept only.'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }

  void _showCupertinoAlertDialogAcceptCancel(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Cupertino Alert'),
        content: const Text('This is a Cupertino alert dialog with Accept and Cancel.'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }

  void _showCupertinoAlertDialogAccept(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Cupertino Alert'),
        content: const Text('This is a Cupertino alert dialog with Accept only.'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showMaterialAlertDialogAcceptCancel(context),
              child: const Text('Material Alert - Accept/Cancel'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showMaterialAlertDialogAccept(context),
              child: const Text('Material Alert - Accept Only'),
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              onPressed: () => _showCupertinoAlertDialogAcceptCancel(context),
              child: const Text('Cupertino Alert - Accept/Cancel'),
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              onPressed: () => _showCupertinoAlertDialogAccept(context),
              child: const Text('Cupertino Alert - Accept Only'),
            ),
          ],
        ),
      ),
    );
  }
}
