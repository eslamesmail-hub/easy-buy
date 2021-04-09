import 'package:cloud_firestore/cloud_firestore.dart';

class HomeServices {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('categories');

       final CollectionReference _productReference =
      FirebaseFirestore.instance.collection('products');

  Future<List<QueryDocumentSnapshot>> getCategory() async {
    var value = await _collectionReference.get();
    return value.docs;
  }

   Future<List<QueryDocumentSnapshot>> getBestSelling() async {
    var value = await _productReference.get();
    return value.docs;
  }
}
