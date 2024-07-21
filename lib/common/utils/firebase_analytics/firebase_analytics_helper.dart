import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticsHelper {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver appAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: analytics);
}