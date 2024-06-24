import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Text.dart';


class CourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 70.5),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFF512E7E), Color(0xFFA073DA)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Course Name',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFF9E5), // Light cream background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lock,
                          color: Colors.grey[300], size: 40), // Lock icon
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upgrade and unlock the',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'full course',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Red background color for the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text('Upgrade', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 100,
              margin: EdgeInsets.all(10),

              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.grey, // Light cream background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' WhatsApp ലെ സഹായത്തിനായി',
                        style: TextStyle(
                          fontSize: 16,),
                      ),
                      Text(
                        '8606017527',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Red background color for the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                    ),
                    child: Text('WhatsApp', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),



            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: LessonsList(),
            ),
          ],
        ),
      ),
    );
  }
}

class LessonsList extends StatelessWidget {
  final lessons = [
    {
      'title': 'Day 3 - Lesson 1',
      'subtitle': 'All About DID',
      'time': '10.3 min',
      'color': Colors.purple,
      'videoUrl': 'https://youtu.be/HUAAYwtusLI'
    },
    {
      'title': 'Day 3 - Lesson 2',
      'subtitle': 'All About DID',
      'time': '5.3 min',
      'color': Colors.pink,
      'videoUrl': 'https://youtu.be/v35ANKH5TaM?si=FY8tWJbd427n2RNC' // Example URL for lesson 2
    },
    {
      'title': 'Day 3 - Lesson 3',
      'subtitle': 'All About DID',
      'time': '10.3 min',
      'color': Colors.orange,
      'videoUrl': 'https://youtu.be/2H-TmLkXiNI?si=csKsuzHXvCGCKZXl' // Example URL for lesson 3
    },
    {
      'title': 'Day 3 - Lesson 4',
      'subtitle': 'All About DID',
      'time': '10.3 min',
      'color': Colors.blue,
      'videoUrl': 'https://youtu.be/2H-TmLkXiNI?si=csKsuzHXvCGCKZXl' // Example URL for lesson 4
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return LessonCard(
          title: lesson['title'] as String,
          subtitle: lesson['subtitle'] as String,
          time: lesson['time'] as String,
          color: lesson['color'] as Color,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoScreen(
                  videoUrl: lesson['videoUrl'] as String,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class LessonCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final Color color;
  final VoidCallback onTap;

  LessonCard({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.1),
              child: Icon(Icons.book, color: color),
              radius: 30,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: color)),
                  Text(subtitle, style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            Column(
              children: [
                Text(time,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                CircularProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(color),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
