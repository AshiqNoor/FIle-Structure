part of services;

class CompressImage {
  static Future<Uint8List?> compressImage(String imagePath) async {
    var file = File(imagePath);
    var result = await FlutterImageCompress.compressWithFile(
      file.absolute.path,
      minWidth: 512,
      minHeight: 512,
      quality: 50,
      // rotate: 90,
    );
    log("Size:::::${file.lengthSync()}");
    final compressedFileSize = result!.length;
    log('Compressed file size:::: $compressedFileSize bytes');
    return result;
  }

  static Future<File> saveCompressedImage(List<int> imageData) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/compressed_image.jpg');
    await file.writeAsBytes(imageData);
    return file;
  }
}
