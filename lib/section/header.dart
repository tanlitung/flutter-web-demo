import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_portfolio_demo/my_flutter_app_icons.dart';

void _launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

Widget getIcon(url, icon) {
  return InkWell(
      onTap: () {
        _launchURL(url);
      },
      child: Icon(icon, size: 40, color: Colors.amber)
  );
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 1200) {
          return DesktopHeader();
        } else {
          return MobileHeader();
        }
      },
    );
  }
}

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Row(
          children: [
            Container(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Scientist',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        const Text(
                            'Hi, I am\nThe Iron Man',
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        const SizedBox(height: 20.0),
                        MaterialButton(
                            onPressed: () {
                              _launchURL('https://github.com/tanlitung/tanlitung.github.io/blob/master/document/resume.pdf');
                            },
                            color: Colors.amber,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              child: Text(
                                'Download Resume',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                ),
                              ),
                            )
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            getIcon('https://www.linkedin.com', MyFlutterApp.linkedin),
                            SizedBox(width: 10.0),
                            getIcon('https://www.medium.com', MyFlutterApp.medium),
                            SizedBox(width: 10.0),
                            getIcon('https://www.facebook.com', MyFlutterApp.facebook_square),
                            SizedBox(width: 10.0),
                            getIcon('https://www.instagram.com', MyFlutterApp.instagram_square),
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            Container(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('../../assets/images/ironman.png')
                        )
                    )
                ),
              ),
            )
          ],
        )
    );
  }
}

class MobileHeader extends StatelessWidget {
  const MobileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Column(
          children: [
            Container(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2),
                child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                              'Scientist',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                              ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                              'Hi, I am\nThe Iron Man',
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            textAlign: TextAlign.center
                          ),
                          const SizedBox(height: 20.0),
                          MaterialButton(
                              onPressed: () {
                                _launchURL('https://github.com/tanlitung/tanlitung.github.io/blob/master/document/resume.pdf');
                              },
                              color: Colors.amber,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                child: Text(
                                  'Download Resume',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                ),
                              )
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              getIcon('https://www.linkedin.com', MyFlutterApp.linkedin),
                              SizedBox(width: 10.0),
                              getIcon('https://www.medium.com', MyFlutterApp.medium),
                              SizedBox(width: 10.0),
                              getIcon('https://www.facebook.com', MyFlutterApp.facebook_square),
                              SizedBox(width: 10.0),
                              getIcon('https://www.instagram.com', MyFlutterApp.instagram_square),
                            ],
                          )
                        ],
                      ),
                    )
                )
            ),
            Container(
              constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2),
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('../../assets/images/ironman.png')
                        )
                    )
                ),
              ),
            )
          ],
        )
    );
  }
}

