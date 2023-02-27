import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget buidPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.teal.shade700,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.teal),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('realme Bangladesh'),
        actions: [
          IconButton(
              onPressed: () async{
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                ));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 85),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buidPage(
                color: Colors.green.shade100,
                urlImage: 'assets/service_story.jpg',
                title: 'realme Service Story',
                subtitle: 'realme always ready to serve users with sincerity and empathy🤝 '
                    'To please users more than their wish and the love get from them has motivated us to be confident in our work and face hundreds of challenges. 😋'
                    '\nReal Service, Dare to Leap! ❤'),
            buidPage(
                color: Colors.blue.shade100,
                urlImage: 'assets/services_day.jpeg',
                title: 'realme Service Day',
                subtitle: 'Mark your calendar on  10, 11, 12 November 2021 realme service day to enjoy various smartphone repair benefits that are exclusively for the realme user'),
            buidPage(
                color: Colors.orange.shade100,
                urlImage: 'assets/service_day_2.jpeg',
                title: 'realme Service Day',
                subtitle: 'NOTE: To our value customers, we highly recommend you to complete data backup at home before visit to the service center. Terms and Conditions apply'),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Colors.white,
                  backgroundColor: Colors.teal.shade700,
                  minimumSize: const Size.fromHeight(80)),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                ));
              },
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => controller.jumpToPage(2),
                    child: const Text('Skip'),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.teal.shade700,
                        ),
                        onDotClicked: (index) => controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn)),
                  ),
                  TextButton(
                      onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: const Text('Next')),
                ],
              ),
            ),
    );
  }
}
