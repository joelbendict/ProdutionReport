// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

// class PdfGenerator {
//   static Future<pw.Document> generatePdf({
//     required String totalOutput,
//     required String materials,
//     required String boxWeight,
//     required String downtime,
//     required String loss,
//     required String manpower,
//     required String remark,
//   }) async {
//     final pdf = pw.Document();
//     pdf.addPage(pw.Page(
//       build: (pw.Context context) {
//         return pw.Column(
//           crossAxisAlignment: pw.CrossAxisAlignment.start,
//           children: <pw.Widget>[
//             pw.Text('Total Output: $totalOutput'),
//             pw.SizedBox(height: 16.0),
//             pw.Text('Materials: $materials'),
//             pw.SizedBox(height: 16.0),
//             pw.Text('Box Weight: $boxWeight'),
//             pw.SizedBox(height: 16.0),
//             pw.Text('Downtime: $downtime'),
//             pw.SizedBox(height: 16.0),
//             pw.Text('Percentage Loss: $loss'),
//             pw.SizedBox(height: 16.0),
//             pw.Text('Casual index: $manpower'),
//             pw.SizedBox(height: 50.0),
//             pw.Text('Remark: $remark'),
//           ],
//         );
//       },
//     ));

//     return pdf;
//   }
// }
