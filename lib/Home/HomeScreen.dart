import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_watering_app/AboutPlants.dart';
import 'package:plant_watering_app/Home/TypePlants.dart';
import 'package:plant_watering_app/Home/category.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'Search plant',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MY GARDEN',
                          style: GoogleFonts.philosopher(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: const Icon(
                        Icons.add_circle_rounded,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 25),
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Category(categoryName: 'all'),
                    Category(categoryName: 'in room'),
                    Category(categoryName: 'on type'),
                    Category(categoryName: 'outside'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Aboutplants(
                              plantImagePath: 'Images/Monstera.jpeg',
                              plantName: 'MONSTERA',
                            ),
                          ),
                        );
                      },
                      child: const PlantsType(
                        plantImagePath: 'Images/Monstera.jpeg',
                        plantName: 'Monstera',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Aboutplants(
                              plantImagePath: 'Images/Cactus.jpg',
                              plantName: 'CACTUS',
                            ),
                          ),
                        );
                      },
                      child: const PlantsType(
                        plantImagePath: 'Images/Cactus.jpg',
                        plantName: 'Cactus',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Aboutplants(
                              plantImagePath: 'Images/Crassula3.jpeg',
                              plantName: 'CRASSULA',
                            ),
                          ),
                        );
                      },
                      child: const PlantsType(
                        plantImagePath: 'Images/Crassula3.jpeg',
                        plantName: 'Crassula',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Aboutplants(
                              plantImagePath: 'Images/Ficus.jpg',
                              plantName: 'FICUS',
                            ),
                          ),
                        );
                      },
                      child: const PlantsType(
                        plantImagePath: 'Images/Ficus.jpg',
                        plantName: 'Ficus',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Top Topics',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[400],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HOME FOREST',
                            style: GoogleFonts.gideonRoman(
                                color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Which plants are suitable for your home',
                            style: GoogleFonts.urbanist(fontSize: 15),
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      extendBody: false,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          backgroundColor: Colors.grey[300],
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.black,
          unselectedItemColor: Colors.grey[600],
          splashBorderRadius: 50,
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: const Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.apps_outlined),
              selectedColor: const Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor: const Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: const Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
