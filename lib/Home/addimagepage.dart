import 'package:flutter/material.dart';

void main() {
  runApp(AddImagePage());
}

class AddImagePage extends StatefulWidget {
  final imagesync;
  AddImagePage({super.key, this.imagesync});

  @override
  State<AddImagePage> createState() => _AddImagePage();
}

class _AddImagePage extends State<AddImagePage> {
  String? adresse;
  //date
  TextEditingController controllerdays = TextEditingController();
  TextEditingController controllermonths = TextEditingController();
  TextEditingController controlleryears = TextEditingController();
  List<String> days = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  List<String> months = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12"
  ];
  List<String> years = [
    "2020",
    "2021",
    "2022",
    "2023",
    "20204",
    "2025",
    "2026",
    "2027"
  ];
  bool dropdowndays = false;
  bool dropdownmonths = false;
  bool dropdownyears = false;
  //finish
  //type de useage
  List<String> TypeUsage = ["habitation", "non habitaion"];
  TextEditingController controllerUsage = TextEditingController();
  bool dropdownUsage = false;
  //finish

  //Niveaux
  List<String> niveauxs = ["RD1", "RDC2", "RDC3", "RDC4"];
  TextEditingController controllerNiveaux = TextEditingController();
  bool dropdownNiveaux = false;
  String Oui = "oui";
  String No = "No";
  String? chois;
//finish

//occupation
  List<String> occupation = ["habite", "non habite"];
  TextEditingController controlleroccupation = TextEditingController();
  bool dropdownoccupation = false;
//finish

//occupation
  List<String> mitoennete = ["constructor", "constructor1", "constructor2"];
  TextEditingController controllerMitoennete = TextEditingController();
  bool dropdownMitoennete = false;
//finish
//Nomber
  List<String> nomber = ["1", "2", "3", "4", "5"];
  TextEditingController controllernomber = TextEditingController();
  bool dropdownnomber = false;
//finish

  GlobalKey<ScaffoldState> sheetbutton = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//button add image
      key: sheetbutton,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[200],
        padding: EdgeInsets.all(5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(widget.imagesync),
            ),
//date
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //days
                  Column(
                    children: [
                      Text(
                        "Day",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      InputFild("days", controllerdays),
                      dropdowndays
                          ? ReturnListOfNumber("days", controllerdays)
                          : SizedBox()
                    ],
                  ),
//finish
                  const SizedBox(
                    width: 5,
                  ),
//Months
                  Column(
                    children: [
                      Text(
                        "Month",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      InputFild("months", controllermonths),
                      dropdownmonths
                          ? ReturnListOfNumber("months", controllermonths)
                          : SizedBox()
                    ],
                  ),
//finsh
                  const SizedBox(
                    width: 5,
                  ),
//years
                  Column(
                    children: [
                      Text(
                        "Year",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      InputFild("years", controlleryears),
                      dropdownyears
                          ? ReturnListOfNumber("years", controlleryears)
                          : SizedBox()
                    ],
                  ),
//finish
                ],
              ),
            ),

//Adresse 1
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(
                  const Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 40,
                  ),
                  " Adresse"),
            ),
//type de Usage
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Type de Usage",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    InputFild("usage", controllerUsage),
                    dropdownUsage
                        ? ReturnListOfNumber("usage", controllerUsage)
                        : SizedBox()
                  ],
                ),
              ],
            ),
//finish
//Remaque Usage
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(
                  const Icon(
                    Icons.person_pin,
                    color: Colors.black,
                    size: 40,
                  ),
                  "Remarque"),
            ),
//finish
//Niveaux  Sous-Sol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Niveaux",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    InputFild("niveaux", controllerNiveaux),
                    dropdownNiveaux
                        ? ReturnListOfNumber("niveaux", controllerNiveaux)
                        : SizedBox(),
                  ],
                ),
//RadioButton
                Text("Sous-Sol",
                    style: Theme.of(context).textTheme.labelMedium),
                Column(
                  children: [
                    Radio(
                        value: Oui,
                        groupValue: chois,
                        onChanged: (val) {
                          setState(() {
                            chois = val;
                          });
                        }),
                    Text("Oui", style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                Column(
                  children: [
                    Radio(
                        value: No,
                        groupValue: chois,
                        onChanged: (val) {
                          setState(() {
                            chois = val;
                          });
                        }),
                    Text("No", style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
              ],
            ),
//finish
//Remarque Niveax
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(
                  const Icon(
                    Icons.person_pin,
                    color: Colors.black,
                    size: 40,
                  ),
                  "Remarque"),
            ),
//Superfice(m2)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(const Icon(Icons.location_city), "Superfice"),
            ),
//finish
//Remarque Superfice
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(
                  const Icon(
                    Icons.person_pin,
                    color: Colors.black,
                    size: 40,
                  ),
                  "Remarque"),
            ),
//finish
//occupation
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Occupation",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    InputFild("occupation", controlleroccupation),
                    dropdownoccupation
                        ? ReturnListOfNumber("occupation", controlleroccupation)
                        : SizedBox()
                  ],
                ),
              ],
            ),
