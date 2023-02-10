import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class Email_US extends StatefulWidget {
  const Email_US({Key? key}) : super(key: key);

  @override
  State<Email_US> createState() => _Email_USState();
}

class _Email_USState extends State<Email_US> {
  final _key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController body = TextEditingController();


  sendEmail(String subject, String body, String recipientemail) async {
    final Email email = Email(
      body: body,
      subject: subject,
      recipients: [recipientemail],
      // cc: ['cc@example.com'],
      // bcc: ['bcc@example.com'],
      // attachmentPaths: ['/path/to/attachment.zip'],
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Complain Box Area"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("realme Complain Box Area",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Cooper Black',
                  color: Color.fromARGB(220, 255, 0, 128),
                ),
              ),
              new SizedBox(height: 15.0,),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "service.bd@realme.com",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black, width: 3,
                        ),

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.green, width: 3,
                        )

                    ),

                ),
              ),
              new SizedBox(height: 15.0,),
              TextFormField(
                controller: subject,
                decoration: InputDecoration(
                    labelText: "Enter Your Complain Subject",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black, width: 3,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.green, width: 3,
                        )
                    )
                ),
              ),
              new SizedBox(height: 15.0,),
              TextFormField(
                controller: body,
                decoration: InputDecoration(
                    labelText: "Enter Your Complain Message",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.black, width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                      color: Colors.green, width: 3,
                    )
                  )

                ),
                maxLines: 4,
              ),
              new SizedBox(height: 15.0,),
              ElevatedButton(
                  onPressed: () {
                    _key.currentState!.save();
                    print('${email.text}');
                    sendEmail(subject.text, body.text, email.text);
                  },
                  child: Text("Send Email")),
            ],
          ),
        ),
      ),
    );
  }
}
