import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class PowerChargingBattery extends StatefulWidget {
  const PowerChargingBattery({Key? key}) : super(key: key);

  @override
  State<PowerChargingBattery> createState() => _PowerChargingBatteryState();
}

class _PowerChargingBatteryState extends State<PowerChargingBattery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Frequenty Ask Question"),
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
                title: "About realme smartphone battery",
                content: "There is no special requirement for the first time charge. The battery is designed to have a good performance in a wide range of ambient temperatures, with 16° C to 25° C （61° F to 77° F）as the ideal comfort zone.Its maximum lifespan cannot be reached with an unoriginal charger or under extreme temperature.Charging at temperatures above 45 °C will degrade battery performance, resulting in slower charging.When using your device in a very cold environment, you may notice a decrease in battery life, but this condition is temporary. Once the battery’s temperature returns to its normal operating range, its performance will return to normal as well.To avoid battery damage, realme smartphone will automatically stop charging at extreme ambient temperatures, and alerts you “Temperature is too low/high, the battery cannot be charged”, “Temperature is too low/high, the battery cannot be fully charged”.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "How to back up your realme smartphone",
                content: "Go to [Settings] > [Additional Settings] > [Back up and reset] > [Create New Backup]; Select the data to be backed up and get started,this backup will be stored in a date-named folder on phone storage. [DCIM] folder contains your photos and screenshots. Pictures downloaded from APPs are saved in [Pictures/Photo]. [Movies], [Music] and [Pictures] folders contain your videos, audio, and pictures respectively.Connect your phone to your computer, copy what you need to your computer. Or via Clone Phone, you can quickly transfer all data from one smartphone to another one phone as data backup. * Settings and paths might differ from those of your phone. * After the backup is complete, copy and transfer your data again as an alternate backup to prevent data loss or damage. * To support the whole backup process to complete, make sure the battery level of realme smartphone is over 50% and don’t turn off or restart your phone during the backup process. * Backups will be erased when you flash the phone, wipe data or reset realme phone to factory settings.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Learn how to do if phone has water or other liquid damage accidentally",
                content: "Take your phone out of the liquid immediately and turn off the phone at once and remove both the SIM and SD card.Use a tissue or soft cloth to thoroughly adsorb water stains or liquids and gently shake the phone in the opposite direction of liquid inflow so that the liquid can flow out. Blow-dry the phone with a fan or cold air hair dryer, then take your phone, warranty card and proof of purchase to a nearby realme Customer Center for repairs at once.DO NOT blow-dry the phone with a hot air hair dryer to avoid phone firmware damage caused by overheating. Notice Emergency measures can effectively reduce the probability of damage, but there is still a certain risk of water damage caused by the failure of multiple precision electronic components inside the phone. Therefore, send your phone to Service Center for professional repairs as soon as possible.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "Minimize Screen Damage",
                content: "We recommend the original phone case and screen protector to provide double protect to your realme phone. Original phone cases are produced with molds built with realme phone, and tested with realme phone as well. All this makes sure that every hole site of key and port minutely. realme phone case can provide strong protection to your phone.After testing for thousands of times,evidence shows that original phone case can minimize the damage caused by fall, shock, liquid invasion, dustinvasion, etc.. realme phone is also equipped with an original HD clear screen protector. It perfectly fits the angles and radians of the screen without blocking the camera or the light sensor,ensures high-definition and sensitiveness of screen. Besides that,it can also minimize the probability of screen scratch or damage in case the phone falls",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                collapsedIcon: Icon(Icons.add),
                titleBorderRadius: BorderRadius.circular(20),
                expandedIcon: Icon(Icons.minimize),
                title: "How to insert and remove your SIM card",
                content: "Insert the card needle into the hole outside the card tray to pop it open. Pull out the card tray and place SIM card on it as per instructions. Insert horizontally to avoid tray damage or SIM card loose. Notice *If SIM card size doesn’t fit the slot, change your SIM card with your telecom operator. *Do not cut your SIM card on your own, otherwise your card may damage. Make sure the edge of SIM card is smooth. *Do not install or remove SIM card when phone is on.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to lock applications in the background",
                content: "Press the Menu button. Slide down the application interface until you see a lock icon at the left upper corner.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to insert and remove your SIM card",
                content: "Insert the card needle into the hole outside the card tray to pop it open. Pull out the card tray and place SIM card on it as per instructions. Insert horizontally to avoid tray damage or SIM card loose. Notice *If SIM card size doesn’t fit the slot, change your SIM card with your telecom operator. *Do not cut your SIM card on your own, otherwise your card may damage. Make sure the edge of SIM card is smooth. *Do not install or remove SIM card when phone is on.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If you forgot your lockscreen passcode",
                content: "For security and privacy purpose, Google has removed [Forget password] function to keep your phone under secure and private protection. Unless you made a backup before you forgot your passcode, there isn't a way to save your device's data. You'll need to take your phone, proof of purchase and warranty card to visit realme Service Center to flash your device, which deletes all of your data and settings.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Clean the dirt",
                content: "During daily use, your phone's slit, receiver, speaker, headphone jack and USB interface might be contaminatedby dirt and impurities, which will cause poor firmware contact, or block the receiver and speaker; or even breed bacteria and affect your health. So daily cleaning is necessary.Dip a lint-free cloth, medical cotton sticker or makeup cotton in distilled water or low concentration alcohol, then wipe the surface of the phone. When cleaning phone slits and holes, you can clean the dust with a dry toothbrush or a toothpick, or blow the dust with a cold air hair dryer. In addition, to absorb the dust with a low power handheld mini vacuum cleaner is also feasible.If impurities cannot be cleaned up, contact realme Service Center for professional assistances. * NEVER blow dust with a hot air hair dryer to prevent damage caused by overheating. * DO NOT remove the battery cover when cleaning dust to prevent phone electronic components damage.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to take a screenshot",
                content: "Press and hold the Power and Volume Down buttons: Your phone will take a screenshot for the current page. Press and hold the Power and Volume Up buttons about 2 seconds to capture a long screenshot.Click [Page-down] to scroll to the next page, continue to click Page-down until you want to stop capturing, then click [Save] to generate a long screenshot.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Reset to factory settings",
                content: "You can do [Factory data reset] if your phone becomes lagging, phone has too much junk files and caches, or has issues with system or applications. By doing [Factory data reset], all data in your phone will be permanently erased, so you need to make a backup and transfer that to your computer or SD card to prevent data loss. Go to [Settings] > [Additional settings] > [Back up and reset] > [Factory data reset] to reset your Phone. In [Factory data reset], Phone has four options. Choose one according to your needs * Any reset option cannot be revoked once it is operated.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "About Recovery Mode in realme phone",
                content: "When the phone stops functioning properly in certain cases (such as fails to restart or switch off, update the system, wipe data ), you can fix the issues under Recovery Mode.After your phone turns off, press and hold both the Power and Volume Down buttons, until the phone enters Recovery Mode.You can download the firmware to your phone storage, then click [Install from storage device] > [From phone storage], find the firmware you’ve downloaded and click it to start updating. * Back up your data before updating the system. * Plug your phone into power or keep the battery level over 40%. * System update takes 3-5mins. Do not force power off your phone during the update.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "How to force restart your phone",
                content: "If your phone screen doesn’t respond when you touch it or frozen while using some applications etc.,you can force restart your phone to solve A force restart won't erase the content on your phone except those are broken or invalid. Press and hold both the Power and Volume Up buttons for at least eight seconds, until the phone is turned on. If you cannot force restart your phone, plug in your phone with the original charger and let it charge for up to 30 minutes, then try again.If the problem persists, You need totake your phone to a nearby realme Service Center for repairs.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Manage app permissions on your smartphone",
                content: "Every application may require certain data or access to your phone’s other features (Location Service, Photos, Contacts, etc.). When you meet some issues, for example, facebook cannot take photos,you need to check if you have declined camera permission. Go to [Security Center] > [Privacy permissions] > [App permission management]. Click “Applications”, select an app and choose to accept, decline or limit call, SMS, device and privacy related permissions.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Transfer data with Clone Phone",
                content: "Clone Phone can safely and rapidly transfer all the data including Personal Data (Contacts, Messages, etc.), System Data , Applications (Applications and Application Data) and Files like Audios, Videos, Photos and Documents. After both of devices have installed Clone Phone,On your new phone, go to [Tools] > [Clone Phone], select “This is the new phone”. On you old phone, go to [Clone Phone] and select “This is the old phone” and scan the QR Code generated by the new phone to start cloning. During the process, Keep your device close to the other to ensure the network connection.",
              ),

            ],
          ),
        ),
      ),

    );
  }
}

