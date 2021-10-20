import 'package:flutter/material.dart';

class CardFlagWidget extends StatelessWidget {
  final String ranking;
  final String country;
  final String totalConfirmed;
  final Function()? ontap;
  const CardFlagWidget({
    Key? key,
    required this.country,
    required this.ranking,
    required this.totalConfirmed,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[200],
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: this.ontap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Row(
                children: [
                  Container(
                    width: constraints.maxWidth * 0.3,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://d13xymm0hzzbsd.cloudfront.net/1/20211019/16346985510620.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.7,
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,
                      spacing: 8,
                      children: [
                        Container(
                          child: Text(
                            '#${this.ranking}',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        Container(
                          width: constraints.maxWidth * 0.7,
                          child: Text(
                            '${this.country}',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Text('Confirmados: ${this.totalConfirmed}'),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
