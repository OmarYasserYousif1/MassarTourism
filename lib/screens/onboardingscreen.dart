import 'package:flutter/material.dart';
import 'package:traveling_app/screens/loginscreen.dart';

import 'filters_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  List<Widget> _onboardingPages = [
    OnboardingPage(
      imagePath: 'lib/assets/massar.png',
      title: 'مرحبا في تطبيق مسار',
      description: 'أول تطبيق عربي مصري للرحلات و السياحة',
    ),
    OnboardingPage(
      imagePath: 'lib/assets/log.png',
      title: 'يمكنك معرفه الرحلات ',
      description: 'و البرامج السياحية بجمهورية مصر العربية',
    ),
    OnboardingPage(
     imagePath: 'lib/assets/fav.png',
      title: 'يمكنك الاختيار بين الكثير من البرامج السياحية و الرحلات',
      description: 'و اضافة ما ينال اعجابك لقائمة المفضلات و الحجز',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown,
              Colors.brown,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: _onboardingPages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _onboardingPages[index % _onboardingPages.length];
                },
                onPageChanged: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _onboardingPages.length,
                  (int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      width: 12.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _currentIndex == _onboardingPages.length - 1
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginForm()),
                  );
                },
                child: Text('Get Started'),
              ),
            )
          : null,
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  OnboardingPage({
    this.imagePath,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 32.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
