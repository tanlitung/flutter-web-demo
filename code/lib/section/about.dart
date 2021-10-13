import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getStats(number, text, height, width) {
  return Container(
    width: width,
    height: height,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.amber
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[700]
          ),
        )
      ],
    )
  );
}

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 1400) {
          return DesktopAbout();
        } else {
          return MobileAbout();
        }
      },
    );
  }
}

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({Key? key}) : super(key: key);

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
              'About Me',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/about_img.jpg'),
                SizedBox(width: 50.0,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'The ',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Superhero',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber
                                )
                            ),
                            TextSpan(
                              text: ' of the World',
                              style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      const Text(
                        'I am the Iron Man, a superhero from the Marvel.\nI love technologies and I spent my time building them. I can build anything including a time machine.',
                        style: TextStyle(
                            fontSize: 30
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getStats('100', 'Projects Done', 200, 250),
                getStats('520', 'Awards Received', 200, 250),
                getStats('783', 'People Saved', 200, 250),
                getStats('50.8M', 'Followers', 200, 250)
              ],
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}

class MobileAbout extends StatelessWidget {
  const MobileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],

      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 0.0),
        child: Column(
          children: [
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:50.0),
            Image.asset('../../assets/images/about_img.jpg'),
            const SizedBox(height: 50.0,),
            RichText(
              text: const TextSpan(
                text: 'The ',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Superhero',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber
                      )
                  ),
                  TextSpan(text: ' of the World'),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'I am the Iron Man, a superhero from the Marvel.I love technologies and I spent my time building them. I can build anything including a time machine.',
              style: TextStyle(
                  fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50.0),
            Column(
              children: [
                getStats('100', 'Projects Done', 200, 400),
                SizedBox(height: 20.0),
                getStats('520', 'Awards Received', 200, 400),
                SizedBox(height: 20.0),
                getStats('783', 'People Saved', 200, 400),
                SizedBox(height: 20.0),
                getStats('50.8M', 'Followers', 200, 400)
              ],
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}


