import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listview_assignment_2/Product.dart';

class ProductInfo extends StatelessWidget{


  var name = "Samsung S23 Ultra";
  var price = '1,20,000';
  var rating = '4.5' ;
  var discription = '';
  var Productimage;

  ProductInfo();

  ProductInfo.parameterisedConstructor(this.name,this.price,this.Productimage,this.discription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color.fromARGB(255, 222, 222, 222),
        height: double.infinity,
        width: double.infinity,

        child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: 
              ElevatedButton(
                onPressed: (){
                 Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                   shape: const RoundedRectangleBorder(
                    
                   )
                ),
                child:  const Text('<<< Get back to the Product List',style: TextStyle(color: Colors.white)),      
               ),
            ),

            Center(        
              child: Container(
                height: 500,
                width: 1200,
                margin: const EdgeInsets.all(50),
            
                decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 250, 250, 250),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 206, 201, 201),
                          spreadRadius: 3,
                          blurRadius: 5,
                        )
                      ]
                      ),

              child: Row(
              
                children: [
                Container(
                  color: const Color.fromARGB(255, 3, 30, 53),
                  width: 600,
                  child: Image.network('$Productimage'),
                ),

                Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 600,
                  child:Container(
                    margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),

                    color: const Color.fromARGB(255, 255, 255, 255),

                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                  Text('$name',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),
                  
                  Text('$rating Ratings '),
                  Container(height: 10,),

                  const Text('Special price',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.green)),
                  Text(' ₹ $price',style:  const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Container(height: 20,),

                  const Text('Discription',style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),
                  Container(height: 10,),
                  Text('   $discription'),
                  Container(height: 20,),

                  const Text('Available Offers',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),
                  Container(height: 10,),
                  const Text('   -Special PriceGet extra 25% off (price inclusive of cashback/coupon)'),
                  const Text('   -Combo OfferBuy 3 or more items save ₹110'),
                  const Text('   -Bank Offer5% Cashback on Flipkart Axis Bank Card'),
                  Container(height: 80,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      ElevatedButton(
                        onPressed: (){},
                        
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(250,40),
                            backgroundColor: Colors.orange,
                            shape: const RoundedRectangleBorder(

                            )
                          ),
                         child:  const Text('BUY NOW',style: TextStyle(color:Colors.white,fontSize:  15,fontWeight: FontWeight.w600),)                                                    
                          ),

                      Container(width: 1,),
                      ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(250,40),
                        backgroundColor: Colors.orange,
                        shape: const RoundedRectangleBorder(

                        )
                      ), child:  const Text('ADD TO CART',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w600),)
                      )
                    ],
                  )
                  ],
                  ),
                )
                )
               ],
              ),
           ),
        )
       ],
      )
      )
      );
  }
}