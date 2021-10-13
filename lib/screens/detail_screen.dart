import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var serviceList = [
  {'title': 'Men\s Hair Cut', 'duration': 45, 'price': 30},
  {'title': 'Women\s Hair Cut', 'duration': 60, 'price': 50},
  {'title': 'Color & Blow Dry', 'duration': 90, 'price': 75},
  {'title': 'Oil Treatment', 'duration': 30, 'price': 20},
];

class DetailScreen extends StatelessWidget {
  final stylist;

  DetailScreen(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //bao quát tất cả
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            //bao quát tất cả
            children: <Widget>[
              //bao quát tất cả

              //1.ảnh đầu
              Container(
                height: MediaQuery.of(context).size.height / 3 + 20,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/detail_bg.png',
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(0.3),
                    ),
                  ],
                ),
              ),

              //2 cái > điều hướng
              Positioned(
                top: 40,
                left: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              //3 màu trắng ở dưới
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 30,
                child: Container(
                  //tất cả phần màu trắng ở dưới
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,

                  decoration: BoxDecoration(
                    //bo tron goc tren
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),

                  child: Padding(
                    //cac thanh phan mau trang o duoi
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 90,
                        ),
                        Text(
                          'Service List',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ServiceTile(serviceList[0]),
                        ServiceTile(serviceList[1]),
                        ServiceTile(serviceList[2]),
                        ServiceTile(serviceList[3]),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              padding: EdgeInsets.all(20),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 8,
                              color: Color(0xff4E295B),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Angel Howard · ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Sept 25, 2021',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFF8573),
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFF8573),
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFF8573),
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFF8573),
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFF8573),
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Hello World. I love you :)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //4 phần giữa ảnh đầu và phần trắng
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 110,
                child: Padding(
                  // phần giữa ảnh đầu và phần trắng
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    // phần giữa ảnh đầu và phần trắng
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        //hình chữ nhật góc trái và thợ

                        width: MediaQuery.of(context).size.width / 3 - 20,
                        height: MediaQuery.of(context).size.height / 6 + 20,
                        //hình chữ nhật góc trái
                        decoration: BoxDecoration(
                          color: stylist['bgColor'],
                          borderRadius: BorderRadius.circular(20),
                        ),

                        //thợ
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(
                              top: -10,
                              right: -75,
                              height: 160,
                              child: Image.asset(
                                stylist['imgUrl'], //ảnh
                                scale: 4.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            stylist['stylistName'], //tên stylist
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 1.5,
                          ),
                          Text(
                            stylist['salonName'], //tên salon
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xffFF8573),
                              ),
                              SizedBox(width: 5),
                              Text(
                                stylist['rating'],
                                style: TextStyle(
                                  color: Color(0xffFF8573),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(${stylist['rateAmount']})',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: MediaQuery.of(context).size.height / 3 - 55,
                child: MaterialButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.red,
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

class ServiceTile extends StatelessWidget {
  final service;
  ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, //căn đều khoảng cách giữa các thành phần trong một hàng
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 40,
                child: Text(
                  service['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${service['duration']} Min',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Text(
            '\$${service['price']}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffFF8573),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Book',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
