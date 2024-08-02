import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:yumrush/constants.dart';

class Restaurantdetails extends StatelessWidget {
  final int index;
  const Restaurantdetails({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 50,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(.23)),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              )),
        ),
        body: MainScreen(index: index));
  }
}

class MainScreen extends StatelessWidget {
  final int index;
  const MainScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 50),
      height: size.height,
      width: size.width,
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
          TopImage(index: index),
          Rating(index: index),
          FoodDescription(index: index),
          Menu(index: index)
        ],
      )),
    );
  }
}

class TopImage extends StatefulWidget {
  final int index;
  const TopImage({
    super.key,
    required this.index,
  });

  @override
  State<TopImage> createState() => _TopImageState();
}

class _TopImageState extends State<TopImage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.3,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          image: DecorationImage(
            image: NetworkImage(
              restaurantlist[widget.index].imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 28,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  size: 28,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                children: [
                  Text(
                    restaurantlist[widget.index].title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    restaurantlist[widget.index].locations,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Rating extends StatelessWidget {
  final int index;
  const Rating({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        height: size.height,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  restaurantlist[index].rating,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text('Rating',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            )
          ],
        ));
  }
}

class FoodDescription extends StatefulWidget {
  final int index;
  const FoodDescription({
    super.key,
    required this.index,
  });

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
  bool _showFullText = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        width: size.width,
        child: Expanded(
          child: Column(
            children: [
              _showFullText
                  ? Text(
                      restaurantlist[widget.index].description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : Text(
                      restaurantlist[widget.index].description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              _buildButton(),
            ],
          ),
        ));
  }

  Widget _buildButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          _showFullText = !_showFullText;
        });
      },
      child: Text(_showFullText ? "Show less" : "Show more"),
    );
  }
}

class Menu extends StatefulWidget {
  final int index;
  Menu({super.key, required this.index});

  bool _onClick = true;
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 6, left: 25, right: 25),
          height: size.height * 0.06,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ],
          ),
        ),
        for (int i = 0; i < 5; i++)
          Container(
              padding: const EdgeInsets.only(top: 6, left: 25, right: 25),
              height: size.height * 0.06,
              width: size.width,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.01),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    restaurantlist1[i].title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        restaurantlist1[i].price,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            widget._onClick = !widget._onClick;
                          });
                        },
                        icon: widget._onClick
                            ? const Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.black,
                              )
                            : const Icon(
                                Icons.check_box_outlined,
                                color: Colors.green,
                              ),
                      ),
                    ],
                  )
                ],
              ))
      ],
    );
  }
}
