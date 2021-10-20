import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:worki/app/data/models/country_model.dart';
import 'package:worki/app/ui/global_widgets/card_flag_widget.dart';
import 'package:worki/app/ui/global_widgets/head_widget.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeadWidget(
                body: Container(
                  //color: Colors.amber,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        //width: constraints.maxWidth * 0.5,
                        child: SvgPicture.asset(
                          'assets/img/medic.svg',
                          width: 180,
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'COVID OMS-APP',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25,
                              right: 14,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      iconSize: 30,
                                      onPressed: () {
                                        controller.getOrderCountryModel(
                                            controller.orderItems);
                                      },
                                      icon: Icon(
                                        Icons.arrow_downward_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      iconSize: 30,
                                      onPressed: () {
                                        controller.getSortByLetter(
                                            controller.orderItemsByletter);
                                      },
                                      icon: Icon(
                                        Icons.sort_by_alpha,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FractionallySizedBox(
                widthFactor: 0.95,
                child: GetBuilder<HomeController>(builder: (controller) {
                  List<CountryModel> countryModel = controller.countryModel;

                  return Wrap(
                    runSpacing: 16,
                    children: [
                      for (var i = 0; i < countryModel.length; i++)
                        CardFlagWidget(
                          country: countryModel[i].country!,
                          ranking: countryModel[i].position.toString(),
                          totalConfirmed:
                              countryModel[i].totalConfirmed.toString(),
                          ontap: () {
                            Get.toNamed('/country', arguments: countryModel[i]);
                          },
                        ),
                    ],
                  );
                }),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
