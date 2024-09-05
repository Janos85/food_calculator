import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/domain/drawer.dart';

class AddRecepies extends StatefulWidget {
  final DatabaseRepository database;
  final AuthRepository authRepository;
  const AddRecepies(
      {super.key, required this.database, required this.authRepository});

  @override
  State<AddRecepies> createState() => _AddRecepiesState();
}

class _AddRecepiesState extends State<AddRecepies> {
  final textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(
        databaseRepository: widget.database,
        authRepository: widget.authRepository,
      ),
      body: Column(
        children: [
          TextField(
            controller: textcontroller,
            keyboardType: TextInputType.multiline,
            minLines: 1, //Normal textInputField will be displayed
            maxLines: 15, // when user presses enter it will adapt to it
          ),
          Center(
            child: FloatingActionButton(
              onPressed: () {
                String request = textcontroller.text
                    .replaceAll(",", "%2C")
                    .replaceAll("\n", "")
                    .replaceAll(" ", "%20");
                print(request);
                var url = Uri.parse(
                    "https://api.edamam.com/api/nutrition-data?app_id=06ed93e2&app_key=73662d9f6ba1714ffe21c6f1837280ff&nutrition-type=cooking&ingr=$request");
              },
              child: const Row(children: [Icon(Icons.add), Text("Add")]),
            ),
          ),
        ],
      ),
    );
  }
}
