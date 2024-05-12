import 'package:flutter/material.dart';
import 'package:listview_assignment_2/Product_Info.dart';

class Product extends StatelessWidget{

  var namecontroller = TextEditingController();
  var pricecontroller = TextEditingController();
  var imageController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {

    
    var ProductName   = ['Apple iPhone 15','Samsung LED TV','Dell Inspiron 5507 ','Puma`s Sneakers ',
                        'Samsung S23 Ultra ','Dell Inspiron 9999 ','Boat Speaker 150W ','Boat Headset 60 W'];

    var ProductPrice  = ['1,50,000','59,500','65,000','6,500','45,000','95,000','15,000','7,000'];

    var ProductDiscription =   ['RAM-4GB | ROM-128GB | Battery-4500mAh',
                               'Size-32inch | Resolution-1080px | Opoerating system - Google tV',
                               'Ram-8GB | ROM-1TB | intel-i5 | Generation-11',
                               'Size-9 | Color-Black ',
                               'RAM-4GB | ROM-128GB | Battery-4500mAh',
                               'Ram-12GB | ROM-2TB | intel-i7 | Generation-10',
                               'Watt-150W | Battery-6500mAh | Bluetooth-3.0',
                               'color-Black | 1 year warranty | watt-60W'];

    var ProductImage = ['https://media.istockphoto.com/id/1364620309/photo/iphone-13-pro.jpg?s=612x612&w=0&k=20&c=2h5Q46wh-eRyPwh4KKnJhCKFWqcd2ltgv9tdaULDdbc=',
                        'https://media.istockphoto.com/id/483551726/photo/samsung-smart-tv-logo.jpg?s=612x612&w=0&k=20&c=Jax2x3eNo1VgA2SPZSPinCU66J9BGG5WAQrMFcYnY1Q=',
                        'https://media.istockphoto.com/id/1362775618/photo/modern-new-office-black-laptop-on-white-background-front-view.jpg?s=612x612&w=0&k=20&c=6v6kxEEi8cfzkINBiFrSfoFQMv_0LqaLAfSKdwRP8Z0=',
                        'https://media.istockphoto.com/id/471594859/photo/blue-puma-sneaker.jpg?s=612x612&w=0&k=20&c=1DarBd_iHPFGqM4t6LdIbvmeWgZ8rKCaSQGpVXYeCTI=',
                        'https://media.istockphoto.com/id/1578456313/photo/samsung-s23-ultra-mobile-phone-positioned-on-brown-leather-surface-selective-focus.jpg?s=612x612&w=0&k=20&c=4qYJYO4ie7xTRjNL7OV3Mok0mAH1qyHjo61DI-9wTu8=',
                        'https://media.istockphoto.com/id/1362775618/photo/modern-new-office-black-laptop-on-white-background-front-view.jpg?s=612x612&w=0&k=20&c=6v6kxEEi8cfzkINBiFrSfoFQMv_0LqaLAfSKdwRP8Z0=',
                        'https://images.pexels.com/photos/2651794/pexels-photo-2651794.jpeg?auto=compress&cs=tinysrgb&w=600',
                        'https://images.pexels.com/photos/1649771/pexels-photo-1649771.jpeg?auto=compress&cs=tinysrgb&w=600',];

   return Scaffold(

    appBar: AppBar(

       toolbarHeight: 100,
       shadowColor: const Color.fromARGB(255, 0, 0, 0),
       leading: Container(
        margin: EdgeInsets.fromLTRB(0,20,0,20),
        child:Image.network('https://play-lh.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON'),
       ),
       leadingWidth: 165,
       
      title: const Text(" WELCOME TO FLIPKART ",style: TextStyle(color: Colors.yellow,fontSize: 30,fontWeight: FontWeight.w600),),
      
      backgroundColor: const Color.fromARGB(255, 1, 141, 255),

      actions: [
        IconButton(onPressed: (){},icon: const Icon(Icons.person,color:Colors.yellow,size: 35,)),
        Container(width: 20,),
        IconButton(onPressed: (){},icon: const Icon(Icons.notification_add,color:Colors.yellow,size: 35,)),
        Container(width: 20,),
        IconButton(onPressed: (){},icon: const Icon(Icons.favorite,color:Colors.yellow,size: 35,)),
        Container(width: 20,),
        IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.logout,color:Colors.yellow,size: 35,)),
        Container(width: 25,),
        
      ], 
      bottom:  PreferredSize(preferredSize: Size.fromHeight(20),child: 
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap:() {},
              child:Text('Electronics',style: TextStyle(color: Colors.white),)
            ),
            InkWell(
               onTap:() {},
              child:Text('TVs & Appliances',style: TextStyle(color: Colors.white),)
            ),
            InkWell(
               onTap:() {},
              child:Text('Dresses',style: TextStyle(color: Colors.white),)
            ),
            InkWell(
               onTap:() {},
              child:Text('Baby & Kids',style: TextStyle(color: Colors.white),)
            ),
            InkWell(
               onTap:() {},
              child:Text('Sports, Books & More',style: TextStyle(color: Colors.white),)
            ),
            InkWell(
               onTap:() {},
              child:Text('Home & Furniture',style: TextStyle(color: Colors.white),)
            )
          ],
        
        ),
      )),
    ),

         body: Expanded(child: ListView.separated(itemBuilder: (context, index) {
          
          return ListTile(
            
            leading: Container(
                width: 100,
                child: Image.network(ProductImage[index].toString()),
              ),
  
            title: Text(ProductName[index].toString(),style: const TextStyle(fontSize: 20),),

            subtitle: Text(' ₹ '+ProductPrice[index].toString(),style: const TextStyle(fontSize: 15),),

            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                 ProductInfo.parameterisedConstructor(ProductName[index].toString(),
                                                      ProductPrice[index].toString(),
                                                      ProductImage[index].toString(),
                                                      ProductDiscription[index].toString()
                                                       )
                          )
                          );                       
            },//ontap
          );
        },

        itemCount: ProductName.length,
        separatorBuilder: (context, index) {
          return const Divider(height: 50,thickness: 4,);
        },
        ),
      ),
    );
  }  
}