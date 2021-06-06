import 'package:alhadaf/tabs/attacs.dart';
import 'package:alhadaf/tabs/trainingFour.dart';
import 'package:alhadaf/tabs/trainingthree.dart';
import 'package:alhadaf/tabs/trainning.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Training extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Container(
                    child: Text(
                      'تدريبات رياضية',
                      style:GoogleFonts.adamina(fontSize: 18,color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'تكتيكات',
                      style:GoogleFonts.adamina(fontSize: 16,color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'تدريبات حراس المرمي',
                      style:GoogleFonts.adamina(fontSize: 18,color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'تدريبات المدربين',
                      style:GoogleFonts.adamina(fontSize: 16,color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
            Trainning(),
            Attaccs()  ,
            TrainingThree(),
            TrainingFour()
            ],
          ),
        ));
  }
}
