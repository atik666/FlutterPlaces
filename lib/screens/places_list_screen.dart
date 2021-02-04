import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './add_place_screen.dart';
import '../Providers/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<GreatPlaces>(
        builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
            ? ch
            : ListView.builder(
                itemBuilder: (ctx, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(greatPlaces.items[i].image),
                  ),
                  title: Text(greatPlaces.items[i].title),
                  onTap: (){
                    //....
                  },
                ),
                itemCount: greatPlaces.items.length,
              ),
        child: Center(
          child: const Text('Got No places yet, start adding some!'),
        ),
      ),
    );
  }
}
