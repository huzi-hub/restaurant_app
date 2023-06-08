import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:restaurant_app/sign_in/login.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AddWorkerScreen extends StatefulWidget {
  @override
  _AddWorkerScreenState createState() => _AddWorkerScreenState();
}

class _AddWorkerScreenState extends State<AddWorkerScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _workerTypeController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _joiningDateController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  String _category = '';

  Future logout() async {
    await FirebaseAuth.instance.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("email");
    prefs.remove("pass");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Worker'),
         actions: [
          IconButton(
              onPressed: () {
                logout();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                    (Route<dynamic> route) => false);
              },
              icon: Icon(Icons.logout)),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _workerTypeController,
                  decoration: InputDecoration(
                    labelText: 'Worker Type',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter worker type';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter full name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _cnicController,
                  decoration: InputDecoration(
                    labelText: 'CNIC',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter CNIC';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _joiningDateController,
                  decoration: InputDecoration(
                    labelText: 'Joining Date',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter joining date';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _salaryController,
                  decoration: InputDecoration(
                    labelText: 'Salary',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter salary';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    _addWorker();
                  },
                  child: Text('Add Worker'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    _showWorkerList();
                  },
                  child: Text('Worker List'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _addWorker() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Generate a new document ID for the worker
        DocumentReference workerRef =
            FirebaseFirestore.instance.collection('workers').doc();

        await workerRef.set({
          'workerType': _workerTypeController.text,
          'fullName': _fullNameController.text,
          'cnic': _cnicController.text,
          'phoneNumber': _phoneNumberController.text,
          'joiningDate': _joiningDateController.text,
          'salary': _salaryController.text,
        });

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 48,
              ),
              content: Text('Worker added successfully'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );

        _workerTypeController.clear();
        _fullNameController.clear();
        _cnicController.clear();
        _phoneNumberController.clear();
        _joiningDateController.clear();
        _salaryController.clear();
      } catch (e) {
        print('Error: $e');

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to add worker: $e'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  void _showWorkerList() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Worker List'),
          content: Column(
            children: [
              Text('List of Workers:'),
              SizedBox(height: 8.0),
              FutureBuilder<QuerySnapshot>(
                future: FirebaseFirestore.instance.collection('workers').get(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Failed to fetch worker list');
                  } else if (snapshot.hasData) {
                    List<DocumentSnapshot> documents = snapshot.data!.docs;

                    if (documents.isEmpty) {
                      return Text('No workers found');
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: documents.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map<String, dynamic> workerData =
                            documents[index].data() as Map<String, dynamic>;

                        String fullName = workerData['fullName'];
                        String workerType = workerData['workerType'];

                        return ListTile(
                          title: Text(fullName),
                          subtitle: Text(workerType),
                          onTap: () => _showWorkerDetails(
                              workerData), // Show worker details when tapped
                        );
                      },
                    );
                  } else {
                    return Text('No workers found');
                  }
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showWorkerDetails(Map<String, dynamic> workerData) {
    TextEditingController fullNameController =
        TextEditingController(text: workerData['fullName']);
    TextEditingController cnicController =
        TextEditingController(text: workerData['cnic']);
    TextEditingController phoneNumberController =
        TextEditingController(text: workerData['phoneNumber']);
    TextEditingController salaryController =
        TextEditingController(text: workerData['salary']);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Worker Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
              ),
              TextFormField(
                controller: cnicController,
                decoration: InputDecoration(
                  labelText: 'CNIC',
                ),
              ),
              TextFormField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
              TextFormField(
                controller: salaryController,
                decoration: InputDecoration(
                  labelText: 'Salary',
                ),
              ),
              // Add more fields as needed
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Update the worker data here
                workerData['fullName'] = fullNameController.text;
                workerData['cnic'] = cnicController.text;
                workerData['phoneNumber'] = phoneNumberController.text;
                workerData['salary'] = salaryController.text;

                // Perform the update operation (e.g., using Firebase Firestore)
                // ...

                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
