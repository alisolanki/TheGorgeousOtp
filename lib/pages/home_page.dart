import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thegorgeousotp/stores/login_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginStore>(
      builder: (_, loginStore, __) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: RaisedButton(
                onPressed: () {
                  loginStore.signOut(context);
                },
                color: Color(0xFF503E9D),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Sign Out', style: TextStyle(color: Colors.white),),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF6252A7),
                        ),
                        child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}