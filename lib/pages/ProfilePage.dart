import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            "Profile",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                LineAwesomeIcons.moon,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'assets/burger.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Shruti Jain',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.grey.shade800, fontSize: 24),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'shrutijain06062003@gmail.com',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey.shade800, fontSize: 16),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6F35A5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        // style: Theme.of(context)
                        //     .textTheme
                        //     .button
                        //     ?.copyWith(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                  const SizedBox(height: 25),
                  ProfileMenuWiget(
                    text: 'Settings',
                    icon: LineAwesomeIcons.cog_solid,
                    press: () {},
                  ),
                  ProfileMenuWiget(
                    text: 'Billing Details',
                    icon: LineAwesomeIcons.wallet_solid,
                    press: () {},
                  ),
                  ProfileMenuWiget(
                    text: 'User Management',
                    icon: LineAwesomeIcons.user_check_solid,
                    press: () {},
                  ),
                  Divider(
                    color: Colors.grey.shade400,
                    thickness: 0.8,
                  ),
                  const SizedBox(height: 15),
                  ProfileMenuWiget(
                    text: 'Help & Support',
                    icon: LineAwesomeIcons.question_circle,
                    press: () {},
                  ),
                  ProfileMenuWiget(
                    text: 'Privacy Policy',
                    icon: LineAwesomeIcons.lock_solid,
                    press: () {},
                  ),
                  ProfileMenuWiget(
                    text: 'Log Out',
                    icon: LineAwesomeIcons.sign_out_alt_solid,
                    press: () {},
                    endicon: false,
                    color: Colors.red,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class ProfileMenuWiget extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback press;
  final bool endicon;
  final Color? color;
  const ProfileMenuWiget({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
    this.endicon = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: color ?? Colors.grey.shade800, size: 22),
      ),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.grey.shade400, fontSize: 18),
      ),
      trailing: endicon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_double_right_solid,
                color: Colors.black,
                size: 16,
              ))
          : null,
    );
  }
}
