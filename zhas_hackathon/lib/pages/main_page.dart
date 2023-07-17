import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zhas_hackathon/widgets/home_app_bar.dart';
import '../widgets/categories.dart';
import '../widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          //AppBar
          HomeAppBar(),
          Container(
            //height: 500,
            padding: EdgeInsets.only(top:15),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(children: [

              //SearchBar
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row( children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 40,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Поиск',
                        ),
                      ),
                    ),
                      Spacer(),
                    ],
                  ),
                ),

              //Categories
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  'Категории',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              CategoriesWidget(),

              //Items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  'Топ товаров',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                      ) ,
                    ),
                  ),

              //Items
              ItemsWidget(),

              ],
            ),
          )
        ],
      ),
    );
  }
}

