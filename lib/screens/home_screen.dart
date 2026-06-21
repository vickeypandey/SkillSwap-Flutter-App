import 'package:flutter/material.dart';
import '../models/skill.dart';
import 'skills_page.dart';


// HOME SCREEN

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();

}



class _HomeScreenState extends State<HomeScreen> {


  int selectedIndex = 0;



  List<Skill> skills = [


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
  Widget build(BuildContext context) {



    final List<Widget> pages = [



      Center(

        child: Text(

          "Home Page",

          style: TextStyle(fontSize:25),

        ),

      ),




      SkillsPage(

        skills: skills,

      ),




      Center(

        child: Text(

          "Profile Page",

          style: TextStyle(fontSize:25),

        ),

      ),



    ];





    return Scaffold(



      appBar: AppBar(

        title: const Text("SkillSwap"),

      ),




      body: pages[selectedIndex],




      bottomNavigationBar: BottomNavigationBar(



        currentIndex: selectedIndex,



        onTap: (index){



          setState((){


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