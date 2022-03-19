import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/background.dart';
import 'package:flutter_application_1/pages/rounded_input_field.dart';
import 'package:flutter_application_1/pages/search_field.dart';

class Home extends StatelessWidget {
  @override
  HomeState createState() => HomeState();
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
            ),
          ),
          Container(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset("image/login_top.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 64.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.white60, width: 2.0)),
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("image/profile.JPG"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Jackson Farm",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21.0,
                      color: Colors.white),
                ),
                Text(
                  "Jackson Colton",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SearchField(onChanged: (value) {}),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.95, -0.96),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white30,
              ),
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment(-0.95, -0.96),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white30,
              ),
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.96),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white30,
              ),
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 265.0,
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 6,
                  itemBuilder:  (BuildContext context,int index){
                    return ProductCard();
                  },
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool star = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/chick.JPG"),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          star = !star;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          star ? Icons.star : Icons.star_border,
                          color: star ? Colors.yellow : Colors.grey[500],
                          size: 30.0,
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Text("Watch Name"),
          Text("\ 80 % | 45 c"),
        ],
      ),
    );
  }
}
