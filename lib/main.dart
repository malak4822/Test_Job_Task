import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testjobtask/functions.dart';

void main() {
  runApp(const MyApp());
}

/// [MyApp] is a root aplication widget
class MyApp extends StatelessWidget {
  /// invoking root aplication widget
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Software Test',
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  const _MyHomePage();

  @override
  State<_MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  // Setting cool initial color
  Color bgColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    // Getting width of device
    final double devWidth = MediaQuery.of(context).size.width;

    Widget preetyText(String txtVal, double size) => Text(
          txtVal,
          style: GoogleFonts.overpass(
            color: Colors.white,
            fontSize: devWidth * size,
            fontWeight: FontWeight.w900,
          ),
        );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: preetyText('Solid Software Test', 1 / 20),
      ),
      body: InkWell(
        splashColor: Colors.orange,
        onTap: () => ColorFunctions().changeColor(
          bgColor,
          (Color newRandomColor) {
            setState(() {
              bgColor = newRandomColor;
            });
          },
        ),
        child: ColoredBox(
          color: bgColor,
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: devWidth * 3 / 5),
              child: Container(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.deepOrange,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(12),
                        ),
                      ),
                      child: Icon(
                        color: Colors.white,
                        Icons.sentiment_satisfied_alt_rounded,
                        size: devWidth / 6,
                      ),
                    ),
                    preetyText('Hello There', 1 / 12),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
