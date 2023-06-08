// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SignInWidget extends StatefulWidget {
//   const SignInWidget({Key? key}) : super(key: key);

//   @override
//   _SignInWidgetState createState() => _SignInWidgetState();
// }

// class _SignInWidgetState extends State<SignInWidget> {
//   TextEditingController? textController1;
//   TextEditingController? textController2;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     textController1 = TextEditingController();
//     textController2 = TextEditingController();
//   }

//   @override
//   void dispose() {
//     textController1?.dispose();
//     textController2?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       body: SafeArea(
//         child: Visibility(
//           visible: responsiveVisibility(
//             context: context,
//             tablet: false,
//           ),
//           child: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Align(
//                       alignment: AlignmentDirectional(-0.05, 0),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(130, 10, 0, 0),
//                         child: Image.asset(
//                           'assets/images/pngegg.png',
//                           width: 70,
//                           height: 70,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color:
//                                 FlutterFlowTheme.of(context).primaryBackground,
//                           ),
//                           alignment: AlignmentDirectional(-1, 0),
//                           child: Text(
//                             'Sign In',
//                             style: FlutterFlowTheme.of(context).title1,
//                           ),
//                         ),
//                         Container(
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color:
//                                 FlutterFlowTheme.of(context).primaryBackground,
//                           ),
//                           alignment: AlignmentDirectional(-1, 0),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Text(
//                         'Use the form below, to access your account.',
//                         style: FlutterFlowTheme.of(context).bodyText2,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 6,
//                           color: Color(0x3416202A),
//                           offset: Offset(0, 2),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//                       child: TextFormField(
//                         controller: textController1,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           labelText: 'Your email address',
//                           labelStyle: FlutterFlowTheme.of(context).bodyText2,
//                           hintStyle: FlutterFlowTheme.of(context).bodyText2,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           filled: true,
//                           fillColor:
//                               FlutterFlowTheme.of(context).secondaryBackground,
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
//                         ),
//                         style: FlutterFlowTheme.of(context).bodyText1,
//                         maxLines: null,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 6,
//                           color: Color(0x3416202A),
//                           offset: Offset(0, 2),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//                       child: TextFormField(
//                         controller: textController2,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           labelText: 'Your password',
//                           labelStyle: FlutterFlowTheme.of(context).bodyText2,
//                           hintStyle: FlutterFlowTheme.of(context).bodyText2,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           filled: true,
//                           fillColor:
//                               FlutterFlowTheme.of(context).secondaryBackground,
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
//                         ),
//                         style: FlutterFlowTheme.of(context).bodyText1,
//                         maxLines: null,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FFButtonWidget(
//                         onPressed: () {
//                           print('Button pressed ...');
//                         },
//                         text: 'Login',
//                         options: FFButtonOptions(
//                           width: 150,
//                           height: 50,
//                           color: FlutterFlowTheme.of(context).primaryColor,
//                           textStyle:
//                               FlutterFlowTheme.of(context).subtitle1.override(
//                                     fontFamily: 'Poppins',
//                                     color: Colors.white,
//                                   ),
//                           elevation: 3,
//                           borderSide: BorderSide(
//                             color: Colors.transparent,
//                             width: 1,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as Firebase_Storage;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:restaurant_app/restaurantModel.dart';
import 'package:restaurant_app/sign_in/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // firebase_storage.FirebaseStorage storage =
  //     firebase_storage.FirebaseStorage.instance;

  // for password visible or not
  late bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
  }
  // for password visible or not

  bool isLoading = false;
  File? dp = null;
  File? cnicFront = null;
  File? cnicBack = null;
  bool userLogin = false;

  String? dpurl = null;
  String? cfronturl = null;
  String? cbackurl = null;

  final _auth = FirebaseAuth.instance;

  signUp(emailtxt, passtxt, context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
        email: emailtxt,
        password: passtxt,
      )
          .then((value) {
        postDetailsToFirestore(emailtxt, passtxt);
      }).catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
      print("done");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          errorMessage = "Your email address appears to be malformed.";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        case "user-not-found":
          errorMessage = "User with this email doesn't exist.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        case "too-many-requests":
          errorMessage = "Too many requests";
          break;
        case "operation-not-allowed":
          errorMessage = "Signing in with Email and Password is not enabled.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
      Fluttertoast.showToast(msg: errorMessage!);
      print(e.code);
    }

    setState(() {
      userLogin = true;
    });
  }

  postDetailsToFirestore(emailtxt, passtxt) async {
    _auth.signInWithEmailAndPassword(email: emailtxt, password: passtxt);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", emailEditingController.text);
    prefs.setString("pass", passwordEditingController.text);
    // calling our firestore

    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    RestaurantModel restModel = RestaurantModel();

    // writing all the values
    restModel.email = user!.email;
    restModel.uid = user.uid;
    restModel.address = addresEditingController.text;
    restModel.resFullName = resFullNameEditingController.text;
    restModel.phoneNumber = phoneNumberEditingController.text;
    // restModel.description = descriptionEditingController.text;
    restModel.password = passwordEditingController.text;
    // restModel.cnic = cnicEditingController.text;
    // restModel.verification = 'Not Verified';
    // restModel.category = dropdownValue!;
    // restModel.rating = '0';
    // restModel.noOfRating = '0';

    // saving data to firebase
    // await firebaseFirestore
    //     .collection("employeesDetails")
    //     .doc(user.uid)
    //     .set(restModel.toMap());

    await firebaseFirestore
        .collection("restaurants")
        .doc(user.uid)
        .set(restModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully");

    Navigator.pushAndRemoveUntil(
        (this.context),
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }

  Future uploadFile(email, pass, File dp, context) async {
    // logout();
    await signUp(email, pass, context);
    userLogin == true
        ? Firebase_Storage.FirebaseStorage.instance
            .ref()
            .child('restaurantProfiles/$email/')
            .child("DP.jpg")
            .putFile(dp)
            .then((p0) async {
            Fluttertoast.showToast(msg: "DP Upload Sucessfull");
          })
        : print("Working");
  }

  _getFromGallery({dpimg = false, cfrontimg = false, cbackimg = false}) async {
    // ignore: deprecated_member_use
    // gallery kholy ga or image pick kryfga
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        if (dpimg == true) {
          dp = File(pickedFile.path);
        }
        // else if (cfrontimg == true) {
        //   cnicFront = File(pickedFile.path);
        // } else {
        //   cnicBack = File(pickedFile.path);
        // }
      });
    }
  }

  // string for displaying the error Message
  String? errorMessage;

  // our form key
  // final _formKey = GlobalKey<FormState>();
  // editing Controller
  final resFullNameEditingController = TextEditingController();
  final phoneNumberEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final addresEditingController = TextEditingController();

  //password widget
  var clrpass = Colors.red;
  Widget passwordField() {
    return TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: !_passwordVisible,
      validator: (value) {
        // reg expression for password validation
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      onChanged: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value == "") {
          clrpass = Colors.red;
        } else if (value.length < 6) {
          print("Change kro");
          setState(() {
            clrpass = Colors.red;
          });
        } else {
          setState(() {
            print("Sahi hai pass");
            clrpass = Colors.teal;
          });
        }
      },
      // textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: clrpass),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: clrpass)),
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(this.context).primaryColor,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    //full name field
    final fullNameFiled = TextFormField(
        autofocus: false,
        controller: resFullNameEditingController,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          resFullNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Restaurant Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //phone number field
    final phoneNumberField = TextFormField(
        autofocus: false,
        controller: phoneNumberEditingController,
        keyboardType: TextInputType.number,
        onSaved: (value) {
          phoneNumberEditingController.text = value!;
        },
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11)
        ],
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          prefixIcon: Icon(Icons.phone),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "03331234567",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //full name field
    final addressField = TextFormField(
        autofocus: false,
        controller: addresEditingController,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          addresEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Restaurant Address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //signup button
    final signUpButton = Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 10,
          offset: Offset(2, 2),
        )
      ]),
      child: MaterialButton(
        onPressed: () {
          // isko call krwaya isliye hai q k neechy jo ismai code hua wa hai wo firebase mai save wala hai
          if (resFullNameEditingController.text.isEmpty &&
              phoneNumberEditingController.text.isEmpty &&
              emailEditingController.text.isEmpty &&
              passwordEditingController.text.isEmpty &&
              dp == null) {
            Fluttertoast.showToast(msg: "All fields are empty");
          } else if (resFullNameEditingController.text.isEmpty) {
            Fluttertoast.showToast(msg: "Full name is empty");
          } else if (phoneNumberEditingController.text.isEmpty) {
            Fluttertoast.showToast(msg: "Phone number is empty");
          } else if (phoneNumberEditingController.text.length < 11) {
            Fluttertoast.showToast(msg: "Phone number is invalid");
          }
          // else if (experienceEditingController.text ) {
          //   Fluttertoast.showToast(msg: "");
          else if (dp == null) {
            Fluttertoast.showToast(msg: "Profile image is empty");
          } else {
            uploadFile(emailEditingController.text,
                passwordEditingController.text, dp!, context);
          }
        },
        minWidth: double.infinity,
        color: Color.fromARGB(255, 61, 199, 26),
        height: 50,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "SignUp",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 199, 26),
        leading: Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 61, 199, 26),
        ),
        title: Center(child: Text('Signup')),
        actions: [
          Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Color.fromARGB(255, 61, 199, 26),
          ),
          Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Color.fromARGB(255, 61, 199, 26),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              const Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              fullNameFiled,
              SizedBox(
                height: height * 0.02,
              ),
              phoneNumberField,
              SizedBox(
                height: height * 0.02,
              ),
              addressField,
              SizedBox(
                height: height * 0.02,
              ),
              emailField,
              SizedBox(
                height: height * 0.02,
              ),
              passwordField(),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Text(
                    "Profile Picture: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  dp == null
                      ? IconButton(
                          onPressed: () {
                            _getFromGallery(dpimg: true);
                          },
                          icon: Icon(Icons.add_a_photo_outlined))
                      : Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  _getFromGallery(dpimg: true);
                                },
                                icon: Icon(Icons.restore)),
                            Container(
                              color: Colors.teal,
                              width: 50,
                              height: 50,
                              child: Image.file(
                                dp!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              signUpButton,
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  InkWell(
                    child: Text(
                      " Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
