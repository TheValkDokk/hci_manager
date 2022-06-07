import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hci_manager/provider/general_provider.dart';

import '../models/drug.dart';

void logout(WidgetRef ref) {
  FirebaseAuth.instance.signOut();
  ref.invalidate(googleSignInProvider);
}

Future submitToDB(Drug drug) async {
  final db = FirebaseFirestore.instance;
  db.collection('drugs').add(drug.toMap());
}

Future updateToDB(Drug drug) async {
  final update = drug.toMap();
  final db = FirebaseFirestore.instance
      .collection('drugs')
      .where('id', isEqualTo: drug.id)
      .get()
      .then(
    (value) {
      FirebaseFirestore.instance
          .collection('drugs')
          .doc(value.docs.first.id)
          .set(drug.toMap());
    },
  );
}
