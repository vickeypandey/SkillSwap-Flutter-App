import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SkillSwap',

        home: const LoginScreen(),
    );
  }
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SkillSwap"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.handshake,
                size: 80,
                color: Colors.blue,
              ),

              SizedBox(height: 20),

              Text(
                "SkillSwap",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email",
                  labelText: "Email",
                ),
              ),

              SizedBox(height: 20),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),

              SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Skills{
  String name;
  String level;
  Skills(
      this.name,
      this.level,
      );
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  final List<Widget> pages = [
    Center(
      child: Text(
        "Home Page",
        style: TextStyle(fontSize: 25),
      ),
    ),

   SkillsPage(),

    Center(
      child: Text(
        "Profile Page",
        style: TextStyle(fontSize: 25),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("SkillSwap"),
      ),

      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Skills",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

        ],
      ),
    );
  }
}


class SkillsPage extends StatelessWidget {

  const SkillsPage({super.key});


  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: EdgeInsets.all(20),

      children: [

        InkWell(

        onTap:(){

      Navigator.push(
        context,
        MaterialPageRoute(
          builder:(context)=> SkillDetailPage(
            name:"Flutter",
            level:"Beginner",
          ),
        ),
      );

    },
        child:  Card(
            child: Padding(
              padding: EdgeInsets.all(20),

              child: Row(
                children: [

                  Expanded(
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text("Beginner"),

                ],
              ),
            ),
          ),),




    InkWell(

    onTap:(){

    Navigator.push(
    context,
    MaterialPageRoute(
    builder:(context)=> SkillDetailPage(
    name:"python",
    level:"Beginner",
    ),
    ),
    );

    },


        child:Card(
          child: Padding(
            padding: EdgeInsets.all(20),

            child: Row(
              children: [

                Expanded(
                  child: Text(
                    "Python",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Text("Advanced"),

              ],
            ),
          ),
        ),
    ),


        Card(
          child: Padding(
            padding: EdgeInsets.all(20),

            child: Row(
              children: [

                Expanded(
                  child: Text(
                    "Java",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Text("Intermediate"),

              ],
            ),
          ),
        ),


      ],
    );
  }
}
class SkillDetailPage extends StatelessWidget {

  final String name;
  final String level;


  const SkillDetailPage({
    super.key,
    required this.name,
    required this.level,
  });


  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text(name),
      ),


      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children:[

            Text(
              name,
              style: TextStyle(
                fontSize:70,
                fontWeight:FontWeight.bold,
              ),
            ),


            Text(level),


            ElevatedButton(

              onPressed:(){},

              child:Text("Request Skill"),

            )


          ],

        ),

      ),

    );

  }

}