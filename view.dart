// import 'dart:io';
// import 'dart:convert';
// import 'dart:async';

// void main() async {
//   final file = File('Kernel-2022-03-04-033025.panic');
//   Stream<String> lines = file
//       .openRead()
//       .transform(utf8.decoder) // Decode bytes to UTF-8.
//       .transform(LineSplitter()); // Convert stream to individual lines.
//   try {
//     await for (var line in lines) {
//       print('$line: ${line.length} characters');
//     }
//     print('File is now closed.');
//   } catch (e) {
//     print('Error: $e');
//   }
// }

import 'dart:async';
import 'dart:io';

void main() {
  File('Kernel-2022-02-14-033630.panic').readAsString().then((String contents) {
    print(contents.replaceAll("\\n", "\n"));
  });
}
