import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

extension FirestoreX on FirebaseFirestore {
  Future<CollectionReference> usersCollection() async {
    return FirebaseFirestore.instance.collection('users');
  }

  Future<CollectionReference> restaurantsCollection() async {
    return FirebaseFirestore.instance.collection('restaurants');
  }

  Future<CollectionReference> reviewsColleciton(String restaurantId) async {
    return FirebaseFirestore.instance
        .collection('restaurants/$restaurantId/reviews');
  }

  Future<DocumentReference> restaurantDocument(String id) async {
    return FirebaseFirestore.instance.collection('restaurants').doc(id);
  }
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
