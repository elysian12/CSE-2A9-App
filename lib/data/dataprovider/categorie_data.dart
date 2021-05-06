// https://script.google.com/macros/u/1/s/AKfycbzqNaUznzBl1qtIeoE-OfAMBiUL_M197D8SLlodLRc/dev

import 'package:cse_2a9/data/dataprovider/theme_data.dart';
import 'package:cse_2a9/data/models/categorie_model.dart';

List<Categorie> categories = [
  Categorie(
      title: "Today's Classes",
      subtitle: '7 classes 7 Hours',
      img: 'assets/boycode.png',
      gradientColor: GreadientColors.sky,
      key: 'online_class'),
  Categorie(
      title: 'Ongoing Exams',
      subtitle: '1 Hour 30 Questions',
      img: 'assets/exam.png',
      gradientColor: GreadientColors.grey,
      key: 'ongoing_exam'),
  Categorie(
      title: 'Upcoming Exams',
      subtitle: '1 Hour 30 Questions',
      img: 'assets/notebook.png',
      gradientColor: GreadientColors.pink,
      key: 'upcoming_exam'),
  Categorie(
      title: 'Weekly Test',
      subtitle: '0 Hour 20 Questions',
      img: 'assets/boycode.png',
      gradientColor: GreadientColors.sky,
      key: 'weekly_test'),
  Categorie(
      title: 'Discussion Tab',
      subtitle: '1 Hour 30 Questions',
      img: 'assets/boycode.png',
      gradientColor: GreadientColors.grey,
      key: 'discussion_tab'),
];
