import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Row(
        children: <Widget>[
          Expanded(
            child: BlockProps(
              color: Colors.red, // Set border color here
              width: 2.0, // Set border width here
              padding: EdgeInsets.all(8.0), // Set padding here
              margin: EdgeInsets.all(8.0), // Set margin here
              child: Text('Column 1', textAlign: TextAlign.center),
            ),
          ),
          Expanded(
            child: BlockProps(
              color: Colors.blue, // Set border color here
              width: 2.0, // Set border width here
              child: Text('Column 2', textAlign: TextAlign.right),
            ),
          ),
          Expanded(
            child: FittedBox(
              child: FlutterLogo(),
            ),
          ),
        ],
      )),
    );
  }
}

class BlockProps extends StatelessWidget {
  final Color color;
  final double width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget child;

  const BlockProps({
    required this.color,
    required this.width,
    this.padding,
    this.margin,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: width,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
