import 'package:flutter/material.dart';
import 'package:flutter_masterclass/bibleStudies/bible_studies.dart';
import 'package:flutter_masterclass/developer/developer.dart';
import 'package:flutter_masterclass/home/home.dart';
import 'package:flutter_masterclass/homeCell/home_cell.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/bibleStudies': (context) => const BibleStudies(),
      '/homeCell': (context) => const HomeCell(),
      '/developer': (context) => const Developer(),
    }
  ));
}
