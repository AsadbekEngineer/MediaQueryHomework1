import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:media_query_font/widgets/big_yellow_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //! IsMobile Bool
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  @override
  Widget build(BuildContext context) {
    //! ScreenWidth With MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isMobile(context) ? Colors.amber : Colors.grey,
        title: Text(isMobile(context) ? "Mobile" : "Desktop"),
        centerTitle: true,
      ),
      //! MOBILE
      body: isMobile(context)
          ? Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              color: Colors.orange.shade50,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "RISUS PRAESENT VULPUTATE",
                      style: TextStyle(
                          color: Colors.orange.shade400,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Cursus Integer",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Consequant Trisqite",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AdaptiveContainer(
                        text: 'nimadir karoche',
                        iconColor: Colors.orange.shade400,
                        backgroundColor: Colors.white),
                    const SizedBox(
                      height: 10,
                    ),
                    AdaptiveContainer(
                        text: 'LaLaLa Land',
                        iconColor: Colors.orange.shade400,
                        backgroundColor: Colors.white),
                    const SizedBox(
                      height: 10,
                    ),
                    AdaptiveContainer(
                        text: 'Deapdood',
                        iconColor: Colors.orange.shade400,
                        backgroundColor: Colors.white),
                    const SizedBox(
                      height: 10,
                    ),
                    AdaptiveContainer(
                        text: 'osanfoansof aso',
                        iconColor: Colors.orange.shade400,
                        backgroundColor: Colors.white),
                    const SizedBox(
                      height: 10,
                    ),
                    AdaptiveContainer(
                        text: 'Whatever',
                        iconColor: Colors.orange.shade400,
                        backgroundColor: Colors.white),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    LoremIpsumContainer(
                        colorOfIcon: Colors.black,
                        screenWidth: screenWidth - 50,
                        colorOfText: Colors.black,
                        colorOfBackground: Colors.orange.shade400),
                    const SizedBox(
                      height: 20,
                    ),
                    //! Big Yellow Container
                    BigYellowContainer(
                      screewnWidth: screenWidth,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //! Big Black Container
                    BigBlackBoxForMobile(screenWidth: screenWidth),
                  ],
                ),
              ),
            )
          //! DESKTOP
          : Container(
              padding: const EdgeInsets.all(8),
              color: Colors.orange.shade50,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "RISUS PRAESENT VULPUTATE",
                      style: TextStyle(color: Colors.orange),
                    ),
                    const Text(
                      "Cursus Consequent Tristique",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AdaptiveContainer(
                                text: 'LaLaLa Land',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                            const SizedBox(
                              height: 10,
                            ),
                            AdaptiveContainer(
                                text: 'Deapdood',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                            const SizedBox(
                              height: 10,
                            ),
                            AdaptiveContainer(
                                text: 'osanfoansof asofnaoskf afso a',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                            const SizedBox(
                              height: 10,
                            ),
                            AdaptiveContainer(
                                text: 'Whatever',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AdaptiveContainer(
                                text: 'Deapdood',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                            const SizedBox(
                              height: 10,
                            ),
                            AdaptiveContainer(
                                text: 'osanfoansof asofnaoskf afso a',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                            const SizedBox(
                              height: 10,
                            ),
                            AdaptiveContainer(
                                text: 'Whatever',
                                iconColor: Colors.orange.shade400,
                                backgroundColor: Colors.white),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        LoremIpsumContainer(
                            colorOfIcon: Colors.black,
                            screenWidth: screenWidth / 3,
                            colorOfText: Colors.black,
                            colorOfBackground: Colors.orange.shade400),
                        const SizedBox(
                          height: 25,
                        ),
                        YellowContainerForDesktop(screenWidth: screenWidth),
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

//! Small Container
Widget smallWhiteRoundedContainer({required String text}) {
  return Container(
    width: 150,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
        ),
      ],
    ),
    child: Row(
      children: [
        const Icon(
          Icons.check_circle,
          color: Colors.orange,
        ),
        Text(text),
      ],
    ),
  );
}

//! Lorem Ipsum
Widget LoremIpsumContainer(
    {required Color colorOfIcon,
    required Color colorOfText,
    required Color colorOfBackground,
    required double screenWidth}) {
  return Container(
    height: 60,
    width: screenWidth,
    padding: const EdgeInsets.only(bottom: 10, top: 10, left: 15, right: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: colorOfBackground,
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Lorem Ipsum",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: colorOfText),
          ),
          Icon(
            CupertinoIcons.arrow_right,
            color: colorOfIcon,
          )
        ],
      ),
    ),
  );
}

//! Adaptive Container
class AdaptiveContainer extends StatelessWidget {
  final String text;
  final Color iconColor;
  final Color backgroundColor;

  AdaptiveContainer({
    required this.text,
    required this.iconColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: backgroundColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle_outline, color: iconColor),
              const SizedBox(width: 10),
              Text(
                text,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//!   Widget build(BuildContext context) => OrientationBuilder(
//!        builder: (context, orientation) {
//!           final isPortrait = orientation == Orientation.portrait;
//!           final isMobile = MediaQuery.of(context).size.shortestSide < 600;
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) => OrientationBuilder(
//         builder: (context, orientation) {
//           final isPortrait = orientation == Orientation.portrait;
//           final isMobile = MediaQuery.of(context).size.shortestSide < 600;
//           return Scaffold(
//             drawer: isMobile ? Drawer() : null,
//             appBar: AppBar(
//               title: Text(isPortrait ? "Portrait" : "Landscape"),
//               centerTitle: true,
//             ),
//             body: GridView.count(
//               crossAxisCount: isPortrait ? 2 : 4,
//               children: List.generate(
//                 40,
//                 (index) => Card(
//                   color: isPortrait ? Colors.blue : Colors.green,
//                   child: Center(
//                     child: Text("Item ${index + 1}"),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       );
// }


//! double screenWidth = MediaQuery.of(context).size.width;
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool isDeskTop(BuildContext context) =>
//       MediaQuery.of(context).size.width >= 600;

//   bool isMobile(BuildContext context) =>
//       MediaQuery.of(context).size.width < 600;
  
//    @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('MEDIA QUERY'),
//         centerTitle: true,
//       ),
//       body: Row(
//         children: [
//           if (isDeskTop(context))
//             Container(
//               child: Center(
//                 child: Text(screenWidth > 600 ? 'Orange' : 'BLUE'),
//               ),
//               width: 200,
//               color: screenWidth > 600 ? Colors.orange : Colors.blue,
//             ),
//           Expanded(
//             child: Container(
//               color: Colors.red,
//               child: Center(
//                 child: Text("CONTENT"),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {});
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }