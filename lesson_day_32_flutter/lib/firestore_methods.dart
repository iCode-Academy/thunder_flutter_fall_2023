import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import './models/post.dart';
import './storage_methods.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // upload post
  Future<String> uploadPost(String description, Uint8List image, String uid,
      String username, String profImage) async {
    String result = 'some error occured';
    try {
      // upload post
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', image, true);
      Post post = Post(
          uid: uid,
          description: description,
          postId: Uuid().v1(),
          username: username,
          datePublished: DateTime.now(),
          postUrl: photoUrl,
          likes: null,
          profImage: profImage);

      _firestore.collection('posts').doc(post.postId).set(post.toJson());

      result = "success";
    } catch (e) {
      result = e.toString();
    }
    print(result);
    return result;
  }
}
