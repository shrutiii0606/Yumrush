import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double kDefaultPadding = 16.0;

class FoodItems {
  String imageUrl, title;
  FoodItems({
    required this.imageUrl,
    required this.title,
  });
}

List<FoodItems> foodItemList = [
  FoodItems(
    title: "Healthy",
    imageUrl: "assets/hhealthy.png",
  ),
  FoodItems(
    title: "Pizza",
    imageUrl: "assets/hpizza.jpg",
  ),
  FoodItems(
    title: "Burger",
    imageUrl: "assets/hburger.png",
  ),
  FoodItems(
    title: "Rolls",
    imageUrl: "assets/hrolls.png",
  ),
  FoodItems(
    title: "Biryani",
    imageUrl: "assets/hbiryani.jpeg",
  ),
  FoodItems(
    title: "Paneer",
    imageUrl: "assets/hpaneer.jpg",
  ),
  FoodItems(
    title: "Noodles",
    imageUrl: "assets/hnoodles.png",
  ),
  FoodItems(
    title: "Dosa",
    imageUrl: "assets/hdosa.png",
  ),
  FoodItems(
    title: "Healthy",
    imageUrl: "assets/hhealthy.png",
  ),
  FoodItems(
    title: "Pizza",
    imageUrl: "assets/hpizza.jpg",
  ),
  FoodItems(
    title: "Burger",
    imageUrl: "assets/hburger.png",
  ),
  FoodItems(
    title: "Rolls",
    imageUrl: "assets/hrolls.png",
  ),
  FoodItems(
    title: "Biryani",
    imageUrl: "assets/hbiryani.jpeg",
  ),
  FoodItems(
    title: "Paneer",
    imageUrl: "assets/hpaneer.jpg",
  ),
  FoodItems(
    title: "Noodles",
    imageUrl: "assets/hnoodles.png",
  ),
  FoodItems(
    title: "Dosa",
    imageUrl: "assets/hdosa.png",
  ),
];

class Restaurants {
  String imageUrl, title, locations, rating, description, price;
  int id;
  Restaurants({
    required this.imageUrl,
    required this.title,
    required this.id,
    required this.locations,
    required this.rating,
    required this.description,
    required this.price,
  });
}

