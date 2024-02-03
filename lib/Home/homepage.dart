import 'package:batimente/Home/addimagepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imagesync = [
    "images/a.png",
    "images/a1.png",
    "images/a2.png",
    "images/a3.png",
    "images/a4.png",
    "images/a5.png",
  ];
  // text sync
  String textSync = "Sync";
  String Batiment = "Batiment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// button trnsaction to AddImagePage
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
            size: 50,
            color: Colors.black,
            weight: 30,
          ),
          onPressed: () {
            setState(() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddImagePage()));
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[200],
        padding: const EdgeInsets.all(10),
//gridviw
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 12),
          itemCount: imagesync.length,
          itemBuilder: (context, index) {
            return
//return card
                Stack(clipBehavior: Clip.none, children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddImagePage(
                              imagesync: imagesync[index],
                            )));
                    print("is work");
                  });
                },
                child: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.green, width: 5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: 205,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
//image
                                image: DecorationImage(
                                    image: AssetImage(imagesync[index]))),
                          ),
                        ),
//text batiment - init -
                        Expanded(
                          flex: 1,
                          child: Text(Batiment + " " + "${index + 1}",
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ),
//text Sync
              Positioned(
                bottom: -10,
                right: 65,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    textSync,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
