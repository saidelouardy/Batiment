import 'package:flutter/material.dart';
import 'package:batimente/Home/homepage.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // textformfild
  GlobalKey<FormState> formstate = GlobalKey();
  String? uesr;
  String? password;
  // button option
  String? titleOption;
  List Optionitem = [
    "M1",
    "M2",
    "M3",
    "M4",
    "M5",
    "M6",
  ];
  //finsh
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.grey[200],
          child: Form(
            key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
//textform fild 1
                  child: TextFormField(
// desing
                    style: Theme.of(context).textTheme.labelMedium,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: const Text("Utilisateur"),
                      fillColor: Colors.white,
                      filled: true,
                      labelStyle: Theme.of(context).textTheme.labelMedium,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 92, 5, 143))),
                    ),
//finsh desing
//method
                    validator: (valuesr) {
                      if (valuesr!.isEmpty) {
                        return "isEmpty";
                      }
                      if (valuesr != "mohamed") {
                        return "Try agine";
                      }
                    },
                    onSaved: (valuesr) {
                      uesr = valuesr;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
//textform fild 2
                  child: TextFormField(
//desing
                    obscureText: true,
                    style: Theme.of(context).textTheme.labelMedium,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      label: const Text("Mot De Passe"),
                      fillColor: Colors.white,
                      filled: true,
                      labelStyle: Theme.of(context).textTheme.labelMedium,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 92, 5, 143))),
                    ),
//finish
//method
                    validator: (valpassword) {
                      if (valpassword!.isEmpty) {
                        return "isEmpty";
                      }
                      if (valpassword != "mohamedelghachi") {
                        return "Try agine";
                      }
                    },
                    onSaved: (valpassword) {
                      password = valpassword;
                    },
                  ),
//finish
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2)),
//dropdownbutton
                    child: DropdownButton(
                      // just desing
                      hint: const Text("Select Option"),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                      iconSize: 40,
                      style: Theme.of(context).textTheme.labelMedium,
                      isExpanded: true,
// finsh desing
//dynamique
                      value: titleOption,
                      items: Optionitem.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          titleOption = val;
                        });
                      },
                      onTap: () {
                        print(titleOption);
                      },
                    ),
// finish
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
//button
                    child: MaterialButton(
                        color: Colors.blue[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Submit",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        onPressed: () {
                          setState(() {
                            if (formstate.currentState!.validate()) {
                              formstate.currentState!.save();
                              print(uesr);
                              print(password);
                              print("you successful");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            } else {
                              print("not  successful try agine");
                            }
                          });
                        }),
//finish
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
