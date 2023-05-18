import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobrecruitproject/common/CommonSliderWidget.dart';
import 'package:jobrecruitproject/controllers/SliderPageController.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';



class SliderPage extends StatelessWidget {
  SliderPage({super.key});
  late  PageController _pageController;

  SliderPageController sliderPageController = Get.put(SliderPageController());
  @override
  Widget build(BuildContext context) {
    _pageController = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Obx(
        () => Container(
          height: Get.height*0.9,
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage("lib/assets/ellipse.png")),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (page) {
                    sliderPageController.selectedIndex.value = page;
                  },
                  children: List.generate(4, (index) {
                    return index == 0
                        ? Center(
                            child: commonSliderWidget("Lorem Ipsum", "Lorem ipsum dolor sit amet, consecttutr\n adisdcinpgelit, sed do eiusmod tempor",
                                "lib/assets/sliderImage1.png"))
                        : index == 1
                            ? Center(
                                child: commonSliderWidget("Lorem Ipsum",
                                    "Lorem ipsum dolor sit amet, consecttutr\n adisdcinpg elit, sed do eiusmod tempor", "lib/assets/sliderImage2.png"))
                            : index == 2
                                ? Center(
                                    child: commonSliderWidget("title 2",
                                        "subtitle 2", "lib/assets/sliderImage2.png"))
                                : Center(
                                    child: commonSliderWidget("title 3",
                                        "subtitle 3", "lib/assets/sliderImage2.png"));
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PageViewDotIndicator(
                  currentItem: sliderPageController.selectedIndex.value,
                  count: 4,
                  unselectedColor: Colors.black26,
                  selectedColor: Colors.lightGreen,
                  duration: Duration(milliseconds: 200),
                  boxShape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size.fromWidth(Get.width * 0.45),
                            foregroundColor: sliderPageController.isSeletedSkip.value? Colors.white :Colors.lightGreen,
                            backgroundColor: sliderPageController.isSeletedSkip.value? Colors.lightGreen : Colors.white,
                            padding: const EdgeInsets.all(10.0),
                            textStyle: const TextStyle(fontSize: 22),
                          ),
                          onPressed: () {
                            sliderPageController.isSeletedSkip.value = true;
                            sliderPageController.isSeletedNext.value = false;
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size.fromWidth(Get.width * 0.46),
                             foregroundColor: sliderPageController.isSeletedNext.value? Colors.white :Colors.lightGreen,
                            backgroundColor: sliderPageController.isSeletedNext.value? Colors.lightGreen : Colors.white,
                            padding: const EdgeInsets.all(10.0),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {sliderPageController.selectedIndex.value = sliderPageController.selectedIndex.value +1;
                            sliderPageController.isSeletedNext.value = true;
                            sliderPageController.isSeletedSkip.value = false;
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
