import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_bus/event_bus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@module
abstract class InjectionModule {
  @singleton
  FlutterSecureStorage flutterSecureStorage() {
    return const FlutterSecureStorage();
  }

  @singleton
  EventBus get eventBus {
    return EventBus();
  }
  @singleton
  InternetConnection get connectionChecker {
    return InternetConnection();
  }
  @singleton
  FirebaseApp get firebaseApp {
    return Firebase.app();
  }
  @singleton
  FirebaseAnalytics get firebaseAnalytics {
    return FirebaseAnalytics.instance;
  }
  @singleton
  FirebaseAuth get firebaseAuth {
    return FirebaseAuth.instance;
  }
  @singleton
  FirebaseFirestore get firebaseFirestore {
    return FirebaseFirestore.instance;
  }
}
