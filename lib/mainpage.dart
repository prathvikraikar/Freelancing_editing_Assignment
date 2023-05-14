import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  late String _fileLink;
  late String _requirement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Video'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'File Link'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a file link';
                  }
                  return null;
                },
                onSaved: (value) {
                  _fileLink = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Requirements'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your requirements';
                  }
                  return null;
                },
                onSaved: (value) {
                  _requirement = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Do something with the uploaded file link and requirements
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
