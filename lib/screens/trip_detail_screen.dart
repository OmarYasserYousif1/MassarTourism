import 'package:flutter/material.dart';
import 'package:traveling_app/app_data.dart';

import 'booking/bookingscreen.dart';

class TripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

  final Function manageFavorite;
  final Function isFavorite;

  TripDetailScreen(this.manageFavorite, this.isFavorite);

  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        titleText,
        style: /* Theme.of(context).textTheme.headline5 */
            TextStyle(
                color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 22),
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context).settings.arguments as String;
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('${selectedTrip.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.brown,
                  child: Text(
                    "VIP Hotel: " + selectedTrip.Vhotel,
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                 Container(
                  // color: Colors.brown,
                  child: Text(
                    "|",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  // color: Colors.brown,
                  child: Text(
                    "Hotel: " + selectedTrip.hotel,
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            buildSectionTitle(context, 'الأنشطة'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.activities.length,
                itemBuilder: (ctx, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(selectedTrip.activities[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            buildSectionTitle(context, 'البرنامج اليومي'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.program.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: Text(
                          'يوم ${index + 1}',
                        ),
                      ),
                      title: Text(selectedTrip.program[index]),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "الأسعار للفرد الواحد فقط - احجز الأن        ",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            //SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 50),
                Container(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyForm()),
                      );
                    },
                    child: Text(
                      selectedTrip.Vprice + " VIP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyForm()),
                      );
                    },
                    child: Text(
                      selectedTrip.price + " عادي",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(tripId) ? Icons.star : Icons.star_border),
        onPressed: () => manageFavorite(tripId),
      ),
    );
  }
}
