import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/custom_text_form_feild.dart';
import '../widgets/note_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> titles = ["Today grocery list", "Rich dad Poor dad quotes"];
  List<String> date = ["June 26,2022 08:05 PM", "June 22,2022 05:00 PM"];
  List<Color> colors = [Color(0xffA4FFC5), Color(0xffFFFCA4)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffFEDE3F),
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "NotePad",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormFeild(
              hinttext: "Search notes",
              prefixIcon: Icons.search,
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return NoteItem(
                          title: titles[index],
                          subTitle: date[index],
                          color: colors[index]);
                    }))
          ],
        ),
      ),
    );
  }
}
