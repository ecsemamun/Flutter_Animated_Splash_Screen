import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class AfterSalesTips extends StatefulWidget {
  const AfterSalesTips({Key? key}) : super(key: key);

  @override
  State<AfterSalesTips> createState() => _AfterSalesTipsState();
}

class _AfterSalesTipsState extends State<AfterSalesTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("After Sales Tips"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "How to contact realme Support",
                content:
                    "1.If you have any question or you are not familiar with some feature of your realme product, please contact us via Email. Email :Send your queries and feedback to service.bd@realme.com，bd_derek@126.com hotline: +880 9610-555555, 09:00-18:00, SAT-THU Exclude Holidays 2.If your realme device needs repair, you can visit https://www.realme.com/bd/support. The technicians in all the service centres have done professional training to deliver high-quality services. We are also working on it to provide more convenient services.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "Learn how to get ready for repair",
                content:
                    "Follow these steps before you send your device to a realme Authorized Service Provider. If your device won't turn on or respond, finish as many steps as possible: 1.Back up your device. 2.Log out your cloud service account and remove your screen lock password. 3.Bring your sales receipt, in case your service requires proof of purchase. 4.Bring your device and accessories in which you need help.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title:
                    "How much will the repair cost",
                content:
                    "After examining your realme product, the technician will confirm the total costs for repair or replacement. In some cases, a repair might be covered by the realme warranty and there's no charge for the same. This does not include accidental damage, which is chargeable. If your realme device was damaged, your repair fee will vary, depending on the repair. realme Authorized Service Providers may set their own fees，you can also contact realme customer service staff to get assistant.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "How long will the repair take",
                content:
                    "Most of our realme Authorized Service Providers offer same-day service if you go to service center. If the spare parts ran out of stock, we would inform you immediately when it arrive. If you have to ship the device for repair in some situations, it will be returned or ready for pickup in approximately 5-7 days",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                collapsedIcon: Icon(Icons.add),
                titleBorderRadius: BorderRadius.circular(20),
                expandedIcon: Icon(Icons.minimize),
                title: "Out-of-warranty service",
                content:
                    "This warranty does not cover accidental damage nor any of the following conditions, however, paid repair services are available. 1. After the warranty period; 2. No valid proof of purchase, an exception can be granted if the customer can prove that the phone is within the warranty period; 3. No realme official warranty commitments; 4. The phone is damaged due to improper use (such as falling, squeezing, water damage, etc.); 5. Damage and malfunction due to uncontrollable external forces (such as floods, fires, earthquakes, lightning strikes and traffic accidents); 6. Failure to use and maintain the product according to the instructions that lead to damage or malfunction, such as use under extreme temperatures, use of non-realme accessories, etc.; 7. Product natural wear and tear (for example casing, buttons, display, accessories, etc.); 8. Dis-assembly, self-repair, modification, rooting and other human behavior that causes damage, rupture, deform, etc.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to deal with it when liquid damaged the phone",
                content:
                    "If the phone had liquid damage, DO NOT blow-dry the phone with a hot air hair dryer and avoid phone firmware damage caused by overheating. When dropping your phone into any form of liquid, the emergency measures can effectively reduce the probability of damage, but there is still a certain risk of water damage caused by the failure of multiple precision electronic components inside the phone. Bring your phone to the realme authorized service center for professional repairs as soon as possible. If liquid damages occurred, the service for the liquid damage isn't covered by the realme warranty.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
