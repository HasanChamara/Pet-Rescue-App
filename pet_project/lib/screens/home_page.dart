import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            HomeCard(
              title: 'Report Stray',
              icon: Icons.pets,
              onTap: () {
                // Navigate to the "Report Stray" page
              },
            ),
            HomeCard(
              title: 'Lost & Found',
              icon: Icons.search,
              onTap: () {
                // Navigate to the "Lost & Found" page
              },
            ),
            HomeCard(
              title: 'Vet Clinic',
              icon: Icons.local_hospital,
              onTap: () {
                // Navigate to the "Vet Clinic" page
              },
            ),
            HomeCard(
              title: 'Volunteer',
              icon: Icons.volunteer_activism,
              onTap: () {
                // Navigate to the "Volunteer" page
              },
            ),
            HomeCard(
              title: 'Foster & Shelter',
              icon: Icons.home,
              onTap: () {
                // Navigate to the "Foster & Shelter" page
              },
            ),
            HomeCard(
              title: 'Donation',
              icon: Icons.favorite,
              onTap: () {
                // Navigate to the "Donation" page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  const HomeCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
