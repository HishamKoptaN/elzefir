import 'dart:developer';
import 'dart:io';

import 'package:aws_s3_upload_lite/aws_s3_upload_lite.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:universal_io/io.dart' as universal_io;

class TestS3 extends StatefulWidget {
  const TestS3({super.key});

  @override
  State<TestS3> createState() => _TestS3State();
}

class _TestS3State extends State<TestS3> {
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedFile;
  bool _isUploading = false;
  double _uploadProgress = 0.0;
  String? _uploadResponse;
  String? _errorMessage;

  // Controllers for S3 configuration credentials and parameters
  final TextEditingController _accessKeyController = TextEditingController(
    text: "AKIA2UC3COQEBEW3VT6J",
  );
  final TextEditingController _secretKeyController = TextEditingController(
    text: "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",
  );
  final TextEditingController _bucketController = TextEditingController(
    text: "elzefir.dev",
  );
  final TextEditingController _regionController = TextEditingController(
    text: 'eu-north-1',
  );
  final TextEditingController _filenameController = TextEditingController(
    text: "",
  );
  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _selectedFile = image;
          _filenameController.text = image.name;
          _uploadResponse = null;
          _errorMessage = null;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    }
  }

  Future<void> _uploadFile() async {
    if (_selectedFile == null) {
      setState(() {
        _errorMessage = "Please select a file first.";
      });
      return;
    }

    setState(() {
      _isUploading = true;
      _uploadProgress = 0.0;
      _uploadResponse = null;
      _errorMessage = null;
    });

    try {
      final bytes = await _selectedFile!.readAsBytes();

      String? response = await AwsS3.upload(
        accessKey: _accessKeyController.text.trim(),
        secretKey: _secretKeyController.text.trim(),
        file: bytes,
        bucket: _bucketController.text.trim(),
        region: _regionController.text.trim(),
        filename: _filenameController.text.trim(),
        metadata: {"test": "test"},
        onUploadProgress: (sentBytes, totalBytes) {
          if (totalBytes > 0) {
            setState(() {
              _uploadProgress = sentBytes / totalBytes;
            });
          }
          // debugPrint('Upload progress: $sentBytes / $totalBytes');
        },
        destDir: '',
      );

      setState(() {
        _uploadResponse = response;
        _isUploading = false;
      });
    } catch (e) {
      log(e.toString());
      setState(() {
        _errorMessage = e.toString();
        _isUploading = false;
      });
    }
  }

  @override
  void dispose() {
    _accessKeyController.dispose();
    _secretKeyController.dispose();
    _bucketController.dispose();
    _regionController.dispose();
    _filenameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test S3 Upload')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _accessKeyController,
              decoration: const InputDecoration(labelText: 'Access Key'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _secretKeyController,
              decoration: const InputDecoration(labelText: 'Secret Key'),
              obscureText: true,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _bucketController,
              decoration: const InputDecoration(labelText: 'Bucket Name'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _regionController,
              decoration: const InputDecoration(labelText: 'Region'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _isUploading ? null : _pickImage,
              icon: const Icon(Icons.image),
              label: Text(
                _selectedFile == null ? 'Select Image' : 'Change Image',
              ),
            ),
            if (_selectedFile != null) ...[
              const SizedBox(height: 12),
              Text('Selected: ${_selectedFile!.name}'),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child:
                    universal_io.Platform.isAndroid ||
                        universal_io.Platform.isIOS ||
                        universal_io.Platform.isMacOS ||
                        universal_io.Platform.isWindows
                    ? Image.file(
                        universal_io.File(_selectedFile!.path),
                        fit: BoxFit.cover,
                      )
                    : const Placeholder(),
              ),
            ],
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isUploading ? null : _uploadFile,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: _isUploading
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text('Uploading...'),
                      ],
                    )
                  : const Text('Upload to S3'),
            ),
            if (_isUploading) ...[
              const SizedBox(height: 16),
              LinearProgressIndicator(value: _uploadProgress),
              const SizedBox(height: 8),
              Text(
                '${(_uploadProgress * 100).toStringAsFixed(1)}% uploaded',
                textAlign: TextAlign.center,
              ),
            ],
            if (_uploadResponse != null) ...[
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(12),
                color: Colors.green.withOpacity(0.1),
                child: Text(
                  'Success!\nResponse: $_uploadResponse',
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            ],
            if (_errorMessage != null) ...[
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(12),
                color: Colors.red.withOpacity(0.1),
                child: Text(
                  'Error: $_errorMessage',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
