import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './appcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return ChangeNotifierProvider<ApplicationColor>(
      // ignore: deprecated_member_use
      builder: (context) => ApplicationColor(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "@arizkinf",
                      style: new TextStyle(
                          color: applicationColor.color,
                          fontFamily: 'PopinsExBold',
                          fontSize: 24),
                    )),
              ),
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 4,
                  color: applicationColor.color,
                  duration: Duration(milliseconds: 5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "red",
                        style: new TextStyle(
                            color: Colors.red,
                            fontFamily: 'PopinsExBold',
                            fontSize: 20),
                      )),
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Switch(
                      value: applicationColor.isBlue,
                      onChanged: (newValue) {
                        applicationColor.isBlue = newValue;
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "blue",
                        style: new TextStyle(
                            color: Colors.blue,
                            fontFamily: 'PopinsExBold',
                            fontSize: 20),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
