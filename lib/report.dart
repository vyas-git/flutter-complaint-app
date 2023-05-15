import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String _selectedComplaintType = 'General';
  TextEditingController _descriptionController = TextEditingController();
  List<String> _attachedImages = [];
  String? _attachedVideo;
  String? _attachedAudio;

  void _attachImage() {
    // Code to handle attaching image
  }

  void _attachVideo() {
    // Code to handle attaching video
  }

  void _attachAudio() {
    // Code to handle attaching audio
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose Complaint Type',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButtonFormField<String>(
              value: _selectedComplaintType,
              onChanged: (newValue) {
                setState(() {
                  _selectedComplaintType = newValue!;
                });
              },
              items: <String>[
                'General',
                'Traffic',
                'Crime',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Enter complaint details',
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: _attachImage,
                ),
                IconButton(
                  icon: Icon(Icons.videocam),
                  onPressed: _attachVideo,
                ),
                IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: _attachAudio,
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle submit action
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
