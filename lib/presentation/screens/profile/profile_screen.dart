import 'package:flutter/material.dart';
import 'package:tech_exercise/presentation/components/custom_drawer.dart';
import 'package:tech_exercise/utils/infoRow.dart';
import 'package:tech_exercise/utils/interestChips.dart';
import 'package:tech_exercise/utils/kudosIcons.dart';
import 'package:tech_exercise/utils/skillBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: customDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image section OUTSIDE the padding
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/zlatan.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            // Everything else INSIDE the padding
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Zlatan Ibrahimovic',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '@ZlatanIbrahimovic',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '🇸🇪 24 yo ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        '⚽ MED',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        '1000 games',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.message),
                      label: const Text('Message'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Living life one goal at a time. Always ready for a match!",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 21, 21, 21),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 60, // Enough space for overlapping icons
                          height: 28,
                          child: Stack(
                            clipBehavior: Clip.none, // Allow overflow
                            children: [
                              KudosIcons(colors: [Colors.green, Colors.yellow]),
                            ],
                          ),
                        ),
                        const Text(
                          "7 kudos received",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  infoRow(Icons.work_outline, [
                    TextSpan(
                      text: 'Event Planner',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    TextSpan(
                      text: ' at ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'CeleBreak',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.location_on_outlined, [
                    TextSpan(
                      text: 'Lived in ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Buenos Aires, Frankfurt, Oslo, Madrid',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.language, [
                    TextSpan(
                      text: 'Speaks ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Swedish, English, Spanish',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.sports_soccer, [
                    TextSpan(
                      text: 'Supports ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Boca Juniors, FC Barcelona, Sweeden',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.star, [
                    TextSpan(
                      text: 'Admires ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Patrick Vieira, Sergio Busquets, Lionel Messi',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  const SizedBox(height: 24),
                  const Text(
                    'Interested in',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      interestChip(Icons.piano, 'Playing piano / keyboard'),
                      interestChip(Icons.extension, 'LEGOs'),
                      interestChip(Icons.menu_book, 'Journaling'),
                      interestChip(Icons.sports_martial_arts, 'Martial arts'),
                      interestChip(Icons.surfing, 'Surfing'),
                      interestChip(Icons.directions_run, 'Salsa dancing'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Football skills',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  skillBar('Technical', 4, 5),
                  const SizedBox(height: 8),
                  skillBar('Fitness', 5, 5),
                  const SizedBox(height: 8),
                  skillBar('Tactical', 1, 5),
                  const SizedBox(height: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
