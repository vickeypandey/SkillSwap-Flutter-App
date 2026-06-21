import 'package:flutter/material.dart';
import 'models/skill.dart';
import 'widgets/skill_card.dart';

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


// LOGIN SCREEN

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


              SizedBox(height:20),

              Text(
                "SkillSwap",
                style: TextStyle(
                  fontSize:35,
                  fontWeight:FontWeight.bold,
                ),
              ),

              SizedBox(height:30),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Enter Email",
                  labelText:"Email",
                ),
              ),

              SizedBox(height:20),

              TextField(
                obscureText:true,
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  hintText:"Enter Password",
                  labelText:"Password",
                ),
              ),


              SizedBox(height:30),

              SizedBox(
                width:200,
                child: ElevatedButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context)=>const HomeScreen(),
                      ),
                    );
                    },
                  child:Text("Login"),
                ),
              )
            ],

          ),

        ),

      ),

    );

  }

}



// HOME SCREEN


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=>_HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen>{

  int selectedIndex=0;
  List<Skill> skills=[

    Skill(
      "Flutter",
      "Beginner",
    ),

    Skill(
      "Java",
      "Intermediate",
    ),

    Skill(
      "Python",
      "Advanced",
    ),


  ];


  @override

  Widget build(BuildContext context){

    List<Widget> pages=[
      Center(
        child:Text(
          "Home Page",
          style:TextStyle(fontSize:25),
        ),
      ),

      SkillsPage(
        skills:skills,
      ),

      Center(
        child:Text(
          "Profile Page",
          style:TextStyle(fontSize:25),
        ),
      ),

    ];

    return Scaffold(

      appBar:AppBar(

        title:Text("SkillSwap"),

      ),

      body:pages[selectedIndex],

      bottomNavigationBar:BottomNavigationBar(

        currentIndex:selectedIndex,
        onTap:(index){
          setState((){
            selectedIndex=index;
          });
          },

        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:"Home",
          ),

          BottomNavigationBarItem(
            icon:Icon(Icons.school),
            label:"Skills",

          ),

          BottomNavigationBarItem(

            icon:Icon(Icons.person),
            label:"Profile",

          ),

        ],

      ),

    );

  }
}




// SKILLS PAGE


class SkillsPage extends StatelessWidget {

  final List<Skill> skills;

  const SkillsPage({
    super.key,
    required this.skills,

  });


  @override

  Widget build(BuildContext context){

    return ListView.builder(
      padding:EdgeInsets.all(20),
      itemCount:skills.length,
      itemBuilder:(context,index){

        return InkWell(

          onTap: (){

            Navigator.push(

              context,

              MaterialPageRoute(

                builder:(context)=>SkillDetailPage(

                  name:skills[index].name,

                  level:skills[index].level,

                ),

              ),

            );

          },

          child: SkillCard(

            skill: skills[index],
          ),
        );
        },
    );
  }
}

// DETAIL PAGE


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

      appBar:AppBar(
        title:Text(name),

      ),




      body:Center(

        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,

          children:[

            Text(

              name,
              style:TextStyle(
                fontSize:50,
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