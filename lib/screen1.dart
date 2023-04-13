import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logo.png",
                      height: 50,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/groupe.png",
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      "assets/search.png",
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .85,
                decoration: BoxDecoration( boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Devices"),
                                  Text(
                                    "Devices",
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                height: 1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CircularPercentIndicator(
                                radius: 60.0,
                                lineWidth: 7,
                                backgroundColor: Colors.green,
                                percent: 2 / 30,
                                animation: true,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Text("25\nDevices",textAlign:TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                progressColor: Colors.red.withOpacity(.7),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/onlineicon.png",
                                            height: 20,
                                            width: 20,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(
                                            "22",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Text("Online")
                                    ],
                                  ),SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [

                                          Text(
                                            "5",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          )
                                      ,   Image.asset(
                                            "assets/offlineicon.png",
                                            height: 20,
                                            width: 20,
                                            fit: BoxFit.fill,
                                          ),  ],
                                      ),
                                      Text("Online")
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                     SizedBox(height: 20,),   Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Devices"),
                                  Text(
                                    "Devices",
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                height: 1,
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              ListView.builder(shrinkWrap: true,itemCount: 20,itemBuilder: (context,pos){return Text("0000000000000000");})
                            ],
                          ),
                        ), ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
