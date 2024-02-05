// ignore_for_file: sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_010203040506070809/model/categoty_model.dart';
import 'package:flutter_application_010203040506070809/model/slider_model.dart';
import 'package:flutter_application_010203040506070809/servisec/data.dart';
import 'package:flutter_application_010203040506070809/servisec/slider_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeDays5 extends StatefulWidget {
  const HomeDays5({super.key});

  @override
  State<HomeDays5> createState() => _HomeDays5State();
}

class _HomeDays5State extends State<HomeDays5> {
  List<CategoryModel> categories = [];
  List<SliderModel> sliders = [];

  int activeindex = 0;
  @override
  void initState() {
    categories = getCategories();
    sliders = getSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aalam",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "NEWS",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              height: 70,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Categoryler(
                      image: categories[index].image,
                      categoryName: categories[index].categoryName,
                    );
                  }),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Последние новости! ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Посмотреть все!",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: sliders.length,
              itemBuilder: (context, index, realIndex) {
                String? res = sliders[index].image;
                String? res1 = sliders[index].name;
                return buildImage(res!, index, res1!);
              },
              options: CarouselOptions(
                  height: 250,
                  //viewportFraction: 1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, resson) {
                    setState(() {
                      activeindex = index;
                    });
                  }),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Center(child: buildIndicator()),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Новости тренинга! ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Посмотреть все!",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Material(
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/bory.jpg",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: const Text(
                              " Али перехватил инициативу вышел на 3 место",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: const Text(
                              "затем последний удар, чтобы обыграть Рому",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String image, int index, String name) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 250,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 250,
              margin: const EdgeInsets.only(top: 170.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: sliders.length,
        effect: const ScaleEffect(
            dotWidth: 15, dotHeight: 15, activeDotColor: Colors.red),
      );
}

class Categoryler extends StatelessWidget {
  final image, categoryName;

  const Categoryler({super.key, this.categoryName, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            width: 120,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 120,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.black26,
          ),
          child: Center(
            child: Text(
              categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
