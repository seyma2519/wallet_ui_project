import 'package:flutter/material.dart';
import 'package:wallet_ui/util/my_button.dart';
import 'package:wallet_ui/util/my_card.dart';
import 'package:wallet_ui/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget { 
  const HomePage ({ Key? key}) : super(key: key);

  @override 
  State<HomePage> createState() => HomePageState();

}

class HomePageState extends State<HomePage> { 
  final controller = PageController();
  @override 
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.green[400],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Colors.green[800],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Row(
                  children: [  
                  Text(
                  'My',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text( 
                  'Cards',
                  style: TextStyle(fontSize: 27),
                ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add),
              ),
               
              ],
            ),
          ),
          
              SizedBox(height: 25),

      //Cards
      Container(
        height: 200,
        child: PageView( 
          scrollDirection: Axis.horizontal,
          controller:controller,
          children: [ 
            MyCard(
             balance:1234.423,
             cardNumber:1234567890,
             expiryMonth:10,
             expiryYear:24,
             color: Colors.deepOrange,
             ),
            MyCard(
              balance:1234.423 ,
              cardNumber:9876543211,
              expiryMonth: 11,
              expiryYear: 25 , 
              color: Colors.red,
              ),
            MyCard(
              balance:1234.423 ,
              cardNumber:9876543211,
              expiryMonth: 12,
              expiryYear: 26 , 
              color: Colors.green,
              ), 
          ],
        ),
      ),
      SizedBox(height: 25),

      SmoothPageIndicator(
        controller: controller, 
        count:3,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.orange,
        ),
        ),

    
      SizedBox(height: 25),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
    //3 button ->send + pay + bills
     

        //send button
        MyButton(
          iconImagePath: 'lib/images/money.png', 
          buttonText: 'Send',
          ),
          MyButton(
          iconImagePath: 'lib/images/pay.png', 
          buttonText: 'Pay',
          ),
          MyButton(
          iconImagePath: 'lib/images/bill.png', 
          buttonText: 'Bills',
          ),
       
      ],

    ),
    ),
         SizedBox(
              height: 25,
            ),

    //column -> stats + transactions
       Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                      iconImagePath: 'lib/images/statics.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payment and Income'),

                  //transaction
                  MyListTile(
                      iconImagePath: 'lib/images/transactions.png',
                      tileTitle: 'Transactions',
                      tileSubTitle: 'Transaction History'),
         ],
              ),
            ),
           
          ],
        ),
      ),
    );
    
  }
}