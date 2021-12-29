import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestDrawer extends StatelessWidget {
  const TestDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors
              .transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
        ),
        child: Drawer(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg_4.png'), fit: BoxFit.cover)),
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    const Text('Welcome',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    const SizedBox(height: 5),
                    Text('Alan Wolfstring',
                        style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 22,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20),
                    parentTile(
                        title: 'My Resources',
                        icon: Icons.psychology_outlined,
                        children: ['Career Blogs', 'Universities & Degrees']),
                  ])),
        )));
  }

  ExpansionTile parentTile(
      {required String title, required IconData icon, required List children}) {
    return ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        collapsedIconColor: Colors.white,
        collapsedTextColor: Colors.white,
        collapsedBackgroundColor: Colors.transparent,
        leading: const Icon(Icons.psychology_outlined, color: Colors.white),
        title: Text(title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600)),
        children: [
          childTile(children[0]),
          childTile(children[0]),
        ]);
  }

  ListTile childTile(String text) {
    return ListTile(
        contentPadding: const EdgeInsets.only(left: 55),
        title: Text(text,
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w400)),
        onTap: () {});
  }
}
