import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App"),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Flutter Text Styling",
              style: TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 22
            ),),
            SizedBox(
              height: 16,
            ),
            Text("Experiment with text styles",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 13
            ),),
            SizedBox(
              height: 12,
            ),
            TextButton(onPressed: (){
              mySnackBar("You clicked the button!", context);
            }, child: Text("Click Me",
            style: TextStyle(
              color: Colors.purple
            ),)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to ",
                  style:
                  TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
                Text("Flutter!",
                  style:
                  TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),),

              ],
            )

          ],
        ),
      ),
      backgroundColor: Colors.white,

    );
  }
}

