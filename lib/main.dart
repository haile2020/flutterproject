import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:table_calendar/table_calendar.dart';
import "package:syncfusion_flutter_calendar/calendar.dart";
import 'package:untitled/homepage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flare_flutter/flare_actor.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home:  SignInPage(),
  ));
}

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  get passwordController => null;

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text('Welcome',
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
              fontFamily: 'monospace',
              fontWeight: FontWeight.bold),
        ),
        ),

        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 50),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(800)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent,
                    spreadRadius: 40,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
                  border:  Border(
                  top: BorderSide(width: 25.0, color: (Colors.blue)),
                  left: BorderSide(width: 25.0, color: (Colors.blue)),
                  right: BorderSide(width: 25.0, color: (Colors.blue)),
                  bottom: BorderSide(width: 25.0, color: (Colors.blue)),
                ),
                image: DecorationImage(
                  image: AssetImage("images/small.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

            ),
            SizedBox(height: 10,),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'WELCOME WARO APP',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.bold),
                ),
              color: Colors.black,
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: EdgeInsets.only(left: 10,right: 10),
              color: Colors.white,

              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),

            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: EdgeInsets.only(left: 10,right: 10),

              color: Colors.white,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',

                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },

              child: const Text('Forgot Password',),
            ),
            Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(800)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent,
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  border:  Border(
                    top: BorderSide(width: 15.0, color: (Colors.blue)),
                    left: BorderSide(width: 15.0, color: (Colors.blue)),
                    right: BorderSide(width: 15.0, color: (Colors.blue)),
                    bottom: BorderSide(width: 15.0, color: (Colors.blue)),
                  ),
                ),
                child: ElevatedButton(

                  child: const Text('LOGIN', style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontFamily: 'monospace',
                      fontWeight: FontWeight.bold),
                  )
                  ,
                  onPressed: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    // Background color
                  ),


                )
            ),

            Row(
              children: <Widget>[
                const Text('Does not have account?',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontFamily: 'monospace',
                      fontWeight: FontWeight.bold),),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingUp'),
      ),
      body: Center(
        child: ListView(
          children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your First Name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Last Name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Passward',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Email',
                  ),
                ),
              ),
            ),
             Center(
               child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
            ),
             ),
          ],
        ),

          ],
        ),

      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Center(child: Text('Home',
          style: TextStyle(
            fontFamily: 'monospace',
            fontWeight: FontWeight.bold
          ),),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Center(

        child: ListView(
          children: [
            const SizedBox(height: 20,),
            Container(
              // color: Colors.red,
              margin: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 50),
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(800)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent,
                    spreadRadius: 20,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                border:  Border(
                  top: BorderSide(width: 25.0, color: (Colors.pinkAccent)),
                  left: BorderSide(width: 25.0, color: (Colors.pinkAccent)),
                  right: BorderSide(width: 25.0, color: (Colors.pinkAccent)),
                  bottom: BorderSide(width: 25.0, color: (Colors.pinkAccent)),
                ),
                image: DecorationImage(
                  image: AssetImage("images/small.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

            ),
            const SizedBox(height: 40,),
            Container(
              height: 145,
              margin: EdgeInsets.only(left: 50,right: 50,top: 0,bottom: 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(800)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent,
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                border:  Border(
                  top: BorderSide(width: 25.0, color: (Colors.blue)),
                  left: BorderSide(width: 25.0, color: (Colors.blue)),
                  right: BorderSide(width: 25.0, color: (Colors.blue)),
                  bottom: BorderSide(width: 25.0, color: (Colors.blue)),
                ),
                // image: DecorationImage(
                //   image: AssetImage("images/small.jpg"),
                //   fit: BoxFit.cover,
                // ),
              ),
                  child: TextButton(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(800)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pinkAccent,
                            spreadRadius: 10,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border:  Border(
                          top: BorderSide(width: 10.0, color: (Colors.lightGreenAccent)),
                          left: BorderSide(width: 10.0, color: (Colors.lightGreenAccent)),
                          right: BorderSide(width: 10.0, color: (Colors.lightGreenAccent)),
                          bottom: BorderSide(width: 10.0, color: (Colors.lightGreenAccent)),
                        ),
                        // image: DecorationImage(
                        //   image: AssetImage("images/small.jpg"),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                      child: const Text(
                        'CALENDAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        fontFamily: 'monospace',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Calnder()),
                      );
                    },

                ),
            ),
            const SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 50,right: 50,bottom: 0,top: 18),
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('BACK',
                style: TextStyle(
                  fontSize: 18,
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent, // Background color
                ),
              ),

            ),
            const SizedBox(height: 10,),
            Container(
              color: Colors.transparent,
              margin: EdgeInsets.only(left: 5,top: 30,right: 5,bottom: 8),
              padding: EdgeInsets.all(10),

              child: BottomAppBar(
                color: Colors.pinkAccent,
                child: IconTheme(
                  data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        tooltip: 'Home',
                        icon: const Icon(Icons.home_filled,size: 30,),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                      SizedBox(width: 30,),
                      IconButton(
                        tooltip: 'Search',
                        icon: const Icon(Icons.search,size: 30,),
                        onPressed: () {},
                      ),
                      SizedBox(width: 30,),
                      IconButton(
                        tooltip: 'Calendar',
                        icon: const Icon(Icons.schedule,size: 30,),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Calnder()),
                          );
                        },
                      ),
                      SizedBox(width: 30,),
                      IconButton(
                        tooltip: 'Account',
                        icon: const Icon(Icons.account_circle_outlined,size: 30,),
                        onPressed: () {},
                      ),
                      SizedBox(width: 30,),
                      IconButton(
                        tooltip: 'setting',
                        icon: const Icon(Icons.settings,size: 30,),
                        onPressed: () {

                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],

        ),

      ),

    );
  }
}
//
//
//

class Calnder extends StatelessWidget {
  const Calnder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text("Cycle Calendar"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            color: Colors.purple,
            child: TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 50,right: 50,bottom: 5,top: 230),
            height: 60,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('BACK',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pinkAccent, // Background color
              ),
            ),

          ),
          Container(
            color: Colors.transparent,
            margin: EdgeInsets.only(left: 5,top: 20,right: 5,bottom: 5),
            padding: EdgeInsets.all(10),
            child: BottomAppBar(
              color: Colors.pinkAccent,
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: 'Home',
                      icon: const Icon(Icons.home_filled,size: 30,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      tooltip: 'Search',
                      icon: const Icon(Icons.search,size: 30,),
                      onPressed: () {},
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      tooltip: 'Calendar',
                      icon: const Icon(Icons.schedule,size: 30,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Calnder()),
                        );
                      },
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      tooltip: 'Account',
                      icon: const Icon(Icons.account_circle_outlined,size: 30,),
                      onPressed: () {},
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      tooltip: 'setting',
                      icon: const Icon(Icons.settings,size: 30,),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],

      ),


      
    );
  }
}

