import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentasia/models/user.dart' as model;

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future signInAnonymously() async {
    UserCredential cred = await _auth.signInAnonymously();

    model.User user = model.User(
      email: "guest" + cred.user!.uid,
      password: "",
    );

    await _firestore.collection("users").doc(cred.user!.uid).set(
          user.toJson(),
        );
  }

  Future createAccount(String email, String password, context) async {
    try {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      model.User user = model.User(
        email: email,
        password: password,
      );

      await _firestore
          .collection("users")
          .doc(cred.user!.uid)
          .set(user.toJson());
    } on FirebaseAuthException catch (e) {}
  }

  Future loginUser(String email, String password) async {
    final cred = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future logout() async {
    await _auth.signOut();
  }
}
