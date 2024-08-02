import 'package:flutter/material.dart';
import 'package:yumrush/constants.dart';
import 'ProfilePage.dart';
import 'Restaurant.dart';
import 'MapPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const MainHomePage(),
    const RestaurantPage(),
    const MapPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 66,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                    text: "Home",
                    icon: Icons.home,
                    selected: _selectedIndex == 0,
                    ontap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Restaurant",
                    icon: Icons.restaurant,
                    selected: _selectedIndex == 1,
                    ontap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Map",
                    icon: Icons.map,
                    selected: _selectedIndex == 2,
                    ontap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Profile",
                    icon: Icons.person,
                    selected: _selectedIndex == 3,
                    ontap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withOpacity(0.8),
            const Color.fromARGB(255, 75, 53, 165).withOpacity(.6),
            const Color.fromARGB(255, 121, 112, 159).withOpacity(.4),
            const Color.fromARGB(255, 70, 53, 165).withOpacity(.2),
            const Color(0xFF6F35A5).withOpacity(.1),
            const Color(0xFF6F35A5).withOpacity(.05),
            const Color(0xFF6F35A5).withOpacity(.025),
          ],
        ),
      ),
      child: SingleChildScrollView(
          child: Column(
        children: [
          const TopBar(),
          const SearchBar(),
          const PromoCard(),
          const Headline(),
          SizedBox(height: size.height * .01),
          const MenuListView(),
          const SHeadLine(),
          SizedBox(height: size.height * .01),
          const CardListView(),
          Container(
            padding: const EdgeInsets.only(top: 15, right: 25, bottom: 15),
            width: size.height / 1.1,
            child: const Text(
              "Eat what makes you happy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 5, right: 25, bottom: 15),
              height: size.height / 3,
              width: size.width,
              child: GridView.builder(
                itemCount: foodItemList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    text: foodItemList[index].title,
                    image: foodItemList[index].imageUrl,
                    subtitle: "20 min away",
                  );
                },
              )),
        ],
      )),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() ontap;

  const IconBottomBar(
      {super.key,
      required this.text,
      required this.icon,
      required this.ontap,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: ontap,
          icon: Icon(
            icon,
            color: selected ? kPrimaryColor : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: selected ? kPrimaryColor : Colors.grey,
          ),
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find Your\nFavorite Food",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(12, 26),
                        blurRadius: 50,
                        spreadRadius: 0,
                        color: Colors.grey.withOpacity(.25)),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.food_bank,
                    size: 25,
                    color: Color(
                      0xFF6F35A5,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 6,
        bottom: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.15),
            ),
          ],
        ),
        child: TextField(
          onChanged: (value) {},
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 52, 120, 78),
                Color(0xFF6F35A5),
              ],
            ),
          ),
          child: const Stack(
            children: [
              Image(
                image: AssetImage('assets/icecream.png'),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Want some\nicecream?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nearest Restaurants",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )),
              Text("The best food close to you",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  )),
            ],
          ),
          Text(
            "View All",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class SHeadLine extends StatelessWidget {
  const SHeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Popular Menu",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )),
              Text("The best food for you",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  )),
            ],
          ),
          Text(
            "View More",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 175,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Card(
              text: 'Biryani',
              image: 'assets/vegan1.jpg',
              subtitle: '8 min away',
            ),
            Card(
              text: 'Pizza',
              image: 'assets/Italian1.jpg',
              subtitle: '12 min away',
            ),
            Card(
              text: 'Dosa',
              image: 'assets/thali2.jpg',
              subtitle: '15 min away',
            ),
            Card(
              text: 'Desserts',
              image: 'assets/thali2.jpg',
              subtitle: '15 min away',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuListView extends StatelessWidget {
  const MenuListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 175,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Card(
              text: 'Vegan',
              image: 'assets/vegan1.jpg',
              subtitle: '8 min away',
            ),
            Card(
              text: 'Italian',
              image: 'assets/Italian1.jpg',
              subtitle: '12 min away',
            ),
            Card(
              text: 'South Indian',
              image: 'assets/thali2.jpg',
              subtitle: '15 min away',
            ),
            Card(
              text: 'Punjabi',
              image: 'assets/thali2.jpg',
              subtitle: '15 min away',
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final String image;
  final String subtitle;
  const Card(
      {super.key,
      required this.text,
      required this.image,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 20,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1),
            ),
          ],
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
            ),
            const Spacer(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