List<Restaurants> restaurantlist = [
  Restaurants(
    imageUrl: 'assets/rasgulla.jpg',
    title: 'Om Sweet & Sancks',
    id: 1,
    locations: 'Indian & Chinese',
    rating: '4.2',
    description:
        "Om Sweets and Snacks is a popular Indian hostel chain known for its authentic vegetarian cuisine,traditional sweets, and snacks. With a legacy spanning over 50 years, the restaurant prides itself on using only the freshest ingredients and traditional cooking techniques to create delicious dishes bursting with flavour. The warm and welcoming ambience, combined with excellent customer service, makes it a favourite among locals and visitors alike. Whether you're in the mood for a quick snack or a hearty meal, Om Sweets and Snacks has something for everyone",
    price: '100',
  ),
  Restaurants(
    imageUrl: 'assets/wrap.jpg',
    title: 'The Masala Story',
    id: 2,
    locations: 'North Indian, Mughlai, Kebab',
    rating: '4.1',
    description:
        "The Masala Story is a renowned Indian restaurant that offers a modern twist on classic Indian cuisine. With a focus on fresh, high-Quality ingredients, The Masala Story creates dishes that are both flavorful and visually stunning.From traditional curries and tandoori specialities to innovative small plates and fusion dishes, the menu at The Masala Story offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service,make it a popular destination for food lovers in serach of a memorable dining experience",
    price: '300',
  ),
  Restaurants(
    imageUrl: 'assets/pizza.jpg',
    title: "Domino's Pizza",
    id: 3,
    locations: 'Pizza, Fast Food',
    rating: '4.1',
    description:
        "Domino's Pizza is a popular pizza restaurant chain that offers a wide selection of delicious pizzas, sides, and desserts.With a focus on fresh, high-quality ingredients, Domino's Pizza creates pizzas that are bith flavorful and visually stunning.From traditional pizzas to innovative fusion dishes, the menu at Domino's Pizza offers something for every palate. The restaurant's contemporary yet inviting ambience, combined with attentive service,make it a popular destination for food lovers in search of a memorable dining experience",
    price: '150',
  ),
  Restaurants(
    imageUrl: 'assets/donald.jpg',
    title: "MCDonald's",
    id: 4,
    locations: 'Burger, Fast Food, Beverages',
    rating: '4.1',
    description:
        "McDonald's is a popular fast food restaurant chain offers a wide selection of delicious burgers, sides, and desserts.With a focus on fresh, high-quality ingredients, McDonald's creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: '150',
  ),
  Restaurants(
    imageUrl: 'assets/jalebi.jpg',
    title: 'Gohana Famous Jalebi',
    id: 5,
    locations: 'Street Food, Mithai',
    rating: '4.2',
    description:
        " Gohana Famous Jalebi is a popular Indian sweet shop that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Gohana Famous Jalebi creates dishes that are both flavorful and visually stunning. From Traditional sweets to innovative fusion dishes, the menu at Gohana famous Jalebi offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: '100',
  ),
  Restaurants(
    imageUrl: 'assets/burger.jpg',
    title: 'Burger King',
    id: 6,
    locations: 'Burger, American, Desserts',
    rating: '4.2',
    description:
        "Burger King is a popular fast food restaurant chain offers a wide selection of delicious burgers, sides, and desserts.With a focus on fresh, high-quality ingredients, Burger King creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience ",
    price: '150',
  ),
  Restaurants(
    imageUrl: 'assets/rasmalai.jpg',
    title: "Haldiram's",
    id: 7,
    locations: 'North Indian, Mithai, South Indian',
    rating: '4.0',
    description:
        "Haldiram's is a popular Indian restaurant chain that offers a wde selection of delicious sweets and snacks.With a focus on fresh, high-quality ingredients, Haldiram's creates dishes that are both flavorful and visually stunning.From traditional sweets to innovative fusion dishes, the menu at Haldiram's offers something for every palate. The restaurant's contemporary yet inviting ambience, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: '100',
  ),
  Restaurants(
    imageUrl: 'assets/rasgulla.jpg',
    title: 'Om Sweet & Sancks',
    id: 8,
    locations: 'Indian & Chinese',
    rating: '4.2',
    description:
        "Om Sweets and Snacks is a popular Indian hostel chain known for its authentic vegetarian cuisine,traditional sweets, and snacks. With a legacy spanning over 50 years, the restaurant prides itself on using only the freshest ingredients and traditional cooking techniques to create delicious dishes bursting with flavour. The warm and welcoming ambience, combined with excellent customer service, makes it a favourite among locals and visitors alike. Whether you're in the mood for a quick snack or a hearty meal, Om Sweets and Snacks has something for everyone",
    price: '100',
  ),
  Restaurants(
    imageUrl: 'assets/wrap.jpg',
    title: 'The Masala Story',
    id: 9,
    locations: 'North Indian, Mughlai, Kebab',
    rating: '4.1',
    description:
        "The Masala Story is a renowned Indian restaurant that offers a modern twist on classic Indian cuisine. With a focus on fresh, high-Quality ingredients, The Masala Story creates dishes that are both flavorful and visually stunning.From traditional curries and tandoori specialities to innovative small plates and fusion dishes, the menu at The Masala Story offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service,make it a popular destination for food lovers in serach of a memorable dining experience",
    price: '300',
  ),
  Restaurants(
    imageUrl: 'assets/pizza.jpg',
    title: "Domino's Pizza",
    id: 10,
    locations: 'Pizza, Fast Food',
    rating: '4.1',
    description:
        "Domino's Pizza is a popular pizza restaurant chain that offers a wide selection of delicious pizzas, sides, and desserts.With a focus on fresh, high-quality ingredients, Domino's Pizza creates pizzas that are bith flavorful and visually stunning.From traditional pizzas to innovative fusion dishes, the menu at Domino's Pizza offers something for every palate. The restaurant's contemporary yet inviting ambience, combined with attentive service,make it a popular destination for food lovers in search of a memorable dining experience",
    price: '150',
  ),
  Restaurants(
    imageUrl: 'assets/donald.jpg',
    title: "MCDonald's",
    id: 11,
    locations: 'Burger, Fast Food, Beverages',
    rating: '4.1',
    description:
        "McDonald's is a popular fast food restaurant chain offers a wide selection of delicious burgers, sides, and desserts.With a focus on fresh, high-quality ingredients, McDonald's creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: '150',
  ),
  Restaurants(
    imageUrl: 'assets/jalebi.jpg',
    title: 'Gohana Famous Jalebi',
    id: 12,
    locations: 'Street Food, Mithai',
    rating: '4.2',
    description:
        " Gohana Famous Jalebi is a popular Indian sweet shop that offers a wide selection of delicious sweets and snacks. With a focus on fresh, high-quality ingredients, Gohana Famous Jalebi creates dishes that are both flavorful and visually stunning. From Traditional sweets to innovative fusion dishes, the menu at Gohana famous Jalebi offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: '100',
  ),
  Restaurants(
    imageUrl: 'assets/burger.jpg',
    title: 'Burger King',
    id: 13,
    locations: 'Burger, American, Desserts',
    rating: '4.2',
    description:
        "Burger King is a popular fast food restaurant chain offers a wide selection of delicious burgers, sides, and desserts.With a focus on fresh, high-quality ingredients, Burger King creates burgers that are both flavorful and visually stunning. From traditional burgers to innovative fusion dishes, the menu at Burger King offers something for every palate. The restaurant's contemporary yet inviting ambience,combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience ",
    price: '150',
  ),
  Restaurants(
    imageUrl: 'assets/rasmalai.jpg',
    title: "Haldiram's",
    id: 14,
    locations: 'North Indian, Mithai, South Indian',
    rating: '4.0',
    description:
        "Haldiram's is a popular Indian restaurant chain that offers a wde selection of delicious sweets and snacks.With a focus on fresh, high-quality ingredients, Haldiram's creates dishes that are both flavorful and visually stunning.From traditional sweets to innovative fusion dishes, the menu at Haldiram's offers something for every palate. The restaurant's contemporary yet inviting ambience, combined with attentive service, make it a popular destination for food lovers in search of a memorable dining experience",
    price: '100',
  ),
];

class Restaurant1 {
  String title, price;
  Restaurant1({
    required this.title,
    required this.price,
  });
}

List<Restaurant1> restaurantlist1 = [
  Restaurant1(title: "Jalebi", price: "100"),
  Restaurant1(title: "Rasgulla", price: "100"),
  Restaurant1(title: "Rasmalai", price: "100"),
  Restaurant1(title: "Gulab Jamun", price: "70"),
  Restaurant1(title: "Besan Ladoo", price: "160"),
  Restaurant1(title: "Kaju Katli", price: "200"),
  Restaurant1(title: "Rava Ladoo", price: "200"),
  Restaurant1(title: "Moong Dal Halwa", price: "200"),
];

class Restaurant6 {
  String name, price;
  Restaurant6({
    required this.name,
    required this.price,
  });
}

List<Restaurant6> restaurantlist6 = [
  Restaurant6(name: "Veg Burger", price: "150"),
  Restaurant6(name: "Chicken Burger", price: "250"),
  Restaurant6(name: "Paneer Burger", price: "250"),
  Restaurant6(name: "Aloo Tikki Burger", price: "50"),
];
