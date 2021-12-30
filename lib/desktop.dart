import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  //const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey[700],
              height: double.infinity,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login with your account',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Adderss',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          height: 40,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          height: 40,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'RRGISTER',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      //MaterialButton(onPressed: ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
