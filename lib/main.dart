import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
  

  Person person = new Person(size: 180);
  print(person.name);
}

class Person {
  String? name;
  int? age;
  String? sex;
  int? size;

  Person({this.name, this.age, this.sex, this.size});
}

Person person1 = new Person(name:"Peniel",age: 19,sex: "masculin", size: 170);
Person person2 = new Person(name:"Precieux",age: 18,sex: "masculin", size: 180);
Person person3 = new Person(name:"Schamat",age: 22,sex: "masculin", size: 175);
Person person4 = new Person(name:"Femi",age: 17,sex: "masculin", size: 160);
Person person5 = new Person(name:"Schekina",age: 20,sex: "Feminin", size: 170);
Person person6 = new Person(name:"Othniel",age: 10,sex: "masculin", size: 17);
Person person7 = new Person(name:"Tryphene",age: 15,sex: "Feminin", size: 170);
Person person8 = new Person(name:"Abigail",age: 12,sex: "Feminin", size: 150);
Person person9 = new Person(name:"Papa",age: 34,sex: "masculin", size: 170);
Person person10 = new Person(name:"Maman",age: 40,sex: "Feminin", size: 170);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var names=[person1,person2,person3,person4,person6,person7,person8,person9,person10,person5];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00ACC1),
          title: Text("Users Profiles"),
        ),

        body:  ListView(
            children: [

              ... names.map((e) =>
                  ListTile(
                   leading: CircleAvatar(backgroundImage:  NetworkImage ('https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),),
                    title: Text(e.name.toString()),
                    subtitle: Text("Est agé de "+e.age.toString()+"ans"+" de sexe "+e.sex.toString()+" et a pour taille "+e.size.toString()+" cm"),
                  )
              ).toList()

            ]

        ),
        bottomNavigationBar:  NavigationBar(
          selectedIndex: 1,

          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favoris',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {  },),
      ),
    );
  }
}