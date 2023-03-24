import 'package:shop/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class Health extends StatefulWidget{
  final String image;
  const Health({Key? key, required this.image}) : super(key: key);

  @override
  HealthState createState() => HealthState();
}

class HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'shampoo',
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xff66cd84),
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.contain,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(horizontal: 23, vertical: 70),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.favorite_outline_rounded, color: Colors.grey, size: 20,),
                    ),
              ],
            ),
          ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('바야바즈', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45
                      ),),
                      Text('바른 습관을 기르는 법', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),)
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 60),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.0)
                        ]
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text('샴푸 방법, 식단, 습관', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                        Container(height: 5,),
                        Text('세 가지가 만드는 건강 케어', style: TextStyle(fontSize: 20, color: Colors.white),),
                        Container(height: 25,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('지금 알아보기', style: TextStyle(fontSize: 17),),
                              Icon(Icons.arrow_right)
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
      ),
    );
  }
}