//finish
//Remarque occupation
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(
                  const Icon(
                    Icons.person_pin,
                    color: Colors.black,
                    size: 40,
                  ),
                  "Superfice"),
            ),
//finish
//Mitoennete  et  nombre
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "mitoennete",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    InputFild("mitoennete", controllerMitoennete),
                    dropdownMitoennete
                        ? ReturnListOfNumber("mitoennete", controllerMitoennete)
                        : SizedBox()
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "nomber",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    InputFild("nomber", controllernomber),
                    dropdownnomber
                        ? ReturnListOfNumber("nomber", controllernomber)
                        : SizedBox()
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFild(
                  const Icon(
                    Icons.person_pin,
                    color: Colors.black,
                    size: 40,
                  ),
                  "Superfice"),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 70,
                      //button
                      child: MaterialButton(
                          color: Colors.blue[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
// button sheet
                              sheetbutton.currentState!.showBottomSheet(
                                (context) => Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(30),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadiusDirectional.only(
                                        topEnd: Radius.circular(50),
                                        topStart: Radius.circular(50)),
                                    color: Color.fromARGB(47, 0, 0, 0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            icon: Icon(
                                              Icons.camera,
                                              size: 60,
                                              color: Colors.blue[300],
                                            )),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            icon: Icon(
                                              Icons.camera_alt_rounded,
                                              size: 60,
                                              color: Colors.blue[300],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                          }),
                      //finish
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      //button
                      child: MaterialButton(
                          color: Colors.blue[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.check,
                            size: 50,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      duration: Duration(seconds: 1),
                                      content: Text(
                                        "is valide",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      )));
                            });
                          }),
                      //finish
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  ///les function

  Widget textFild(Widget iconfild, String lable) {
    return TextFormField(
// desing
      maxLines: 10,
      minLines: 1,
      style: Theme.of(context).textTheme.labelMedium,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: iconfild,
        label: Text(lable),
        fillColor: Colors.white,
        filled: true,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                width: 2, color: Color.fromARGB(255, 92, 5, 143))),
      ),
//finsh desing
//method
      validator: (valuesr) {
        if (valuesr!.isEmpty) {
          return "isEmpty";
        }
      },
      onSaved: (valuesr) {
        adresse = valuesr;
      },
    );
  }

  Widget InputFild(String typeDate, TextEditingController controller) {
    return Container(
      width: 130,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
//textfild to save
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  switch (typeDate) {
                    case "days":
                      dropdowndays = !dropdowndays;
                      break;
                    case "months":
                      dropdownmonths = !dropdownmonths;
                      break;
                    case "years":
                      dropdownyears = !dropdownyears;
                      break;
                    case "usage":
                      dropdownUsage = !dropdownUsage;
                      break;
                    case "niveaux":
                      dropdownNiveaux = !dropdownNiveaux;
                      break;
                    case "occupation":
                      dropdownoccupation = !dropdownoccupation;
                      break;
                    case "mitoennete":
                      dropdownMitoennete = !dropdownMitoennete;
                      break;
                    case "nomber":
                      dropdownnomber = !dropdownnomber;
                      break;
                  }
                });
              },
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 40,
              )),
        ),
      ),
    );
  }

// this function return list of number
  Widget ReturnListOfNumber(
      String typeDisper, TextEditingController controller) {
    return Container(
      width: 130,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        itemCount: typeDisper == "days"
            ? days.length
            : typeDisper == "months"
                ? months.length
                : typeDisper == "years"
                    ? years.length
                    : typeDisper == "years"
                        ? TypeUsage.length
                        : typeDisper == "niveaux"
                            ? niveauxs.length
                            : typeDisper == "occupation"
                                ? occupation.length
                                : typeDisper == "mitoennete"
                                    ? mitoennete.length
                                    : nomber.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                switch (typeDisper) {
                  case "days":
                    controller.text = days[index];
                    break;
                  case "months":
                    controller.text = months[index];
                    break;
                  case "years":
                    controller.text = years[index];
                    break;
                  case "usage":
                    controller.text = TypeUsage[index];
                    break;
                  case "niveaux":
                    controller.text = niveauxs[index];
                    break;
                  case "occupation":
                    controller.text = occupation[index];
                    break;
                  case "mitoennete":
                    controller.text = mitoennete[index];
                    break;
                  case "nomber":
                    controller.text = nomber[index];
                    break;
                }
              });
            },
            child: ListTile(
              title: Text(typeDisper == "days"
                  ? days[index]
                  : typeDisper == "months"
                      ? months[index]
                      : typeDisper == "months"
                          ? years[index]
                          : typeDisper == "months"
                              ? TypeUsage[index]
                              : typeDisper == "niveaux"
                                  ? niveauxs[index]
                                  : typeDisper == "occupation"
                                      ? occupation[index]
                                      : typeDisper == "mitoennete"
                                          ? mitoennete[index]
                                          : nomber[index]),
            ),
          );
        },
      ),
    );
  }
}
