import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Color icon = Colors.red[700];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.blue[200], Colors.white])),
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.amber,
                      child: Image(
                        width: (MediaQuery.of(context).size.width),
                        image: NetworkImage(
                            "https://media.iceportal.com/87010/photos/61055088_L.jpg"),
                        fit: BoxFit.cover,
                      ),
                    )),
                Flexible(
                    flex: 3,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            height:
                                (MediaQuery.of(context).size.width) / 4 - 10,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://media-cdn.tripadvisor.com/media/photo-s/0f/7b/58/1c/photo2jpg.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height:
                                (MediaQuery.of(context).size.width) / 4 - 10,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://media-cdn.tripadvisor.com/media/photo-s/10/47/d6/74/area-kolam-renang-hotel.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height:
                                (MediaQuery.of(context).size.width) / 4 - 10,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://media-cdn.tripadvisor.com/media/photo-s/0f/91/36/c2/golden-tulip-holland.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height:
                                (MediaQuery.of(context).size.width) / 4 - 10,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i1.wp.com/penginapan.net/wp-content/uploads/golden-tulip-wedding-chapel.jpg?resize=460%2C300&ssl=1"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Welcome to Golden Tulip Holland Batu",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Flexible(
                    flex: 7,
                    child: Container(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: ListView(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                  "The 4-star Golden Tulip Holland Resort is ideally located in the heart of leisure place in Batu. with easy access to family recreational place and entertainments. It offers two food & beverage venues. swimming pools, a spa, a fitness center, a kids playground and meeting room facilities which cater up to 2000 person."),
                              Text(""),
                              Text(
                                  "Golden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. The hotel is geared towards the needs and requirements of all families, big and small. Our hotel offers various activities for kids, along with a pool/slide."),
                              Text(""),
                              Text(
                                  "Try our tempting menu of drinks and light meals available 24 hours. When you feel the need of food and beverage, we are ready to serve you. Our business center offers computer use and internet services, photocopying, printing, and facsimile."),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (icon == Colors.grey[400]) {
                          icon = Colors.red[700];
                        } else {
                          icon = Colors.grey[400];
                        }
                      });
                    },
                    backgroundColor: Colors.white,
                    mini: true,
                    elevation: 0,
                    child: Icon(
                      Icons.favorite,
                      color: icon,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
