import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:worki/app/ui/global_widgets/head_widget.dart';
import '../../../controllers/country_controller.dart';

class CountryPage extends GetView<CountryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeadWidget(
                body: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 32,
                            color: Colors.white,
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        child: SvgPicture.asset(
                          'assets/img/flagv2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              FractionallySizedBox(
                widthFactor: 0.9,
                child: GetBuilder<CountryController>(
                  init: CountryController(),
                  builder: (controller) => Flex(
                    direction: Axis.vertical,
                    children: [
                      Container(
                        child: Text(
                          '${controller.countryModel.country}',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            '${controller.countryModel.countryCode}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Confirmados',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${controller.countryModel.totalConfirmed}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Muertos',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${controller.countryModel.totalDeaths}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Recuperados',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${controller.countryModel.totalRecovered}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          'Nuevos',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Confirmados',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${controller.countryModel.newConfirmed}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Muertos',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${controller.countryModel.newDeaths}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Recuperados',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${controller.countryModel.newRecovered}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: Text(
                          'Fecha',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${controller.countryModel.date}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
