import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
int
double
string
bool
**/

class SharePreference extends StatelessWidget {
  TextEditingController _editingController =
      new TextEditingController(); // defining control to get this from control value

  SharePreference({super.key});
  @override
  Widget build(BuildContext context) {
    getDataFromSP();
    return Scaffold(
        appBar: AppBar(
          title: Text("SharedPreference"),
        ),
        body: Container(
          width: 300,
          margin: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextField(
                        controller: _editingController,
                        decoration: const InputDecoration(
                            hintText: "Enter User Name",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            saveDatainSP(_editingController.text);
                          },
                          child: Text("Save Data"),
                        ),
                        SizedBox(
                            width: 10), // Add some spacing between the buttons
                        ElevatedButton(
                          onPressed: () async {
                            getDataFromSP();
                          },
                          child: Text("Fetch Data"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void saveDatainSP(String name) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("name", name);
    print("named saved in SP is $name");

    //sharedPreferences.clear();
    //sharedPreferences.containsKey("username");
    sharedPreferences.reload();
  }

  getDataFromSP() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String username = sharedPreferences.getString("name") ?? "User Name";
    _editingController.text = username;
    print(username);
  }
}
