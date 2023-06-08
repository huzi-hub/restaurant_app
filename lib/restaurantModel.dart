import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantModel {
  String? uid;
  String? email;
  // String? experience;
  String? resFullName;
  String? phoneNumber;
  String? address;
  String? password;
  // String? cnic;
  // String? verification;
  // String? category;
  // String? rating;
  // String? noOfRating;

  RestaurantModel({
    this.uid,
    this.email,
    // this.experience,
    this.resFullName,
    this.phoneNumber,
    this.address,
    this.password,
    // this.cnic,
    // this.verification,
    // this.category,
    // this.rating,
    // this.noOfRating,
  });

  // receiving data from server
  factory RestaurantModel.fromMap(map) {
    return RestaurantModel(
      uid: map['uid'],
      email: map['email'],
      address: map['address'],
      resFullName: map['fullName'],
      phoneNumber: map['phoneNumber'],
      // description: map['description'],
      password: map['password'],
      // cnic: map['cnic'],
      // verification: map['verification'],
      // category: map['category'],
      // rating: map['rating'],
      // noOfRating: map['noOfRating'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'address': address,
      'fullName': resFullName,
      'phoneNumber': phoneNumber,
      // 'description': description,
      'password': password,
      // 'cnic': cnic,
      // 'verification': verification,
      // 'category': category,
      // 'rating': rating,
      // 'noOfRating': noOfRating,
    };
  }
}
