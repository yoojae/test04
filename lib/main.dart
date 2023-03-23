import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Image.asset('assets/logo.png',
            height: 40,
        ),
        actions: <Widget>[
          Icon(Icons.notifications_none_rounded, color: Colors.grey,),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10,),
            child: Icon(Icons.shopping_cart_checkout_rounded, color: Colors.grey,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffe2e2e2),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Center(
                          child: Text('전체', style: TextStyle(fontSize: 16),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text('샴푸 방법', style: TextStyle(fontSize: 16),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text('식단 관리', style: TextStyle(fontSize: 16),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text('좋은 습관', style: TextStyle(fontSize: 16),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              listItem(image: 'assets/shampoo.png', tag: 'shampoo'),
              listItem(image: 'assets/meal.png', tag: 'meal'),
              listItem(image: 'assets/plan.png', tag: 'plan'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listItem({image, tag}) {
  return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          width: double.infinity,
          height: 250,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            color: Color(0xff66cd84),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fitHeight,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xffdbdbdb),
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('바야바즈', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ), ),
                          Text('건강', style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),)
                        ],
                      )),
                  Center(
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.favorite_outline_rounded, color: Colors.grey, size: 20,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
  );
}

