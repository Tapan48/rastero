import 'package:flutter/material.dart';

class Book1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(221, 218, 212, 212),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 280,
                color: Colors.grey,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Color.fromARGB(134, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "In a quaint coastal town, a mysterious stranger arrives, shrouded in secrets and an air of intrigue. As the townspeople become captivated by the enigmatic figure, they uncover a hidden world filled with magic and forgotten lore. With danger lurking in the shadows, they must embark on a thrilling adventure to save their beloved town from an ancient evil. Unlikely alliances are formed, and unexpected heroes emerge, as the fate of their community hangs in the balance. This captivating tale blends fantasy, mystery, and friendship, weaving a spellbinding narrative that will keep readers on the edge of their seats until the final page.",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.favorite_border),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
