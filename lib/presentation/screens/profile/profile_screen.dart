import 'package:flutter/material.dart';
import 'package:tech_exercise/presentation/components/custom_drawer.dart';
import 'package:tech_exercise/utils/infoRow.dart';
import 'package:tech_exercise/utils/interestChips.dart';
import 'package:tech_exercise/utils/kudosIcons.dart';
import 'package:tech_exercise/utils/pickUpGameCard.dart';
import 'package:tech_exercise/utils/skillBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showAllInterests = false;

  final List<Widget> interests = [
    interestChip('🎹', 'Playing piano / keyboard'),
    interestChip('🧩', 'LEGOs'),
    interestChip('📖', 'Journaling'),
    interestChip('🥋', 'Martial arts'),
    interestChip('🏄‍♂️', 'Surfing'),
    interestChip('💃', 'Salsa dancing'),
    interestChip('⚽', 'Football'),
    interestChip('🎨', 'Painting'),
    // Add more if needed
  ];

  @override
  Widget build(BuildContext context) {
    int maxChips = 6; // 3 columns x 3 rows
    bool needsSeeMore = interests.length > maxChips;

    List<Widget> chipsToShow = showAllInterests || !needsSeeMore
        ? interests
        : interests.sublist(0, maxChips);

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
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/zlatan.jpg'),
                      ),
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
                      color: const Color(0xFF1A1A1A),
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
                              KudosIcons(
                                colors: [Colors.green, Colors.yellow],
                                icons: [Icons.handshake, Icons.emoji_events],
                              ),
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
                  const SizedBox(height: 24),
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
                  infoRow(Icons.location_on, [
                    TextSpan(
                      text: 'Lived in ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Buenos Aires, Frankfurt, Oslo, Madrid',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.translate_outlined, [
                    TextSpan(
                      text: 'Speaks ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Swedish, English, Spanish',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.shield_outlined, [
                    TextSpan(
                      text: 'Supports ',
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                    TextSpan(
                      text: 'Boca Juniors, FC Barcelona, Sweeden',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                  infoRow(Icons.directions_run_outlined, [
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
                  Divider(color: Colors.white54, thickness: 1),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Interested in',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 8,
                        runSpacing: 5,
                        children: [
                          ...chipsToShow,
                          if (needsSeeMore && !showAllInterests)
                            Text(
                              '+${interests.length - maxChips}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                height: 3,
                              ),
                            ),
                        ],
                      ),
                      if (needsSeeMore && !showAllInterests)
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.yellow[700],
                            ),
                            onPressed: () {
                              setState(() {
                                showAllInterests = true;
                              });
                            },
                            child: const Text('See more'),
                          ),
                        ),
                      if (showAllInterests && needsSeeMore)
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.yellow[700],
                            ),
                            onPressed: () {
                              setState(() {
                                showAllInterests = false;
                              });
                            },
                            child: const Text(
                              'Show less',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white54, thickness: 1),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Football skills',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 12),
                  skillBar('Technical', 4, 5),
                  const SizedBox(height: 8),
                  skillBar('Fitness', 5, 5),
                  const SizedBox(height: 8),
                  skillBar('Tactical', 1, 5),
                  const SizedBox(height: 28),
                  Divider(color: Colors.white54, thickness: 1),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Upcoming pick-up games',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Today, Tue 17 January, 2024',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 16),
                  PickupGameCard(
                    time: '10:00',
                    place: 'Barceloneta',
                    status: 'Full',
                    statusBorderColor: Colors.red,
                  ),
                  PickupGameCard(
                    time: '12:00',
                    place: 'Camp Nou',
                    status: 'Awaiting',
                    statusBorderColor: Colors.yellow[700]!,
                  ),
                  PickupGameCard(
                    time: '14:00',
                    place: 'Madrid',
                    status: 'Open',
                    statusBorderColor: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
