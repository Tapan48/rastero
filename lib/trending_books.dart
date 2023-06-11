import 'package:flutter/material.dart';
import 'rich.dart';

class TrendingBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
              child: Text(
                'Trending Books',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(254, 254, 254, 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2, // Set the number of columns in the grid
                  mainAxisSpacing:
                      15, // Set the spacing between the cards vertically
                  crossAxisSpacing:
                      10, // Set the spacing between the cards horizontally
                  childAspectRatio: 2.62 /
                      3, // Set the aspect ratio of the cards             ////  how much aspect ration?
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Book1()),
                        );
                      },
                      child: promoCard('assets/images/a.png'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
          margin: EdgeInsets.only(left: 25.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    stops: [0.1, 0.9],
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.1),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(.5),
                  ),
                  child: Text(
                    'Mahabharata',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )));
}
