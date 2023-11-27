import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lesson_day_31_flutter/models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  // get user details
  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _fireStore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(documentSnapshot);
  }

  // sign up user
  Future<String> signUpUser({
    required String phonenumber,
    required String password,
    required String username,
  }) async {
    String result = 'Some error occured';
    try {
      if (phonenumber.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: phonenumber, password: password);

        _fireStore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': phonenumber,
          'following': [],
          'followers': []
        });

        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String result = "Some Error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        result = "success";
      } else {
        result = "Please enter email and password";
      }
    } catch (e) {
      result = e.toString();
    }
    print(result);
    return result;
  }
}
