import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Services_Day extends StatefulWidget {
  const Services_Day({Key? key}) : super(key: key);

  @override
  State<Services_Day> createState() => _Services_DayState();
}

class _Services_DayState extends State<Services_Day> {
  List imageList = [
    {"id": 1, "image_path": 'assets/services_day.jpeg'},
    {"id": 2, "image_path": 'assets/service_day_2.jpeg'},
    {"id": 2, "image_path": 'assets/service_story.jpg'},
    {"id": 2, "image_path": 'assets/highlights.jpg'},
    {"id": 2, "image_path": 'assets/highlisght_2.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('realme Service Day'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],

                             fit: BoxFit.cover,

                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.red
                                : Colors.teal),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Card(
                elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                color: Colors.grey.shade200,
                child: Text(
                  '                \n            🤗 রিয়েলমি সার্ভিস ডে  🤩 \n আপনার ক্যালেন্ডারে ১০, ১১, ১২ জানুয়ারী ২০২২  realme সার্ভিস ডে হিসেবে  চিহ্নিত করুন এবং উপভোগ করুন বিভিন্ন স্মার্টফোন মেরামতের সুবিধা যা শুধুমাত্র  realme ব্যবহারকারীর জন্য।🤗 \n\n[ফ্রী ] আউট অফ ওয়ারেন্টি মেরামত চার্জ । [ফ্রী ] স্মার্টফোন পরিষ্কার এবং রক্ষণাবেক্ষণ।\n ''[ফ্রী ] সফটওয়্যার আপগ্রেড (শুধুমাত্র অফিসিয়াল হ্যান্ডসেটের জন্য)। '
                      '[ফ্রী ] প্রতিরক্ষামূলক ফিল্ম। আউট  অফ ওয়ারেন্টি  সার্ভিসে ১০% ছাড়! অন্যান্য একসেসরিজ এবং সেফগার্ড সার্ভিসে পাচ্ছেন ১০% ছাড়!\n\nপ্রতি মাসের ১৬ তারিখ থেকে ১৮ তারিখ পর্যন্ত রিয়েলমি সার্ভিস সেন্টারে আসুন আর উপভোগ করুন রিয়েল-টাইম সার্ভিস অভিজ্ঞতার সাথে দারুণ ডিসকাউন্ট 🥳\n\nবি: দ্রষ্টব্য: তবে সার্ভিস সেন্টারে যাওয়ার আগে বাড়িতে আপনার ফোনের ডেটা ব্যাকআপ সম্পূর্ণ করেই আসবেন।',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,

                      ),

                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
