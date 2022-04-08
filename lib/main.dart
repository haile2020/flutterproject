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
        title: const Center(child: Text('Welcome'),
        ),

        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              // color: Colors.red,
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(800)),
                border:  Border(
                  top: BorderSide(width: 2.0, color: (Colors.red)),
                  left: BorderSide(width: 2.0, color: (Colors.red)),
                  right: BorderSide(width: 2.0, color: (Colors.red)),
                  bottom: BorderSide(width: 2.0, color: (Colors.red)),
                ),
                image: DecorationImage(
                  image: AssetImage("images/small.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
              height: 20,
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },

              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login', style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'monospace',
                      fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
                  },

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
        title: const Center(child: Text('Home Page',
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
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(800)),
                border:  Border(
                  top: BorderSide(width: 4.0, color: (Colors.red)),
                  left: BorderSide(width: 4.0, color: (Colors.red)),
                  right: BorderSide(width: 4.0, color: (Colors.red)),
                  bottom: BorderSide(width: 4.0, color: (Colors.red)),
                ),
                image: DecorationImage(
                  image: AssetImage("images/small.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              height: 200,
                  child: TextButton(
                    child: const Text(
                      'CALENDAR',
                      style: TextStyle(
                        fontSize: 20,
                      fontFamily: 'monospace',
                        fontWeight: FontWeight.bold,
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
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!',
                style: TextStyle(
                  fontSize: 18,
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.bold),
                ),
              ),

            ),
            const SizedBox(height: 80,),
            BottomAppBar(
              color: Colors.blue,
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.menu,size: 40,),
                      onPressed: () {

                      },
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      tooltip: 'Home',
                      icon: const Icon(Icons.home_filled,size: 35,),
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
                      icon: const Icon(Icons.search,size: 35,),
                      onPressed: () {},
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      tooltip: 'Calendar',
                      icon: const Icon(Icons.schedule,size: 35,),
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
                      icon: const Icon(Icons.account_circle_outlined,size: 35,),
                      onPressed: () {},
                    ),

                  ],
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
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text("Cycle Calendar"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purple,
        child: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime(1990),
          lastDay: DateTime(2050),
        ),
      ),

      
    );
  }
}

