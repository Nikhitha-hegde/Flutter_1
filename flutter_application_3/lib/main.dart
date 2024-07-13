import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Contact is starred");
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.asset(
                      '../images/aboutimg.png'),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Nikhitha",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Adding Profile action items
                      buildCallButton(),
                      buildTextButton(),
                      buildVideoCallButton(),
                      buildPayButton(),
                      buildDirectionsButton(),
                      buildEmailButton(),
                    ],
                  ),
                ),
                //Divider to separate action items section
                Divider(
                  color: Colors.grey,
                ),

                //Adding Phone numbers items
                mobilePhoneListTile(),
                otherPhoneListTile(),

                //Divider to separate out phone numbers section
                Divider(
                  color: Colors.grey,
                ),

                //NEW CODE: Email address item
                emailListTile(),

                //NEW CODE: Divider to separate physical address
                Divider(
                  color: Colors.grey,
                ),

                //NEW CODE: Contact's home address item
                addressListTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Adding "Call" action item
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.deepOrange,
          ),
          onPressed: () {
            print("Call is pressed");
          },
        ),
        Text("Call"),
      ],
    );
  }

  //Adding "Text" action item
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.deepOrange,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

  //Adding "Video" action item
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.deepOrange,
          ),
          onPressed: () {},
        ),
        Text("Video"),
      ],
    );
  }

  //Adding "Email" action item
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
            color: Colors.deepOrange,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  //Adding "Directions" action item
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
            color: Colors.deepOrange,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

  //Adding "Pay" action item
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.attach_money,
            color: Colors.deepOrange,
          ),
          onPressed: () {},
        ),
        Text("Pay"),
      ],
    );
  }

  //Adding "Mobile Phone Number" item
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text("9901938381"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.deepOrange,
        onPressed: () {},
      ),
    );
  }

  //Adding "Other Phone Number" item
  Widget otherPhoneListTile() {
    return ListTile(
      leading: Text(""),
      title: Text("9845874999"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.deepOrange,
        onPressed: () {},
      ),
    );
  }

  //NEW CODE: Adding "Email Address" item
  Widget emailListTile() {
    return ListTile(
      leading: Icon(Icons.email),
      title: Text("nikhitha.hegde24@gmail.com"),
      subtitle: Text("work"),
      trailing: IconButton(
        icon: Icon(Icons.email),
        color: Colors.deepOrange,
        onPressed: () {},
      ),
    );
  }

  //NEW CODE: Adding Contact's home address
  Widget addressListTile() {
    return ListTile(
      leading: Icon(Icons.location_on),
      title: Text("Bengaluru"),
      subtitle: Text("home"),
      trailing: IconButton(
        icon: Icon(Icons.directions),
        color: Colors.deepOrange,
        onPressed: () {},
      ),
    );
  }
}


