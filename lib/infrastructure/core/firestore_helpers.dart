import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<CollectionReference> usersCollection() async {
    return FirebaseFirestore.instance.collection('users');
  }

  Future<CollectionReference> restaurantsCollection() async {
    return FirebaseFirestore.instance.collection('restaurants');
  }

  Future<DocumentReference> restaurantDocument(String id) async {
    return FirebaseFirestore.instance.collection('restaurants').doc(id);
  }
}
