import 'package:flutter/material.dart';

import 'keep_notes_2.dart';

class Keep_Notes extends StatefulWidget {
  const Keep_Notes({Key? key}) : super(key: key);

  @override
  State<Keep_Notes> createState() => _Keep_NotesState();
}

class _Keep_NotesState extends State<Keep_Notes> {
  int _currentActiveStep = 0;

  List<Step> stepList() => [
        Step(
            isActive: _currentActiveStep >= 0,
            state: _currentActiveStep >= 0
                ? StepState.complete
                : StepState.disabled,
            title: Text("স্টেপ ১",style: TextStyle(fontWeight: FontWeight.bold),),
            content: Center(
              child: Text(
                  "আপনার বাসা যদি কেয়ার থেকে অনেক দূরে হয় তাহলে কেয়ারে কল করে সমস্যার কথা বলুন?",style: TextStyle(fontWeight: FontWeight.bold),),
            )),
        Step(
            isActive: _currentActiveStep >= 1,
            title: Text("স্টেপ ২"),
            state: _currentActiveStep >= 1
                ? StepState.complete
                : StepState.disabled,
            content: Center(
              child: Text(
                  "সার্ভিসিং সেন্টারের নাস্বারের জন্য সাভির্স সেন্টার লিখে গুগলে সার্চ করুন যেমন realme Service Center Jessore",style: TextStyle(fontWeight: FontWeight.bold),),
            )),
        Step(
            isActive: _currentActiveStep >= 2,
            title: Text("স্টেপ ৩",style: TextStyle(fontWeight: FontWeight.bold),),
            state: _currentActiveStep >= 2
                ? StepState.complete
                : StepState.disabled,
            content: Center(
              child: Text("মোবাইলের ফুল বক্স ও ওয়ারেন্টি কার্ড নিয়েছেন তো?",style: TextStyle(fontWeight: FontWeight.bold),),
            )),
        Step(
            isActive: _currentActiveStep >= 3,
            state: _currentActiveStep >= 3
                ? StepState.complete
                : StepState.disabled,
            title: Text("স্টেপ ৪",style: TextStyle(fontWeight: FontWeight.bold),),
            content: Center(
              child: Text(
                  "মাঝে মাঝে সমস্যা দেখা দিলে তার একটা স্কিনসর্ট অথবা স্কিন রেকডিং করে রাখুন ?",style: TextStyle(fontWeight: FontWeight.bold),),
            )),
        Step(
            isActive: _currentActiveStep >= 4,
            state: _currentActiveStep >= 4
                ? StepState.complete
                : StepState.disabled,
            title: Text("স্টেপ ৫",style: TextStyle(fontWeight: FontWeight.bold),),
            content: Center(
              child: Text("মোবাইলের ডাটা ব্যাকআপ কি করেছেন?",style: TextStyle(fontWeight: FontWeight.bold),),
            )),
        Step(
            isActive: _currentActiveStep >= 5,
            state: _currentActiveStep >= 5
                ? StepState.complete
                : StepState.disabled,
            title: Text("স্টেপ ৬",style: TextStyle(fontWeight: FontWeight.bold),),
            content: Center(
              child: Text(
                  "কেয়ার প্রতিনিধিণদের একটা নাম্বার সহ ব্যাকআপ নাম্বার দিয়ে অবহিত করুন?",style: TextStyle(fontWeight: FontWeight.bold),),
            )),
      ];

  Widget controlsBuilder(context, details) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text(
              "হ্যা",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          width: 30,
        ),
        OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text(
              "না",
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("কাস্টমার সাভির্স চেকলিস্ট"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              currentStep: _currentActiveStep,
              type: StepperType.vertical,
              controlsBuilder: controlsBuilder,
              steps: stepList(),
              onStepContinue: () {
                if (_currentActiveStep < (stepList().length - 1)) {
                  setState(() {
                    _currentActiveStep += 1;
                  });
                }
              },
              onStepCancel: () {
                if (_currentActiveStep == 0) {
                  return;
                }
                setState(() {
                  _currentActiveStep -= 1;
                });
              },
              onStepTapped: (int index) {
                setState(() {
                  _currentActiveStep = index;
                });
              },
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Keep_Notes_Two()));
              }, child: Text("আপনার সমস্যা নোট করতে বাটনে ক্লিক করুন",style: TextStyle(fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
