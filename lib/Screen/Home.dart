

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Course.dart';
import 'Exam.dart';
import 'Latest Test Series.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 70.5)),
              gradient: LinearGradient(
                colors: [Color(0xFF512E7E), Color(0xFFA073DA)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi Good Morning !',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    CircleAvatar(
                      // backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'John',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(left: 7, right: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Selected Course',
                            style: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFA073DA),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                // Your onPressed function here
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Change',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Icon(
                                      Icons.multiple_stop_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Montessori',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CategoryCard(title: 'Exam', icon: Icons.book),
                CategoryCard(title: 'Practice', icon: Icons.edit),
                CategoryCard(title: 'Materials', icon: Icons.library_books),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courses',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CourseCard(title: 'KTET', imagePath: 'assets/1.png'),
                CourseCard(title: 'LP/UP/HST', imagePath: 'assets/2.png'),
                CourseCard(title: 'SET', imagePath: 'assets/3.png'),
                CourseCard(title: 'NET', imagePath: 'assets/4.png'),
                CourseCard(title: 'Montessori', imagePath: 'assets/5.png'),
                CourseCard(title: 'Crash Course', imagePath: 'assets/6.png'),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20,right: 10),
            child: Image.asset("assets/Ads.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Latest Test Series',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 200, // Adjust height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TestSeriesCard(
                    title: 'Exam 102 - Biology',
                    questions: '10 Questions',
                    duration: '120 mins',
                    backgroundColor: Colors.purple,
                  ),
                  TestSeriesCard(
                    title: 'Exam 102 - Maths',
                    questions: '10 Questions',
                    duration: '120 mins',
                    backgroundColor: Colors.orange,
                  ),
                  TestSeriesCard(
                    title: 'Exam 102 - English',
                    questions: '10 Questions',
                    duration: '120 mins',
                    backgroundColor: Colors.blue,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}





