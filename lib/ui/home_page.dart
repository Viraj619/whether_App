
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/domen/appconstance.dart';
import 'package:weather_app/domen/coustom_page.dart';
import 'package:weather_app/domen/ui_hepler.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage("asset/image/background_im.jpg"),fit: BoxFit.cover),
        color: Colors.green
      ),
      child: Stack(children: [
        Column(
          children: [
            SizedBox(height: 50,),
          /// title icons
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.drag_handle_outlined,size: 30,),
            Icon(Icons.contactless_outlined,size: 30,)
          ],),
          /// location
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Alahan Panjan",style: mTextStyle16(),),
                  Icon(Icons.location_on_outlined,size: 20,),
                ],
              ),
              Divider(height: 0,
                thickness: 2,
                indent: 115,
                endIndent: 135,
                color: Colors.black,),
            ],
          ),
          /// day and time
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mon,",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
              Text("05:30",style: mTextStyle15(mFontWeigh: FontWeight.normal),)
            ],
          ),
            SizedBox(height: 100,),
            Text("Partly Sunny",style: mTextStyle16(mFontWeight:FontWeight.normal ),),
            /// temperature
            Text("14oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),

            ///degrees
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Feels like:",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
              Text("18o",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
              Icon(Icons.arrow_upward,size: 20,color: Colors.red,),
              Text("22o",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
              Icon(Icons.arrow_downward,size: 20,color: Colors.blue,),
                Text("10o",style: mTextStyle15(mFontWeigh: FontWeight.normal),),

            ],),
            SizedBox(height: 170,),
            /// forecast
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Hourly Forecast",style: mTextStyle16(mFontColor: Colors.white),),
                Text("72 Hours",style: mTextStyle16(mFontColor: Colors.white),),
              ],),
            ),
            Container(width:MediaQuery.of(context).size.width*0.9,
            height:MediaQuery.of(context).size.width>250?MediaQuery.of(context).size.width*0.7:MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 200,
                child: Column(children: [
                  /// weather time
                  CoustomContainer(width: 300.0,height: 100.0, child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (_,index){
                        return Column(children: [
                          SizedBox(
                              width: 70,height: 30,child: Text(AppConstance.weatheData[index]["time"],style: mTextStyle16(mFontWeight: FontWeight.normal),)),
                          SizedBox(width: 10,),
                          Image.asset(AppConstance.weatheData[index]['img'],width: 50,height: 50,)
                        ],);
                      }) ,),
                  SizedBox(height: 5,),
                  ///temperatures
                  CoustomContainer(width: 300.0,height: 100.0, child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (_,index){
                        return Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: CoustomContainer(height: 40.0,width: 50.0,color: Colors.blue,child: Center(child: Text("18o"),),),
                          ),
                          SizedBox(height: 30,),
                          Row(children: [
                            Icon(Icons.water_drop,size: 10,),
                            Text("2%")
                          ],)

                        ],);
                      }) ,),
                ],),
              ),
            ),)

        ],)
      ],)),
    );
  }
}