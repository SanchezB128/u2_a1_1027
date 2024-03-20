import 'package:flutter/material.dart';
import 'package:sanchez1027/pantallas1027/panel1027/ithem_menu.dart';

class PanelPantalla1027 extends StatelessWidget {
  const PanelPantalla1027({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000000),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/SanchezB128/img_IOS/main/iconPizza.jpg"),
            ),
          )
        ],
        title: const Text(
          'Pizza  Sanchez1027',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffe3b5b5),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Menu De Pizzz",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xff000000))),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/SanchezB128/img_IOS/main/Pizza-3007395.jpg"))),
          ),
          ListTile(
            title: Text("Menu Pizzas"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const IthemMenu()],
            ),
          )
        ],
      ),
    );
  }
}
