import 'package:flutter/material.dart';
import 'converter_page.dart';
import 'gridview_page.dart';
import 'listview_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showSnackBar(String msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  void showAlertDialog(String title, String content, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          ElevatedButton(
            onPressed: () {
              showSnackBar("Successful", context);
              Navigator.pop(context);
            },
            child: const Text("Yes"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("No"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        actions: [
          IconButton(
              onPressed: () => showSnackBar("Search", context),
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877659/bdbfqc16l5k2nhaoc99u.jpg",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage())),
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("List View"),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ListviewPage())),
            ),
            ListTile(
              leading: const Icon(Icons.grid_view),
              title: const Text("Grid View"),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GridviewPage())),
            ),
            ListTile(
              leading: const Icon(Icons.swap_horiz),
              title: const Text("Converter"),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ConverterPage())),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.brown.shade200,
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/flutter.png", width: 120),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () =>
                    showAlertDialog("Alert", "Do you want to continue?", context),
                child: const Text("Show Alert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
