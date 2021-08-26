import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            _buildToggleBar(),
            Image.asset('images/shopping.jpg'),
            DealButtons(),
            _buildProductTitle(context),
          ],
        ),
      ),
    );
  }
}
  Container _buildProductTitle(BuildContext context) {
    return Container(
            height: 200,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/shopping.jpg',
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'More details',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                            'Dolor sit amet, consectetur adipiscing elit. Quisque faucibus.')
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  // ignore: non_constant_identifier_names
  Column DealButtons() {
    return Column(
            children: [
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                          child: Text(
                        'Today Offers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                          child: Text(
                        'Next Week',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  DealButton(text: 'hello', color: Colors.black12,),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                          child: Text(
                        'Autum',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
            ],
          );
  }

  class DealButton extends StatelessWidget{
    final String text;
    final Color color;

    const DealButton({

      required this.text,
      required this.color,

    });
    
    @override
    Widget build(BuildContext context) {
     
    return Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'Last chance to buy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
    }
  }
  Row _buildToggleBar() {
    return Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'For Men',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'For Women',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepOrange,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(           
            bottom: Radius.circular(15))),
      leading: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Icon(Icons.home),
      ),
      title: Text('Super Offers'),
      elevation: 0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Icon(Icons.add_shopping_cart_outlined),
        )
      ],
    );
  }
