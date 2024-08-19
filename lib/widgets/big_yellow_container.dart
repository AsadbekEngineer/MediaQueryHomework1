import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_query_font/main.dart';

class BigYellowContainer extends StatelessWidget {
  double screewnWidth;
  BigYellowContainer({required this.screewnWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: screewnWidth,
      decoration: BoxDecoration(
        color: Colors.orange.shade300,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(image: AssetImage('images/image1.png')),
          const Text(
            "Phaleus a vitae",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            "iaculis magna",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            "elefiend pulvinar",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            "velit odio.",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text("fiadshfsiodsa das dasdsd asdasduhfs"),
          const Text("fiadshfsioduhfs asdasda adsa dasds a"),
          const Text("fiadshfsiod asd asdasas"),
          const Text("fiadshfsioduhf sdssds"),
          const Text("fiadshfsioduhf dsdsds  dsdsdsds"),
          const Text("fiadshfsd  sdsd ioduhfs"),
          const Text("fiads sdsdhfsiodu hfssda sdasdas asd"),
          const Text("fiadshfsioduhfsdasdas asdasd as."),
          const SizedBox(
            height: 20,
          ),
          LoremIpsumContainer(
              colorOfIcon: Colors.white,
              colorOfText: Colors.white,
              colorOfBackground: Colors.black,
              screenWidth: screewnWidth - 20),
        ],
      ),
    );
  }
}

class YellowContainerForDesktop extends StatelessWidget {
  double screenWidth;
  YellowContainerForDesktop({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      width: screenWidth - 20,
      decoration: BoxDecoration(
        color: Colors.orange.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Phaleus a vitae",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "iaculis mcd agnadsada",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "veasd sclit ccodio.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("fiadshfsiodsa das dasdsd asdasduhfs"),
              const Text("fiadshfsiod asd asdasas"),
              const Text("fiadshfsioduhf sdssds"),
              const Text("fiadshfsioduhf dsdsds  dsdsdsds"),
              const Text("fiads sdsdhfsiodu hfssda sdasdas asd"),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 200,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Image(image: AssetImage('images/image1.png')),
        ],
      ),
    );
  }
}

class BigBlackBoxForMobile extends StatelessWidget {
  double screenWidth;
  BigBlackBoxForMobile({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        children: [
          Text(
            "SFAIbf IABSfoi ABUSfio uab",
            style: TextStyle(color: Colors.orange),
          ),
          Text(
            "SFAIbf IABSfoi ABUab",
            style: TextStyle(color: Colors.orange),
          ),
          Text(
            "SFAIbf IABSfoi ABUSfio sdsdsd uddab",
            style: TextStyle(color: Colors.orange),
          ),
          Text(
            "SFAIbf IABSfoi ABUSfio uabdsd",
            style: TextStyle(color: Colors.orange),
          ),
          
        ],
      ),
    );
  }
}
