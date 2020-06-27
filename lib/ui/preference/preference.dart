import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switching_bloc/ui/global/theme/app_themes.dart';
import 'package:theme_switching_bloc/ui/global/theme/bloc/theme.dart';

class PreferenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preference'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(15.0),
          itemCount: AppTheme.values.length,
          itemExtent: 60,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme].primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: appThemeData[itemAppTheme].textTheme.bodyText1,
                ),
                onTap: () {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ThemeChanged(theme: itemAppTheme));
                },
              ),
            );
          }),
    );
  }
}
