import 'package:flutter/material.dart';
import 'package:theme_switching_bloc/ui/preference/preference.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PreferenceScreen()));
              })
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            'Home Page',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ),
    );
  }
}
