import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class TestDownload extends StatefulWidget {
  const TestDownload({super.key});

  @override
  State<TestDownload> createState() => _TestDownloadState();
}

class _TestDownloadState extends State<TestDownload> {
  late Future<ListResult> futureFiles;

  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref('/Resume').listAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEST DOWNLOAD"),
      ),
      body: FutureBuilder<ListResult>(
        future: futureFiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;
            return ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                final file = files[index];
                return ListTile(
                  title: Text(file.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.download, color: Colors.black,),
                    onPressed: () => downloadFile(file),
                  ),
                );
              },
            );

          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error Occurred"),
            );
          } else {
            return const Center(child: CupertinoActivityIndicator(),);
          }
        },
      ),
    );
  }

  Future downloadFile(Reference ref) async {
    final url = await ref.getDownloadURL();

    final tempDir = await getTemporaryDirectory();
    final path = '${tempDir.path}/${ref.name}';
    await Dio().download(url, path);

    // // Not Visible for User, only visible to app.
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');

    await ref.writeToFile(file);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Download ${ref.name}')),
    );
  }
}
