import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<CollectionReference> userDocument() async {
    return FirebaseFirestore.instance.collection('users');
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get restaurantCollection => collection('restaurants');
}