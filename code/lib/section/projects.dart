import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getProjects(image, description, height, width) {
  return Container(
      width: width,
      height: height + 0.3 * height,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image, height: height, width: width),
          SizedBox(height: 0.1 * height),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                description,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          )
        ],
      )
  );
}


class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 1400) {
          return DesktopProjects();
        } else {
          return MobileProjects();
        }
      },
    );
  }
}

class DesktopProjects extends StatelessWidget {
  const DesktopProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: Padding(
        padding: const EdgeInsets.fromLTRB(250, 100.0, 250, 0.0),
        child: Column(
          children: [
            const Text(
              'Projects',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:150.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getProjects('assets/images/suit.png', 'My Iron Man Suit', 350, 350),
                getProjects('assets/images/suit.png', 'My Iron Man Suit', 350, 350),
                getProjects('assets/images/suit.png', 'My Iron Man Suit', 350, 350)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileProjects extends StatelessWidget {
  const MobileProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],

      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 0.0),
        child: Column(
          children: [
            const Text(
              'Projects',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:50.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getProjects('assets/images/suit.png', 'My Iron Man Suit', 350, 350),
                getProjects('assets/images/suit.png', 'My Iron Man Suit', 350, 350),
                getProjects('assets/images/suit.png', 'My Iron Man Suit', 350, 350)
              ],
            ),
            const SizedBox(height:50.0),
          ],
        ),
      ),
    );
  }
}